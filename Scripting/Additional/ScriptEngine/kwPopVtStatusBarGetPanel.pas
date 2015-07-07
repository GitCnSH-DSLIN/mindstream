unit kwPopVtStatusBarGetPanel;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopVtStatusBarGetPanel.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::vtControlsFromStackWords::pop_vtStatusBar_GetPanel
//
// *��������:* �������� � ���� ������ ���������� �� ������.
// ������:
// {code}
// anIndex aStatusControl pop:vtStatusBar:GetPanel
// {code}
// anIndex - ����� ������.
// aStatusControl - ������� ������-���.
// � ���� ���������� ������ ������ TvtStatusPanel
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
  tfwScriptingInterfaces,
  vtStatusBar,
  Controls,
  Classes,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\vtStatusBarFromStack.imp.pas}
 TkwPopVtStatusBarGetPanel = {final} class(_vtStatusBarFromStack_)
  {* *��������:* �������� � ���� ������ ���������� �� ������.
������:
[code]
anIndex aStatusControl pop:vtStatusBar:GetPanel
[code]
anIndex - ����� ������.
aStatusControl - ������� ������-���.
� ���� ���������� ������ ������ TvtStatusPanel }
 protected
 // realized methods
   procedure DoWithStatusBar(aControl: TvtStatusBar;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopVtStatusBarGetPanel
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopVtStatusBarGetPanel;

{$Include ..\ScriptEngine\vtStatusBarFromStack.imp.pas}

// start class TkwPopVtStatusBarGetPanel

procedure TkwPopVtStatusBarGetPanel.DoWithStatusBar(aControl: TvtStatusBar;
  const aCtx: TtfwContext);
//#UC START# *53F6F84800FB_53F6F9AC01D9_var*
var
 l_Index: Integer;
//#UC END# *53F6F84800FB_53F6F9AC01D9_var*
begin
//#UC START# *53F6F84800FB_53F6F9AC01D9_impl*
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ����� ������ ������ ����������.', aCtx);
 l_Index := aCtx.rEngine.PopInt;
 aCtx.rEngine.PushObj(aControl.Panels.Items[l_Index]);
//#UC END# *53F6F84800FB_53F6F9AC01D9_impl*
end;//TkwPopVtStatusBarGetPanel.DoWithStatusBar

class function TkwPopVtStatusBarGetPanel.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:vtStatusBar:GetPanel';
end;//TkwPopVtStatusBarGetPanel.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\vtStatusBarFromStack.imp.pas}
{$IfEnd} //not NoScripts

end.