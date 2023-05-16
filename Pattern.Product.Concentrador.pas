unit Pattern.Product.Concentrador;

interface

uses
  Pattern.AbstractProduct;

type
  TEzConc = class(TInterfacedObject, IConcentrador)
  private
    function GetFabricante: String;
  end;

  TCompanyConc = class(TInterfacedObject, IConcentrador)
  private
    function GetFabricante: String;
  end;

  TPetroConc = class(TInterfacedObject, IConcentrador)
  private
    function GetFabricante: String;
  end;

implementation

{ TEzConc }

function TEzConc.GetFabricante: String;
begin
  Result := 'Ez-1020';
end;

{ TCompanyConc }

function TCompanyConc.GetFabricante: String;
begin
  Result := 'Company-5220';
end;

{ TPetroConc }

function TPetroConc.GetFabricante: String;
begin
  Result := 'Petro-6666';
end;

end.
