unit kwVarProducer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "kwVarProducer.pas"
// �����: 11.02.2012 18:40
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::VarProducing::VarProducingPack::VarProducer
//
// ����� ��� �������� ���� ��� ����������� ����������.
// ������:
// {code}
// : TestVarProducer
// 
// VarProducer VarType
// 
// STRING VarType A
// 'Hello' =: A
// 
// INTEGER VarType B
// 23 =: B
// 
// A .
// B .
// 
// ;
// 
// TestVarProducer
// {code}
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwWordProducer,
  tfwScriptingInterfaces,
  kwCompiledWordPrim
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwVarProducer = {final scriptword} class(TtfwWordProducer)
  {* ����� ��� �������� ���� ��� ����������� ����������.
������:
[code]
: TestVarProducer

 VarProducer VarType
 
 STRING VarType A
 'Hello' =: A
 
 INTEGER VarType B
 23 =: B
 
 A .
 B .
 
;

TestVarProducer
[code] }
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWordPrim;
     const aContext: TtfwContext); override;
     {* ��������� ����������� ����� ���������� ����� }
 end;//TkwVarProducer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledVarProducer,
  SysUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwVarProducer

class function TkwVarProducer.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'VarProducer';
end;//TkwVarProducer.GetWordNameForRegister

procedure TkwVarProducer.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWordPrim;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F367DC60289_var*
var
 l_W : TkwCompiledVarProducer;
//#UC END# *4F219629036A_4F367DC60289_var*
begin
//#UC START# *4F219629036A_4F367DC60289_impl*
 CompilerAssert(not aCompiled.HasCode,
                '����� �� ����� ����� ����������',
                aContext
               );
 l_W := TkwCompiledVarProducer.Create;
 try
  aWordToFinish.Word := l_W;
 finally
  FreeAndNil(l_W);
 end;//try..finally
//#UC END# *4F219629036A_4F367DC60289_impl*
end;//TkwVarProducer.FinishDefinitionOfNewWord

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� VarProducer
 TkwVarProducer.RegisterInEngine;
{$IfEnd} //not NoScripts

end.