unit msLineWithArrowView;

interface

uses
 msInterfaces,
 msShapeView
 ;

type
 TmsLineWithArrowView = class(TmsShapeView)
  protected
   procedure DrawShape(const aCtx: TmsDrawContext; const aShape: ImsShape); override;
 end;//TmsLineWithArrowView

implementation

uses
 System.Math.Vectors,
 msShape
 ;

// TmsLineWithArrowView

procedure TmsLineWithArrowView.DrawShape(const aCtx: TmsDrawContext; const aShape: ImsShape);
var
 l_Proxy : ImsShape;
 l_OriginalMatrix: TMatrix;
 l_Matrix: TMatrix;
 l_Angle : Single;
 l_CenterPoint,
 l_LineFinishPoint : TPointF;
 l_PMC : ImsShapeView;
begin
 l_PMC := TmsShape.NamedMC('Line').ShapeView;
 if (ImsShapeView(Self) <> l_PMC) then
  l_PMC.DrawShape(aCtx, aShape);
 if (aShape.StartPoint <> aShape.FinishPoint) then
 begin
  l_OriginalMatrix := aCtx.rCanvas.Matrix;
  try
   l_LineFinishPoint := TPointF.Create(aShape.FinishPoint.X - aShape.ArrowHeadShapeMC.InitialHeight / 2,
                                       aShape.FinishPoint.Y);
   l_Proxy := aShape.ArrowHeadShapeMC.CreateShape(l_LineFinishPoint);
   try
    // in Radian
    l_Angle := aShape.RotationAngle;

    l_CenterPoint := aShape.FinishPoint;

    l_Matrix := TMatrix.Identity;
    // - ������� ������������ �������, ������ ���� ��������� �������
    // https://ru.wikipedia.org/wiki/%D0%95%D0%B4%D0%B8%D0%BD%D0%B8%D1%87%D0%BD%D0%B0%D1%8F_%D0%BC%D0%B0%D1%82%D1%80%D0%B8%D1%86%D0%B0
    l_Matrix := l_Matrix * TMatrix.CreateTranslation(-l_CenterPoint.X, -l_CenterPoint.Y);

    // - ����� �����, ������ ������� ������
    l_Matrix := l_Matrix * TMatrix.CreateRotation(l_Angle);

    // - ����� ���� ��������
    l_Matrix := l_Matrix * TMatrix.CreateTranslation(l_CenterPoint.X, l_CenterPoint.Y);

    // - ����� ������ ���������
    l_Matrix := l_Matrix * l_OriginalMatrix;

    // - ��������� ������������ �������
    // ����� �������� ������������ ������������ ������� - �� ����� ��������.
    // https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D1%80%D0%B0%D0%BB%D0%BB%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9_%D0%BF%D0%B5%D1%80%D0%B5%D0%BD%D0%BE%D1%81

    aCtx.rCanvas.SetMatrix(l_Matrix);
    // - ��������� ���� "�����������" �������

    l_Proxy.DrawTo(aCtx);
    // - ������������ �������� � ������ ������� ��������������
   finally
    l_Proxy := nil;
   end;//try..finally
  finally
    aCtx.rCanvas.SetMatrix(l_OriginalMatrix);
  // - ��������������� ������������ �������
  end;//try..finally
 end;//(StartPoint <> FinishPoint)
end;

end.
