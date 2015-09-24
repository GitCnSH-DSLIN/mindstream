unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmMain = class(TForm)
    pbxEx: TPaintBox;
    pnlButtons: TPanel;
    btnDraw: TButton;
    edtClock: TEdit;
    tmrMain: TTimer;
    procedure btnDrawClick(Sender: TObject);
    procedure tmrMainTimer(Sender: TObject);
  private
    { Private declarations }
    procedure Draw;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  DateUtils;

procedure TfrmMain.btnDrawClick(Sender: TObject);
begin
  edtClock.Text := TimeToStr(Now);
  tmrMain.Enabled := True;
end;

procedure TfrmMain.Draw;
const
  c_Radius = 200;
var
  CenterPoint,
  StartPoint,
  EndPoint : TPoint;

  Hour, Min, Sec, MSec : Word;
  Angle, Coeff : Double;
begin
  DecodeTime(Now, Hour, Min, Sec, MSec);

  pbxEx.Canvas.Pen.Color:= clBlack;
  pbxEx.Canvas.Pen.Width:= 2;

  CenterPoint.X := pbxEx.Width div 2;
  CenterPoint.Y := pbxEx.Height div 2;

  // Drawing clock
  pbxEx.Canvas.Ellipse(CenterPoint.X - c_Radius, CenterPoint.Y - c_Radius,
                       CenterPoint.X + c_Radius, CenterPoint.Y + c_Radius);

  Angle := 0;
  while Angle < 2 * Pi do
  begin
    StartPoint.X := CenterPoint.X + Round((c_Radius - 10) * cos(Angle));
    StartPoint.Y := CenterPoint.Y - Round((c_Radius - 10) * sin(Angle));

    EndPoint.X := CenterPoint.X + Round((c_Radius - 40) * cos(Angle));
    EndPoint.Y := CenterPoint.Y - Round((c_Radius - 40) * sin(Angle));

    pbxEx.Canvas.MoveTo(StartPoint.X, StartPoint.Y);
    pbxEx.Canvas.LineTo(EndPoint.X, EndPoint.Y);
    Angle := Angle + Pi / 6;
  end;

  // Drawing hour hand
  Hour := Hour mod 12;

  Coeff := (Abs(Hour - 12) + 3);
  Angle := Coeff * (Pi / 6);

  StartPoint.X := CenterPoint.X;
  StartPoint.Y := CenterPoint.Y;

  EndPoint.X := CenterPoint.X + Round((c_Radius - 55) * cos(Angle));
  EndPoint.Y := CenterPoint.Y - Round((c_Radius - 55) * sin(Angle));

  pbxEx.Canvas.Pen.Width:= 8;
  pbxEx.Canvas.MoveTo(StartPoint.X, StartPoint.Y);
  pbxEx.Canvas.LineTo(EndPoint.X, EndPoint.Y);

  // Drawing minute hand
  Coeff := (Abs(Min / 5 - 12) + 3);
  Angle := Coeff * (Pi / 6);

  EndPoint.X := CenterPoint.X + Round((c_Radius - 55) * cos(Angle));
  EndPoint.Y := CenterPoint.Y - Round((c_Radius - 55) * sin(Angle));

  pbxEx.Canvas.Pen.Width:= 4;
  pbxEx.Canvas.MoveTo(StartPoint.X, StartPoint.Y);
  pbxEx.Canvas.LineTo(EndPoint.X, EndPoint.Y);

  // Drawing second hand
  Coeff := (Abs(Sec / 5 - 12) + 3);
  Angle := Coeff * (Pi / 6);

  EndPoint.X := CenterPoint.X + Round((c_Radius - 55) * cos(Angle));
  EndPoint.Y := CenterPoint.Y - Round((c_Radius - 55) * sin(Angle));

  pbxEx.Canvas.Pen.Width:= 2;
  pbxEx.Canvas.MoveTo(StartPoint.X, StartPoint.Y);
  pbxEx.Canvas.LineTo(EndPoint.X, EndPoint.Y);
end;


procedure TfrmMain.tmrMainTimer(Sender: TObject);
begin
  edtClock.Text := TimeToStr(Now);
  Draw;
end;

end.
