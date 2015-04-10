unit kwPopReminderMove;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopReminderMove.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ReminderWords::pop_Reminder_Move
//
// *������:*
// {code}
// aDeltaX aDeltaY aReminder pop:Reminder:Move
// {code}
// *��������:* ����������� ������� �� ��������� �� aDetaX �� ����������� � �� aDeltaY �� ���������
// ������������ ������� �������. *��������! aDeltaX � aDeltaY - ��������, � �� ����������!*
// *������:*
// {code}
// CONST "������� ������ � ��������������� ������" 'OldBaseWarning'
// 
// 500 500 "������� ������ � ��������������� ������" byname:control:Push pop:Reminder:Move
// {code}
// ������� ������ �� 500 �������� �� ����������� � 500  �������� �� ��������� ������������ ��������
// ���������.
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
 TkwPopReminderMove = {final} class(_kwReminderFromStackWord_)
  {* *������:* 
[code]
aDeltaX aDeltaY aReminder pop:Reminder:Move
[code] 
*��������:* ����������� ������� �� ��������� �� aDetaX �� ����������� � �� aDeltaY �� ��������� ������������ ������� �������. *��������! aDeltaX � aDeltaY - ��������, � �� ����������!* 
*������:* 
[code]
CONST "������� ������ � ��������������� ������" 'OldBaseWarning'

500 500 "������� ������ � ��������������� ������" byname:control:Push pop:Reminder:Move
[code] 
������� ������ �� 500 �������� �� ����������� � 500  �������� �� ��������� ������������ �������� ���������. }
 protected
 // realized methods
   procedure DoReminder(aReminder: TvgReminder;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopReminderMove
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

type _Instance_R_ = TkwPopReminderMove;

{$Include ..\ScriptEngine\kwReminderFromStackWord.imp.pas}

// start class TkwPopReminderMove

procedure TkwPopReminderMove.DoReminder(aReminder: TvgReminder;
  const aCtx: TtfwContext);
//#UC START# *534FACD0001A_4FFD37650303_var*
var
 l_DeltaX: Integer;
 l_DeltaY: Integer;
//#UC END# *534FACD0001A_4FFD37650303_var*
begin
//#UC START# *534FACD0001A_4FFD37650303_impl*
 if aCtx.rEngine.IsTopBool then
  aCtx.rEngine.PopBool; // ������ ���� �� �����

 if aCtx.rEngine.IsTopInt then
 begin
  l_DeltaY := aCtx.rEngine.PopInt;
  if aCtx.rEngine.IsTopInt then
   l_DeltaX := aCtx.rEngine.PopInt
  else
   RunnerAssert(False, '�� ������ �������� �� ��� X', aCtx);
  RunnerAssert(aReminder.Owner is TvgRemindersLine, '�� ������� ����� ������', aCtx);
  (aReminder.Owner as TvgRemindersLine).OffSetLine(l_DeltaX, l_DeltaY);
  //aReminder.MoveReminder(l_DeltaX, l_DeltaY, l_Remember);
 end // if aCtx.rEngine.IsTopInt then
 else
  RunnerAssert(False, '�� ������ �������� �� ��� Y', aCtx);
//#UC END# *534FACD0001A_4FFD37650303_impl*
end;//TkwPopReminderMove.DoReminder

class function TkwPopReminderMove.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:Move';
end;//TkwPopReminderMove.GetWordNameForRegister

{$IfEnd} //not NoScripts AND not NoVGScene

initialization
{$If not defined(NoScripts) AND not defined(NoVGScene)}
 {$Include ..\ScriptEngine\kwReminderFromStackWord.imp.pas}
{$IfEnd} //not NoScripts AND not NoVGScene

end.