{$IfNDef kwRemindersLineFromStackWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwRemindersLineFromStackWord.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::ReminderWords::kwRemindersLineFromStackWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwRemindersLineFromStackWord_imp}
{$If not defined(NoScripts) AND not defined(NoVGScene)}
 TvgRemindersLineHack = class(TvgRemindersLine)
 end;//TvgRemindersLineHack

 {$Include ..\ScriptEngine\kwComponentFromStackWord.imp.pas}
 _kwRemindersLineFromStackWord_ = {mixin} class(_kwComponentFromStackWord_)
 protected
 // realized methods
   procedure DoComponent(aComponent: TComponent;
     const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoRemindersLine(aRemindersLine: TvgRemindersLine;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_kwRemindersLineFromStackWord_
{$IfEnd} //not NoScripts AND not NoVGScene

{$Else kwRemindersLineFromStackWord_imp}

{$IfNDef kwRemindersLineFromStackWord_imp_impl}
{$Define kwRemindersLineFromStackWord_imp_impl}

{$If not defined(NoScripts) AND not defined(NoVGScene)}


{$Include ..\ScriptEngine\kwComponentFromStackWord.imp.pas}

// start class _kwRemindersLineFromStackWord_

procedure _kwRemindersLineFromStackWord_.DoComponent(aComponent: TComponent;
  const aCtx: TtfwContext);
//#UC START# *4F21485E0184_534FAA86019C_var*
//#UC END# *4F21485E0184_534FAA86019C_var*
begin
//#UC START# *4F21485E0184_534FAA86019C_impl*
 RunnerAssert(aComponent is TvgRemindersLine, '���������� ������ - �� ����� �������, a ' + aComponent.ClassName, aCtx);
 DoRemindersLine(aComponent as TvgRemindersLine, aCtx);
//#UC END# *4F21485E0184_534FAA86019C_impl*
end;//_kwRemindersLineFromStackWord_.DoComponent

{$IfEnd} //not NoScripts AND not NoVGScene

{$Else  kwRemindersLineFromStackWord_imp_impl}
{$If not defined(NoScripts) AND not defined(NoVGScene)}
 {$Include ..\ScriptEngine\kwComponentFromStackWord.imp.pas}
{$IfEnd} //not NoScripts AND not NoVGScene

{$EndIf kwRemindersLineFromStackWord_imp_impl}
{$EndIf kwRemindersLineFromStackWord_imp}
