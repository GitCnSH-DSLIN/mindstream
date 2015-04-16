unit msCircle;

interface

uses
 msShape,
 System.Types,
 FMX.Graphics,
 FMX.Types,
 System.UITypes,
 msInterfaces,
 msPointedShape
 ;

type
 TmsCircle = class(TmsPointedShape)
 public
  function ContainsPt(const aPoint: TPointF): Boolean; override;
 end;//TmsCircle

implementation

// TmsCircle

function TmsCircle.ContainsPt(const aPoint: TPointF): Boolean;
var
 l_StartRectPoint, l_FinishRectPoint : TPointF;
 l_x0, l_y0, l_a, l_b : Integer;
 l_Rect : TRectF;
begin
 l_Rect := DrawBounds;

 l_StartRectPoint := l_Rect.TopLeft;
 l_FinishRectPoint := l_Rect.BottomRight;

 l_x0 := Round(l_StartRectPoint.X + l_FinishRectPoint.X) div 2;
 l_y0 := Round(l_StartRectPoint.Y + l_FinishRectPoint.Y) div 2;
 l_a := Round(l_FinishRectPoint.X - l_StartRectPoint.X) div 2;
 l_b := Round(l_FinishRectPoint.Y - l_StartRectPoint.Y) div 2;

 Result := Sqr((aPoint.X - l_x0)/l_a)+
           Sqr((aPoint.Y - l_y0)/l_b) <= 1.0;
end;

end.

