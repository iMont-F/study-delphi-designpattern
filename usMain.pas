unit usMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Pattern.AbstractFactory, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmConcentrador = class(TForm)
    rgConcentrador: TRadioGroup;
    bApplyConcentrador: TButton;
    mmConcentrador: TMemo;
    procedure bApplyConcentradorClick(Sender: TObject);
  private
    { Private declarations }
    Concentrador : IFactoryConcentrador;
    procedure InstanciarConcentrador;
    procedure ExibirDadosConcentrador;
  public
    { Public declarations }
  end;

var
  frmConcentrador: TfrmConcentrador;

implementation

uses
  Pattern.AbstractProduct, Pattern.ConcreteFactory;

{$R *.dfm}

procedure TfrmConcentrador.bApplyConcentradorClick(Sender: TObject);
begin
  InstanciarConcentrador;
  ExibirDadosConcentrador;
end;

procedure TfrmConcentrador.ExibirDadosConcentrador;
var
  ConcentradorDef: IConcentrador;
begin
  ConcentradorDef := Concentrador.GetConcentrador;
  mmConcentrador.Lines.Clear;
  mmConcentrador.Lines.Add('Estamos lidando com um concentrador '+
                           ConcentradorDef.GetFabricante + '.');
end;

procedure TfrmConcentrador.InstanciarConcentrador;
begin
  case rgConcentrador.ItemIndex of
    0: Concentrador := TEzTech.Create;
    1: Concentrador := TCompanyTech.Create;
    2: Concentrador := TPetroshow.Create;
  end;
end;

end.
