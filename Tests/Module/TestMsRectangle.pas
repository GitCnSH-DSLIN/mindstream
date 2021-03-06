unit TestMsRectangle;
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
  FMX.Types,
  msShape,
  System.UITypes,
  FMX.Graphics,
  System.Types,
  msRectangle,
  msInterfaces
  ;

type
  // Test methods for class TmsRectangle

  TestTmsRectangle = class(TTestCase)
  strict private
    FmsRectangle: ImsShape;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestContainsPt;
  end;

implementation

uses
 msShapeCreator
 ;

procedure TestTmsRectangle.SetUp;
begin
  FmsRectangle := TmsRectangle.MC.CreateShape(TPointF.Create(0, 0));
end;

procedure TestTmsRectangle.TearDown;
begin
  FmsRectangle := nil;
end;

procedure TestTmsRectangle.TestContainsPt;
var
 l_HitShape: ImsShape;
begin
 CheckTrue(FmsRectangle.HitTest(TPointF.Create(0, 0), l_HitShape));
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTmsRectangle.Suite);
end.
