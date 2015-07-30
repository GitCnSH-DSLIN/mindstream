unit StatusPanelWordsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$VT"
// ������: "StatusPanelWordsPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeywordsPack::Class Shared Delphi::ScriptEngine$VT::vtControlsFromStackWords::StatusPanelWordsPack
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwScriptingInterfaces,
  vtStatusBar,
  tfwRegisterableWord
  ;

{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  TypInfo,
  SysUtils,
  tfwTypeRegistrator
  ;

type
 TkwPopStatusPanelGetText = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:vtStatusPanel:GetText
[panel]*��������:* ���������� ����� ������
*������:* 
[code]
aPanel pop:vtStatusPanel:GetText
[code]
aPanel - ������ ������ TvtStatusPanel, ������� ����� �������� � ������� pop:vtStatusPanel:GetText[panel]
*��� ����������:* String
*������:*
[code]
 aStatusPanel pop:vtStatusPanel:GetText
[code]  }
 private
 // private methods
   function GetText(const aCtx: TtfwContext;
    aStatusPanel: TvtStatusPanel): AnsiString;
     {* ���������� ����� ������� pop:vtStatusPanel:GetText }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopStatusPanelGetText

// start class TkwPopStatusPanelGetText

function TkwPopStatusPanelGetText.GetText(const aCtx: TtfwContext;
  aStatusPanel: TvtStatusPanel): AnsiString;
//#UC START# *D504B43B31FD_7D107A8BDD1A_var*
//#UC END# *D504B43B31FD_7D107A8BDD1A_var*
begin
//#UC START# *D504B43B31FD_7D107A8BDD1A_impl*
 Result := aStatusPanel.Text;
//#UC END# *D504B43B31FD_7D107A8BDD1A_impl*
end;//TkwPopStatusPanelGetText.GetText

procedure TkwPopStatusPanelGetText.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aStatusPanel : TvtStatusPanel;
begin
 try
  l_aStatusPanel := TvtStatusPanel(aCtx.rEngine.PopObjAs(TvtStatusPanel));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aStatusPanel: TvtStatusPanel : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushString((GetText(aCtx, l_aStatusPanel)));
end;//TkwPopStatusPanelGetText.DoDoIt

class function TkwPopStatusPanelGetText.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:vtStatusPanel:GetText';
end;//TkwPopStatusPanelGetText.GetWordNameForRegister

function TkwPopStatusPanelGetText.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(AnsiString);
end;//TkwPopStatusPanelGetText.GetResultTypeInfo
{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� pop_StatusPanel_GetText
 TkwPopStatusPanelGetText.RegisterInEngine;
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� TtfwContext
 TtfwTypeRegistrator.RegisterType(@tfw_tiStruct);
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� TvtStatusPanel
 TtfwTypeRegistrator.RegisterType(TypeInfo(TvtStatusPanel));
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� String
 TtfwTypeRegistrator.RegisterType(TypeInfo(AnsiString));
{$IfEnd} //not NoScripts

end.