unit ObjectFromstackWords;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$RTLandVCL"
// ������: "ObjectFromstackWords.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeywordsPack::Class Shared Delphi Low Level::ScriptEngine$RTLandVCL::Object Info::ObjectFromstackWords
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwAxiomaticsResNameGetter
  ;

{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwPopObjectInherits,
  kwPopObjectIsNil,
  kwPopObjectClassName,
  kwPopClassInherits,
  tfwScriptingTypes
  ;

type
//#UC START# *695731F3434Eci*
//#UC END# *695731F3434Eci*
 TObjectFromstackWordsResNameGetter = {final} class(TtfwAxiomaticsResNameGetter)
  {* ����������� ������������ ����������� }
 public
 // realized methods
   class function ResName: AnsiString; override;
//#UC START# *695731F3434Epubl*
//#UC END# *695731F3434Epubl*
 end;//TObjectFromstackWordsResNameGetter

// start class TObjectFromstackWordsResNameGetter

class function TObjectFromstackWordsResNameGetter.ResName: AnsiString;
 {-}
begin
 Result := 'ObjectFromstackWords';
end;//TObjectFromstackWordsResNameGetter.ResName

 {$R ObjectFromstackWords.res}
{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� ������������ �����������
 TObjectFromstackWordsResNameGetter.Register;
{$IfEnd} //not NoScripts

end.