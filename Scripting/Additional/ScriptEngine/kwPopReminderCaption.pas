unit kwPopReminderCaption;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopReminderCaption.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ReminderWords::pop_Reminder_Caption
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts) AND not defined(NoVGScene)}
uses
  tfwScriptingInterfaces,
  vgRemindersLine,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts AND not NoVGScene

{$If not defined(NoScripts) AND not defined(NoVGScene)}
type
 {$Include ..\ScriptEngine\kwReminderFromStackWord.imp.pas}
 TkwPopReminderCaption = {final} class(_kwReminderFromStackWord_)
 protected
 // realized methods
   procedure DoReminder(aReminder: TvgReminder;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopReminderCaption
{$IfEnd} //not NoScripts AND not NoVGScene

implementation

{$If not defined(NoScripts) AND not defined(NoVGScene)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  Controls,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts AND not NoVGScene

{$If not defined(NoScripts) AND not defined(NoVGScene)}

type _Instance_R_ = TkwPopReminderCaption;

{$Include ..\ScriptEngine\kwReminderFromStackWord.imp.pas}

// start class TkwPopReminderCaption

procedure TkwPopReminderCaption.DoReminder(aReminder: TvgReminder;
  const aCtx: TtfwContext);
//#UC START# *534FACD0001A_534FAE0A0322_var*
//#UC END# *534FACD0001A_534FAE0A0322_var*
begin
//#UC START# *534FACD0001A_534FAE0A0322_impl*
 aCtx.rEngine.PushString(aReminder.Caption);
//#UC END# *534FACD0001A_534FAE0A0322_impl*
end;//TkwPopReminderCaption.DoReminder

class function TkwPopReminderCaption.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:Caption';
end;//TkwPopReminderCaption.GetWordNameForRegister

{$IfEnd} //not NoScripts AND not NoVGScene

initialization
{$If not defined(NoScripts) AND not defined(NoVGScene)}
 {$Include ..\ScriptEngine\kwReminderFromStackWord.imp.pas}
{$IfEnd} //not NoScripts AND not NoVGScene

end.