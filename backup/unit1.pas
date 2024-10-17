unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    CheckBoxEntregaNao: TCheckBox;
    btnFinalizarPedido: TButton;
    CheckBoxCachorroQuente: TCheckBox;
    CheckBoxBauruSimples: TCheckBox;
    CheckBoxBauruOvo: TCheckBox;
    CheckBoxHamburguer: TCheckBox;
    CheckBoxChessBurguer: TCheckBox;
    CheckBoxRefrigeranteLata: TCheckBox;
    CheckBoxEntregaSim: TCheckBox;
    edtQuantCachorro: TEdit;
    edtQuantBauru: TEdit;
    edtQuantBauruOvo: TEdit;
    edtQuantHamburguer: TEdit;
    edtQuantChessBurguer: TEdit;
    edtQuantRefrigerante: TEdit;
    edtValorTotalPedidos: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure btnFinalizarPedidoClick(Sender: TObject);
    procedure CheckBoxEntregaNaoClick(Sender: TObject);
    procedure CheckBoxEntregaSimClick(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.btnFinalizarPedidoClick(Sender: TObject);
var
   Total: Currency;
   Quantidade : integer;
begin
  total := 0;

     //Cachorro Quente
  if CheckBoxCachorroQuente.Checked then
  begin
    Quantidade := StrToIntDef(edtQuantCachorro.Text, 0);
    Total := + Total + (Quantidade * 12);
  end;

      //Bauru Simples
  if CheckBoxBauruSimples.Checked then
  begin
    Quantidade := StrToIntDef(edtQuantBauru.Text, 0);
    Total := + Total + (Quantidade * 13);
  end;

      //Bauru c/ Ovo
  if CheckBoxBauruOvo.Checked then
  begin
    Quantidade := StrToIntDef(edtQuantBauruOvo.Text, 0);
    Total := + Total + (Quantidade * 15);
  end;

      //Hamburguer
  if CheckBoxHamburguer.Checked then
  begin
    Quantidade := StrToIntDef(edtQuantHamburguer.Text, 0);
    Total := + Total + (Quantidade * 20);
  end;

      //ChessBurguer
  if CheckBoxChessBurguer.Checked then
  begin
    Quantidade := StrToIntDef(edtQuantChessBurguer.Text, 0);
    Total := + Total + (Quantidade * 25);
  end;

      //Refrigerante
  if CheckBoxRefrigeranteLata.Checked then
  begin
    Quantidade := StrToIntDef(edtQuantRefrigerante.Text, 0);
    Total := + Total + (Quantidade * 8);
  end;

       //ENTREGA ADICIONAR VALOR NO TOTAL (RETIRAR)
  if CheckBoxEntregaSim.Checked then
  Total := Total + 4;

      // Apresentar total
  edtValorTotalPedidos.Text := ('R$ ' + CurrToStr(Total)+',00');

end;

      //AÇÃO BOTAO DE SIM OU NÃO DA ENTREGA (PARA NÃO SELECIONAR AS DUAS OPÇÕES)
procedure TForm1.CheckBoxEntregaNaoClick(Sender: TObject);
begin
   if CheckBoxEntregaNao.Checked then
  CheckBoxEntregaSim.Checked := False
end;

procedure TForm1.CheckBoxEntregaSimClick(Sender: TObject);
begin
   if CheckBoxEntregaSim.Checked then
  CheckBoxEntregaNao.Checked := False;
end;



end.

