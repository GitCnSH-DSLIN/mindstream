unit uNewParser;
interface

uses
 Classes
 ,SysUtils
 ;

type
 TscriptTokenType = (ttUnknown, ttString, ttToken, ttEOF, ttBoolean);

Const
 cQuote = #39;
 cWhiteSpace = [#32, #9];
 cDoubleQuote = #35;

type
 TScriptParser = class
 private
  f_Stream: TStream;
  f_EOF: Boolean;
  f_UnknownToken: String;
  f_PosInUnknown: Integer;
  f_Token: String;
  f_TokenType: TscriptTokenType;
  {f_IsBlockComment: Boolean;
  f_IsString : Boolean;
  f_IsSymbol : Boolean;}
 procedure NextChar;
 // ����������� f_PosInCurrentToken �� 1
 function CurrentCharInBuffer : Char;
 protected
  function ReadUnknownToken: String;
 protected
  function GetChar(out aChar: AnsiChar): Boolean;
 public
  constructor Create(const aStream: TStream); overload;
  constructor Create(const aFileName: String); overload;
  destructor Destroy; override;

  function EOF: Boolean;
  { * - ��������� ����� �������� ������. }
  procedure NextToken;
  { * - ������� ��������� ����� �� �������� ������. }
 public
  property TokenString: String read f_Token;
  { * - ������� �����. }
  property TokenType: TscriptTokenType read f_TokenType;
  { * - ��� �������� ������. }
 end; // TscriptParser

implementation

uses
 System.Character
 ;

{ TScriptParser }

constructor TScriptParser.Create(const aStream: TStream);
begin
 inherited Create;
 f_PosInUnknown := 1;
 f_EOF := false;
 f_Stream := aStream;
end;

constructor TScriptParser.Create(const aFileName: String);
var
 l_FileName: String;
begin
 l_FileName := aFileName;
 if (ExtractFilePath(l_FileName) = '') then
  l_FileName := ExtractFilePath(ParamStr(0)) + '\' + l_FileName;
 Create(TFileStream.Create(l_FileName, fmOpenRead));
end;

function TScriptParser.CurrentCharInBuffer: Char;
begin
 Result := f_UnknownToken[f_PosInUnknown];
end;

destructor TScriptParser.Destroy;
begin
 FreeAndNil(f_Stream);
 inherited;
end;

function TScriptParser.EOF: Boolean;
begin
 Result := f_EOF AND (f_UnknownToken = '');
end;

function TScriptParser.GetChar(out aChar: AnsiChar): Boolean;
begin
 if (f_Stream.Read(aChar, SizeOf(aChar)) = SizeOf(aChar)) then
 begin
  Result := true;
 end
 else
  Result := false;
end;

procedure TScriptParser.NextChar;
begin
 Inc(f_PosInUnknown);
end;

procedure TScriptParser.NextToken;
var
 l_Token : String;
begin
 f_TokenType := ttUnknown;
 f_UnknownToken := ReadUnknownToken;

 f_Token := f_UnknownToken;

 if f_Token <> f_UnknownToken then
 begin
  f_TokenType := ttUnknown;
 end;

 if f_EOF then
  if f_UnknownToken = '' then
   f_TokenType := ttEOF;
end;

function TScriptParser.ReadUnknownToken: String;
var
 l_Buffer : String;
 l_Char : AnsiChar;
 l_IsTokenBegin : Boolean;
begin
 l_Buffer := '';
 while GetChar(l_Char) do
 begin
  if l_Char in cWhiteSpace then
   Continue;

  if l_Char = #13 then
   if GetChar(l_Char) then
    if l_Char = #10 then
     Continue
    else
     Assert(false, 'Not character LF after character CR')
    else
     Assert(false, 'End of file, after character CR');

  l_Buffer := l_Buffer + l_Char;
 end;

 f_EOF := True;
 Result := l_Buffer;
end;

end.
