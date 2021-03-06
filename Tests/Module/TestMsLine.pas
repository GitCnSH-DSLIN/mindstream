unit TestMsLine;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework,
  msLine,
  FMX.Graphics,
  System.Types,
  msShape,
  msInterfaces
  ;

type
  // Test methods for class TmsLine

  TestTmsLine = class(TTestCase)
  strict private
    FmsLine: ImsShape;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestIsNeedsSecondClick;
    procedure TestEndTo;
    procedure TestMoveTo;
  end;

implementation

uses
  System.SysUtils,
  msShapeCreator
  ;

procedure TestTmsLine.SetUp;
begin
  FmsLine := TmsLine.MC.CreateShape(TPointF.Create(0, 0));
end;

procedure TestTmsLine.TearDown;
begin
  FmsLine := nil;
end;

procedure TestTmsLine.TestIsNeedsSecondClick;
begin
 CheckTrue(FmsLine.IsNeedsSecondClick);
end;

procedure TestTmsLine.TestEndTo;
var
  aCtx: TmsMakeShapeContext;
begin
  // TODO: Setup method call parameters
  FmsLine.EndTo(aCtx);
  // TODO: Validate method results
end;

procedure TestTmsLine.TestMoveTo;
var
  aFinishPoint: TPointF;
begin
  // TODO: Setup method call parameters
  FmsLine.MoveBy(TmsMoveContext.Create(TPointF.Create(0, 0), TPointF.Create(100, 100), nil));
  // TODO: Validate method results
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTmsLine.Suite);
end.

