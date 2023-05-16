unit usMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Pattern.AbstractFactory, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    rgConcentrador: TRadioGroup;
    bApplyConcentrador: TButton;
    mmConcentrador: TMemo;
    procedure bApplyConcentradorClick(Sender: TObject);
  private
    { Private declarations }
    Concentrador : IFactoryConcentrador;
    procedure InstaciaConcentrador;
    procedure ExibirDadosConcentrador;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Pattern.AbstractProduct, Pattern.ConcreteFactory;

{$R *.dfm}

procedure TForm1.bApplyConcentradorClick(Sender: TObject);
begin
  InstaciaConcentrador;
  ExibirDadosConcentrador;
end;

procedure TForm1.ExibirDadosConcentrador;
var
  ConcentradorDef: IConcentrador;
begin
  ConcentradorDef := Concentrador.GetConcentrador;
  mmConcentrador.Lines.Clear;
  mmConcentrador.Lines.Add('Estamos lidando com um concentrador ' + ConcentradorDef.GetFabricante);
end;

procedure TForm1.InstaciaConcentrador;
begin
  case rgConcentrador.ItemIndex of
    0: Concentrador := TEzTech.Create;
    1: Concentrador := TCompanyTech.Create;
    2: Concentrador := TPetroshow.Create;
  end;
end;

end.
