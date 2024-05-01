unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    Button1: TButton;
    pnPeriodo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    meDataInicial: TMaskEdit;
    meDataFinal: TMaskEdit;
    Label4: TLabel;
    cbVendedor1: TComboBox;
    pnAgrupamento: TPanel;
    Label3: TLabel;
    cbVendedor2: TComboBox;
    pnResumo: TPanel;
    Label5: TLabel;
    cbVendedor3: TComboBox;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    executadoUmaVez:boolean;
    procedure AtivaFiltros(Posicao:integer);
    procedure CarregarVendedores();
    procedure AtualizaComissoes();
    procedure AtualizaComissao(idVendedor:integer;Valor:real);
    function IsValidDate(DateStr: string): Boolean;
  public
      procedure IniciaUnicaVez();
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses dataModule1;

procedure TForm1.IniciaUnicaVez();
begin
  RadioGroup1.ItemIndex := 0;
  AtivaFiltros(RadioGroup1.ItemIndex);
  CarregarVendedores();
end;

procedure TForm1.AtualizaComissoes();
var
  valorcomissao:real;
  idVendedor:integer;
begin
  with dmPrincipal.FDQryResumo do begin
     Close;
     Open;
     First;
     valorcomissao := FieldByName('total_valor').AsFloat * 0.05;
     idVendedor  := FieldByName('id_vendedor').AsInteger;
     AtualizaComissao(idVendedor,valorcomissao);
     Next;
     valorcomissao := FieldByName('total_valor').AsFloat * 0.1;
     idVendedor  := FieldByName('id_vendedor').AsInteger;
     AtualizaComissao(idVendedor,valorcomissao);
     Next;
     valorcomissao := FieldByName('total_valor').AsFloat * 0.05;
     valorcomissao := valorcomissao + valorcomissao*0.2;
     idVendedor  := FieldByName('id_vendedor').AsInteger;
     AtualizaComissao(idVendedor,valorcomissao);
  end;
  dmPrincipal.FDQryResumoFinal.Close;
  dmPrincipal.FDQryResumoFinal.Open;
end;

procedure TForm1.AtualizaComissao(idVendedor:integer;Valor:real);
begin
  with dmPrincipal.FDQryUpdateComissao do begin
    Close;
    ParamByName('valorcomissao').AsFloat := Valor;
    ParamByName('vendedor').AsInteger := idVendedor;
    ExecSQL();
  end;
end;

procedure TForm1.CarregarVendedores();
begin
  cbVendedor1.Items.Clear;
  cbVendedor2.Items.Clear;
  cbVendedor3.Items.Clear;
  cbVendedor1.Items.Add('Todos');
  cbVendedor2.Items.Add('Todos');
  cbVendedor3.Items.Add('Todos');
  with dmPrincipal.fdqVendedor do begin
    First;
     while not EOF do begin
       cbVendedor1.Items.Add(FieldByName('nome_vendedor').AsString);
       cbVendedor2.Items.Add(FieldByName('nome_vendedor').AsString);
       cbVendedor3.Items.Add(FieldByName('nome_vendedor').AsString);
       Next;
     end;
  end;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
 AtivaFiltros(RadioGroup1.ItemIndex);

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if(RadioGroup1.ItemIndex = 0) then begin
    if(not IsValidDate(meDataInicial.Text)) then begin
       ShowMessage('Data Inicial Inv�lida!');
       exit;
    end;
    if(not IsValidDate(meDataFinal.Text)) then begin
       ShowMessage('Data Final Inv�lida!');
       exit;
    end;
    if(cbVendedor1.ItemIndex=-1)then begin
       ShowMessage('Selecione um Vendedor!');
       exit;
    end;
  end;

  if(RadioGroup1.ItemIndex = 1) then begin
    if(cbVendedor2.ItemIndex=-1)then begin
       ShowMessage('Selecione um Vendedor!');
       exit;
    end;
  end;

  if(RadioGroup1.ItemIndex = 2) then begin
    if(cbVendedor3.ItemIndex=-1)then begin
       ShowMessage('Selecione um Vendedor!');
       exit;
    end;
  end;

  with dmPrincipal.fdqRelVendas do begin
    close;
    SQL.Clear;
    SQL.Add('SELECT');
    SQL.Add('Vendedores.nome_vendedor,');
    SQL.Add('Vendas.data_venda,');
    SQL.Add('Sum(Vendas.valor_venda) AS total_vendas,');
    SQL.Add('Sum(Vendas.valor_desconto) AS total_desconto,');
    SQL.Add('Sum(Vendas.valor_total) AS total_valor');
    SQL.Add('FROM Vendas');
    SQL.Add('INNER JOIN Vendedores ON Vendas.id_vendedor = Vendedores.id_vendedor ');

    if(RadioGroup1.ItemIndex = 0) then begin
      if(cbVendedor1.ItemIndex=0)then begin
        SQL.ADD('WHERE Vendas.data_venda BETWEEN convert(datetime,'+''''+meDataInicial.Text+
                 ''''+',103) AND convert(datetime,'+''''+meDataFinal.Text+''''+',103)');
      end else begin
        SQL.ADD('WHERE Vendas.data_venda BETWEEN convert(datetime,'+''''+meDataInicial.Text+
                 ''''+',103) AND convert(datetime,'+''''+meDataFinal.Text+''''+',103) AND ');
        SQL.ADD('Vendedores.id_vendedor ='+IntToStr(cbVendedor1.ItemIndex));
      end;
    end else begin

       if(RadioGroup1.ItemIndex = 1) then begin
          if(cbVendedor2.ItemIndex>0)then
            SQL.ADD('WHERE  Vendedores.id_vendedor ='+IntToStr(cbVendedor2.ItemIndex));
       end else begin
          if(cbVendedor3.ItemIndex>0)then begin
           SQL.ADD('WHERE  Vendedores.id_vendedor ='+IntToStr(cbVendedor3.ItemIndex));
          end;
       end;
    end;
    SQL.Add('GROUP BY Vendedores.nome_vendedor, Vendas.data_venda ');
    SQL.Add('ORDER BY Vendedores.nome_vendedor, Vendas.data_venda; ');
    Open;
  end;

  if(RadioGroup1.ItemIndex<2)then begin
    dmPrincipal.fxrVendedores.ShowReport;
  end else begin
    AtualizaComissoes();
    dmPrincipal.FDQryResumoFinal.close;
    dmPrincipal.FDQryResumoFinal.Open;
    dmPrincipal.frxResumo.ShowReport();
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 executadoUmaVez := False;
end;

procedure TForm1.AtivaFiltros(Posicao: Integer);
begin
  meDataInicial.Enabled := (0 = Posicao);
  meDataFinal.Enabled := (0 = Posicao);
  cbVendedor1.Enabled := (0 = Posicao);
  cbVendedor2.Enabled := (1 = Posicao);
  cbVendedor3.Enabled := (2 = Posicao);
end;

function TForm1.IsValidDate(DateStr: string): Boolean;
var
  DateValue: TDateTime;
begin
  // Tenta converter a string para um valor de data
  Result := TryStrToDate(DateStr, DateValue);
end;

end.
