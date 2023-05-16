unit Pattern.AbstractFactory;

interface

uses
  Pattern.AbstractProduct;

type
  IFactoryConcentrador = interface
    function GetConcentrador: IConcentrador;
  end;

implementation

end.
