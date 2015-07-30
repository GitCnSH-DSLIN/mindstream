unit kwAutolinkProducer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwAutolinkProducer.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::VarProducing::VarProducingPack::AutolinkProducer
//
// ��� InitedVarProducer, �� �� ����� ���� VOID
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwInitedVarProducerPrim,
  tfwScriptingInterfaces,
  kwCompiledWordPrim
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwAutolinkProducer = {final scriptword} class(TkwInitedVarProducerPrim)
  {* ��� InitedVarProducer, �� �� ����� ���� VOID }
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWordPrim;
     const aContext: TtfwContext); override;
     {* ��������� ����������� ����� ���������� ����� }
 end;//TkwAutolinkProducer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledAutolinkProducer,
  SysUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwAutolinkProducer

class function TkwAutolinkProducer.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'AutolinkProducer';
end;//TkwAutolinkProducer.GetWordNameForRegister

procedure TkwAutolinkProducer.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWordPrim;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F44BB0601EC_var*
var
 l_W : TkwCompiledAutolinkProducer;
//#UC END# *4F219629036A_4F44BB0601EC_var*
begin
//#UC START# *4F219629036A_4F44BB0601EC_impl*
 CompilerAssert(not aCompiled.HasCode,
                '����� �� ����� ����� ����������',
                aContext
               );
 l_W := TkwCompiledAutolinkProducer.Create;
 try
  aWordToFinish.Word := l_W;
 finally
  FreeAndNil(l_W);
 end;//try..finally
//#UC END# *4F219629036A_4F44BB0601EC_impl*
end;//TkwAutolinkProducer.FinishDefinitionOfNewWord

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� AutolinkProducer
 TkwAutolinkProducer.RegisterInEngine;
{$IfEnd} //not NoScripts

end.