unit kwInlinedWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwInlinedWord.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting Axiomatics::TkwInlinedWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwCompiledWord,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwInlinedWord = class(TkwCompiledWord)
 protected
 // overridden property methods
   function pm_GetResultTypeInfo: TtfwTypeInfo; override;
 public
 // overridden public methods
   procedure SetResultTypeInfo(const aValue: TtfwTypeInfo;
     const aCtx: TtfwContext); override;
 end;//TkwInlinedWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwInlinedWord

function TkwInlinedWord.pm_GetResultTypeInfo: TtfwTypeInfo;
//#UC START# *52CFC11603C8_53ED9C3B01F3get_var*
//#UC END# *52CFC11603C8_53ED9C3B01F3get_var*
begin
//#UC START# *52CFC11603C8_53ED9C3B01F3get_impl*
 Result := TtfwTypeInfo_C([tfw_wmInline]);
//#UC END# *52CFC11603C8_53ED9C3B01F3get_impl*
end;//TkwInlinedWord.pm_GetResultTypeInfo

procedure TkwInlinedWord.SetResultTypeInfo(const aValue: TtfwTypeInfo;
  const aCtx: TtfwContext);
//#UC START# *52EA6A2C0111_53ED9C3B01F3_var*
//#UC END# *52EA6A2C0111_53ED9C3B01F3_var*
begin
//#UC START# *52EA6A2C0111_53ED9C3B01F3_impl*
 CompilerAssert(aValue.Modifiers = [tfw_wmInline], '�������� ������ �������������', aCtx);
//#UC END# *52EA6A2C0111_53ED9C3B01F3_impl*
end;//TkwInlinedWord.SetResultTypeInfo

{$IfEnd} //not NoScripts

end.