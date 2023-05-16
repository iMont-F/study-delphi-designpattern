program AbstractFactory;

uses
  Vcl.Forms,
  usMain in 'usMain.pas' {frmConcentrador},
  Pattern.AbstractProduct in 'Pattern.AbstractProduct.pas',
  Pattern.AbstractFactory in 'Pattern.AbstractFactory.pas',
  Pattern.ConcreteFactory in 'Pattern.ConcreteFactory.pas',
  Pattern.Product.Concentrador in 'Pattern.Product.Concentrador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmConcentrador, frmConcentrador);
  Application.Run;
end.
