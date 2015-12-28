unit uNewParser;

interface

uses
  Classes;

type
  TscriptTokenType = (ttUnknown, ttString);

type
  TNewParser = class
  private
    f_Stream: TStringStream;
    f_EOF: Boolean;
    f_CurrentLine: String;
    f_PosInCurrentLine: integer;
  public
    function GetChar(out aChar: AnsiChar) : boolean;
    constructor Create(const aStream: TStringStream); overload;
    constructor Create(const aFileName: String); overload;
    destructor Destroy; override;
    function EOF: Boolean;
    { * - ��������� ����� �������� ������. }
  end; // TNewParser

implementation

uses
  System.SysUtils;

{ TNewParser }

constructor TNewParser.Create(const aStream: TStringStream);
begin
  inherited Create;
  f_PosInCurrentLine := 1;
  f_EOF := false;
  f_Stream := aStream;
end;

constructor TNewParser.Create(const aFileName: String);
var
  l_FileName: String;
begin
  l_FileName := aFileName;
  if (ExtractFilePath(l_FileName) = '') then
    l_FileName := ExtractFilePath(ParamStr(0)) + '\' + l_FileName;
  Create(TStringStream.Create(l_FileName, fmOpenRead));
end;

destructor TNewParser.Destroy;
begin
  FreeAndNil(f_Stream);
  inherited;
end;

function TNewParser.EOF: Boolean;
begin
  Result := f_EOF AND (f_CurrentLine = '');
end;

function TNewParser.GetChar(out aChar: AnsiChar): boolean;
begin
  Result := False;
end;

end.
