unit TestParser;

interface

uses
 TestFramework, uParser, SysUtils;

// ����� ����� ������������ �������� ������� � ������
// https://bitbucket.org/lulinalex/mindstream/wiki/%D0%A1%D1%82%D0%B0%D1%82%D1%8C%D0%B8%20%D0%BD%D0%B0%20%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC/%D0%A3%D1%81%D1%82%D1%80%D0%BE%D0%B9%D1%81%D1%82%D0%B2%D0%BE%20%D1%81%D0%BA%D1%80%D0%B8%D0%BF%D1%82%D0%BE%D0%B2%D0%BE%D0%B9%20%D0%BC%D0%B0%D1%88%D0%B8%D0%BD%D1%8B/%D0%9E%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%82%D0%B0%20%D1%81%D0%BA%D1%80%D0%B8%D0%BF%D1%82%D0%BE%D0%B2

type
 TSomeProcedure = reference to procedure(aParser: TScriptParser);

 TestTParser = class(TTestCase)
 private
  procedure DoIt(const aFileName: String;
                 const aLambda: TSomeProcedure);
  function FileName: string;
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
  procedure Test_6_1;
  procedure Test_6_2;
  procedure Test_6_3;
 end;

implementation

procedure TestTParser.DoIt(const aFileName: String;
                           const aLambda: TSomeProcedure);
var
 l_Parser: TScriptParser;
begin
 l_Parser := TScriptParser.Create(aFileName);
 try
  aLambda(l_Parser);
 finally
  FreeAndNil(l_Parser);
 end;
end;

function TestTParser.FileName: string;
begin
 Result := Name + '.txt';
end;

procedure TestTParser.FirstTest;
begin
 Check(True);
end;

procedure TestTParser.TestCreate;
begin
 DoIt(FileName,
  procedure(aParser: TScriptParser)
  begin
   CheckFalse(aParser.EOF);
  end);
end;

procedure TestTParser.Test_4_1;
begin
 DoIt(FileName,
  procedure(aParser: TScriptParser)
  begin
   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'A') and
             (aParser.TokenType = ttToken));

   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'B') and
             (aParser.TokenType = ttToken));

   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'C') and
             (aParser.TokenType = ttToken));
  end);
end;

procedure TestTParser.Test_4_2;
begin
 DoIt(FileName,
  procedure(aParser: TScriptParser)
  begin
   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'A') and
             (aParser.TokenType = ttToken));

   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'B') and
             (aParser.TokenType = ttToken));

   aParser.NextToken;

   CheckTrue((aParser.TokenString = '+') and
             (aParser.TokenType = ttToken));
 end);
end;

procedure TestTParser.Test_4_3;
begin
 DoIt(FileName,
  procedure(aParser: TScriptParser)
  begin
   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'A') and
             (aParser.TokenType = ttToken));

   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'B+') and
             (aParser.TokenType = ttToken));
  end);
end;

procedure TestTParser.Test_4_4;
begin
 DoIt(FileName,
  procedure(aParser: TScriptParser)
  begin
   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'A+') and
             (aParser.TokenType = ttToken));

   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'B') and
             (aParser.TokenType = ttToken));
  end);
end;

procedure TestTParser.Test_4_5;
begin
 DoIt(FileName,
  procedure(aParser: TScriptParser)
  begin
   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'A+B') and
             (aParser.TokenType = ttToken));
 end);
end;

procedure TestTParser.Test_5;
begin
 DoIt(FileName,
  procedure(aParser: TScriptParser)
  begin
   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'A+B') and
             (aParser.TokenType = ttToken));
  end);
end;

procedure TestTParser.Test_5_1;
begin
 DoIt(FileName,
  procedure(aParser: TScriptParser)
  begin
   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'A+B') and
             (aParser.TokenType = ttToken));

   aParser.NextToken;
   CheckTrue((aParser.TokenString = 'AA') and
             (aParser.TokenType = ttToken));
  end);
end;

procedure TestTParser.Test_6_1;
begin
 DoIt(FileName,
  procedure(aParser: TScriptParser)
  begin
   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'AA') and
             (aParser.TokenType = ttToken));
  end);
end;

procedure TestTParser.Test_6_2;
begin
 DoIt(FileName,
  procedure(aParser: TScriptParser)
  begin
   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'AA') and
             (aParser.TokenType = ttToken));

   aParser.NextToken;
   CheckTrue((aParser.TokenString = 'BB') and
             (aParser.TokenType = ttToken));
  end);
end;

procedure TestTParser.Test_6_3;
begin
 DoIt(FileName,
  procedure(aParser: TScriptParser)
  begin
   aParser.NextToken;

   CheckTrue((aParser.TokenString = 'AA') and
             (aParser.TokenType = ttToken));

   aParser.NextToken;
   CheckTrue((aParser.TokenString = 'BB') and
             (aParser.TokenType = ttToken));
  end);
end;

initialization

// Register any test cases with the test runner
RegisterTest(TestTParser.Suite);

end.
