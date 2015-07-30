unit kwWordAlias;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "kwWordAlias.pas"
// �����: 15.02.2012 18:31
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::Scripting Axiomatics::WordAlias
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwConstLike,
  tfwScriptingInterfaces,
  kwCompiledWordPrim
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwWordAlias = {final scriptword} class(TtfwConstLike)
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWordPrim;
     const aContext: TtfwContext); override;
     {* ��������� ����������� ����� ���������� ����� }
   function SupressNextImmediate: TtfwSuppressNextImmediate; override;
 end;//TkwWordAlias
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwWordAlias

class function TkwWordAlias.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WordAlias';
end;//TkwWordAlias.GetWordNameForRegister

procedure TkwWordAlias.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWordPrim;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F3BC19A0061_var*
var
 l_W : TtfwWord;
 l_Key : TtfwKeyWord;
//#UC END# *4F219629036A_4F3BC19A0061_var*
begin
//#UC START# *4F219629036A_4F3BC19A0061_impl*
 CompilerAssert((aCompiled.CodeCount = 1),
                '�������� ����� ��������� ��� ����� WordAlias',
                aContext
                );
 l_W := aCompiled.GetCode(aContext)[0];
 l_Key := TtfwKeyWord(l_W.Key);
 try
  aWordToFinish.Word := l_W;
  // - ������������ ����� ����� � ������� 
 finally
  l_W.Key := l_Key;
  // - ��������������� ����� ���������� �������� �����
 end;//try..finally
//#UC END# *4F219629036A_4F3BC19A0061_impl*
end;//TkwWordAlias.FinishDefinitionOfNewWord

function TkwWordAlias.SupressNextImmediate: TtfwSuppressNextImmediate;
//#UC START# *4F3AB3B101FC_4F3BC19A0061_var*
//#UC END# *4F3AB3B101FC_4F3BC19A0061_var*
begin
//#UC START# *4F3AB3B101FC_4F3BC19A0061_impl*
 Result := tfw_sniForce;
//#UC END# *4F3AB3B101FC_4F3BC19A0061_impl*
end;//TkwWordAlias.SupressNextImmediate

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� WordAlias
 TkwWordAlias.RegisterInEngine;
{$IfEnd} //not NoScripts

end.