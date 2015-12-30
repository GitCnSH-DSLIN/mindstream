unit TestParser;

interface

uses
  TestFramework
  , uParser
  , SysUtils
  ;

  // ����� ����� ������������ �������� ������� � ������
  // https://bitbucket.org/lulinalex/mindstream/wiki/%D0%A1%D1%82%D0%B0%D1%82%D1%8C%D0%B8%20%D0%BD%D0%B0%20%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC/%D0%A3%D1%81%D1%82%D1%80%D0%BE%D0%B9%D1%81%D1%82%D0%B2%D0%BE%20%D1%81%D0%BA%D1%80%D0%B8%D0%BF%D1%82%D0%BE%D0%B2%D0%BE%D0%B9%20%D0%BC%D0%B0%D1%88%D0%B8%D0%BD%D1%8B/%D0%9E%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%82%D0%B0%20%D1%81%D0%BA%D1%80%D0%B8%D0%BF%D1%82%D0%BE%D0%B2

type
  TestTParser = class(TTestCase)
  published
    procedure TestCreate;
    procedure FirstTest;
    procedure Test_4_1;
    procedure Test_4_2;
    procedure Test_4_3;
    procedure Test_4_4;
    procedure Test_4_5;
    procedure Test_5;
    procedure Test_5_1;
  end;

implementation

procedure TestTParser.FirstTest;
begin
  Check(True);
end;

procedure TestTParser.TestCreate;
var
  l_Parser : TScriptParser;
begin
  l_Parser := TScriptParser.Create('Test_4_1.txt');

  CheckFalse(l_Parser.EOF);

  FreeAndNil(l_Parser);
end;

procedure TestTParser.Test_4_1;
var
  l_Parser : TScriptParser;
  l_Char : AnsiChar;
begin
  l_Parser := TScriptParser.Create('Test_4_1.txt');

  try
    l_Parser.NextToken;

    CheckTrue((l_Parser.TokenString = 'A') and
              (l_Parser.TokenType = ttToken));

    l_Parser.NextToken;

    CheckTrue((l_Parser.TokenString = 'B') and
              (l_Parser.TokenType = ttToken));

    l_Parser.NextToken;

    CheckTrue((l_Parser.TokenString = 'C') and
              (l_Parser.TokenType = ttToken));
  finally
    FreeAndNil(l_Parser);
  end;
end;

procedure TestTParser.Test_4_2;
var
  l_Parser : TScriptParser;
  l_Char : AnsiChar;
begin
  l_Parser := TScriptParser.Create('Test_4_2.txt');

  try
    l_Parser.NextToken;

    CheckTrue((l_Parser.TokenString = 'A') and
              (l_Parser.TokenType = ttToken));

    l_Parser.NextToken;

    CheckTrue((l_Parser.TokenString = 'B') and
              (l_Parser.TokenType = ttToken));

    l_Parser.NextToken;

    CheckTrue((l_Parser.TokenString = '+') and
              (l_Parser.TokenType = ttToken));
  finally
    FreeAndNil(l_Parser);
  end;
end;

procedure TestTParser.Test_4_3;
var
  l_Parser : TScriptParser;
  l_Char : AnsiChar;
begin
  l_Parser := TScriptParser.Create('Test_4_3.txt');

  try
    l_Parser.NextToken;

    CheckTrue((l_Parser.TokenString = 'A') and
              (l_Parser.TokenType = ttToken));

    l_Parser.NextToken;

    CheckTrue((l_Parser.TokenString = 'B+') and
              (l_Parser.TokenType = ttToken));
  finally
    FreeAndNil(l_Parser);
  end;
end;

procedure TestTParser.Test_4_4;
var
  l_Parser : TScriptParser;
  l_Char : AnsiChar;
begin
  l_Parser := TScriptParser.Create('Test_4_4.txt');

  try
    l_Parser.NextToken;

    CheckTrue((l_Parser.TokenString = 'A+') and
              (l_Parser.TokenType = ttToken));

    l_Parser.NextToken;

    CheckTrue((l_Parser.TokenString = 'B') and
              (l_Parser.TokenType = ttToken));
  finally
    FreeAndNil(l_Parser);
  end;
end;

procedure TestTParser.Test_4_5;
var
  l_Parser : TScriptParser;
  l_Char : AnsiChar;
begin
  l_Parser := TScriptParser.Create('Test_4_5.txt');

  try
    l_Parser.NextToken;

    CheckTrue((l_Parser.TokenString = 'A+B') and
              (l_Parser.TokenType = ttToken));
  finally
    FreeAndNil(l_Parser);
  end;
end;

procedure TestTParser.Test_5;
var
  l_Parser : TScriptParser;
  l_Char : AnsiChar;
begin
  l_Parser := TScriptParser.Create('Test_5.txt');

  try
    l_Parser.NextToken;

    CheckTrue((l_Parser.TokenString = 'A+B') and
              (l_Parser.TokenType = ttToken));
  finally
    FreeAndNil(l_Parser);
  end;
end;

procedure TestTParser.Test_5_1;
var
  l_Parser : TScriptParser;
  l_Char : AnsiChar;
begin
  l_Parser := TScriptParser.Create('Test_5_1.txt');

  try
    l_Parser.NextToken;

    CheckTrue((l_Parser.TokenString = 'A+B') and
              (l_Parser.TokenType = ttToken));
  finally
    FreeAndNil(l_Parser);
  end;
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTParser.Suite);
end.

