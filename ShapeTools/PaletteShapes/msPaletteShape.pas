unit msPaletteShape;

interface

uses
 msInterfaces,
 msShape
 ;

type
 TmsPaletteShape = class(TmsShape)
 public
  procedure DrawTo(const aCtx: TmsDrawContext); override;
 end;//TmsPaletteShape

implementation

// TmsPaletteShape

procedure TmsPaletteShape.DrawTo(const aCtx: TmsDrawContext);
begin
 // - ������ �� ������.
 //   ����!!
end;

end.
