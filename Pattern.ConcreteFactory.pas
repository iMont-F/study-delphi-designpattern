unit Pattern.ConcreteFactory;

interface

uses
  Pattern.AbstractFactory, Pattern.AbstractProduct;

type
  TEzTech = class(TInterfacedObject, IFactoryConcentrador)
    function GetConcentrador: IConcentrador;
  end;

  TCompanyTech = class(TInterfacedObject, IFactoryConcentrador)
    function GetConcentrador: IConcentrador;
  end;

  TPetroshow = class(TInterfacedObject, IFactoryConcentrador)
    function GetConcentrador: IConcentrador;
  end;

implementation

uses
  Pattern.Product.Concentrador;

{ TEzTech }

function TEzTech.GetConcentrador: IConcentrador;
begin
  Result := TEzConc.Create;
end;

{ TCompanyTech }

function TCompanyTech.GetConcentrador: IConcentrador;
begin
  Result := TCompanyConc.Create;
end;

{ TPetroshow }

function TPetroshow.GetConcentrador: IConcentrador;
begin
  Result := TPetroConc.Create;
end;

end.
