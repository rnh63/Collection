unit uZNodeCollection;

interface

uses
  System.Classes;


type
//  IZMemNode = interface;
  TZMemNode<TClassOfType> = class;

  IZMemNode<TClassOfType> = interface
    function GetValue: TClassOfType;
    property Value: TClassOfType read GetValue;
  end;


  TZMemNode<TClassOfType> = class(TInterfacedObject, IZMemNode<TClassOfType>)

  private
    FValue: TClassOfType;
    function GetValue: TClassOfType;
    procedure SetValue(const Value: TClassOfType);
  public
    property Value: TClassOfType read GetValue write SetValue;
  end;

  TZBaseClassList = class(TList)
  private

  dddd
  dddd11111222222222222222222
  ddddd

  public
    constructor Create;
  end;

  sdasdas
  sdasdas1111111111111111111111
  

  TZMemNodeList<TClassOfType> = class(TZBaseClassList)
  private
    FValues: array of TZMemNode<TClassOfType>;
    function GetValues(Index: Integer): TZMemNode<TClassOfType>;
    procedure SetValues(Index: Integer; const Value: TZMemNode<TClassOfType>);

  public
    constructor Create;
    property Values[Index: Integer]: TZMemNode<TClassOfType> read GetValues write
        SetValues;
  end;





var
  InitialMemCacheSize : Integer = 64;
  GrowMemCacheSize : Integer = 64;

implementation

function TZMemNode<TClassOfType>.GetValue: TClassOfType;
begin
  Result := FValue;
end;

procedure TZMemNode<TClassOfType>.SetValue(const Value: TClassOfType);
begin
  FValue := Value;
end;

constructor TZMemNodeList<TClassOfType>.Create;
begin
  inherited Create;
  SetLength(FValues, InitialMemCacheSize);
end;

function TZMemNodeList<TClassOfType>.GetValues(Index: Integer):
    TZMemNode<TClassOfType>;
var
  obj: IZMemNode<Integer>;
  xx : IInterface;
begin
  obj := TZMemNode<Integer>.Create;
  Add(obj);
  Add(Self);
  Add(xx);
  xx := IInterface(Self[0]);
  obj := TZMemNode<Integer>(Self[0]);
  Result := FValues[Index];
end;

procedure TZMemNodeList<TClassOfType>.SetValues(Index: Integer; const Value:
    TZMemNode<TClassOfType>);
begin
  FValues[Index] := Value;
end;

constructor TZBaseClassList.Create;
begin
  inherited Create;
end;



end.
