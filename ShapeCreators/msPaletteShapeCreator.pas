unit msPaletteShapeCreator;

interface

uses
 msCompletedShapeCreator
 ;

type
 TmsPaletteShapeCreator = class(TmsCompletedShapeCreator)
 // ��������� TmsShape. ��� �������!!
 public
  class function ButtonSize: Integer;
 end;//TmsPaletteShapeCreator

implementation

// TmsPaletteShapeCreator

class function TmsPaletteShapeCreator.ButtonSize: Integer;
begin
 Result := 40;
end;

end.
