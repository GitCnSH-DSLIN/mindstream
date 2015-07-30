unit kwVTControlsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$VT"
// ������: "kwVTControlsPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeywordsPack::Class Shared Delphi::ScriptEngine$VT::vtControlsFromStackWords::kwVTControlsPack
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwScriptingInterfaces,
  DragData,
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
 TkwDDSupportGetState = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� DDSupport:GetState
[panel]���������� ������ ��������� DDSupport
������: 
[code]
DDSupport:GetState
[code][panel]
*��� ����������:* TDragDataState
*������:*
[code]
 DDSupport:GetState
[code]  }
 private
 // private methods
   function DDSupportGetState(const aCtx: TtfwContext): TDragDataState;
     {* ���������� ����� ������� DDSupport:GetState }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwDDSupportGetState

// start class TkwDDSupportGetState

function TkwDDSupportGetState.DDSupportGetState(const aCtx: TtfwContext): TDragDataState;
//#UC START# *7A2DDC297C52_765DA382B537_var*
//#UC END# *7A2DDC297C52_765DA382B537_var*
begin
//#UC START# *7A2DDC297C52_765DA382B537_impl*
 Result := TDragDataSupport.Instance.DragState; 
//#UC END# *7A2DDC297C52_765DA382B537_impl*
end;//TkwDDSupportGetState.DDSupportGetState

procedure TkwDDSupportGetState.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushInt(Ord(DDSupportGetState(aCtx)));
end;//TkwDDSupportGetState.DoDoIt

class function TkwDDSupportGetState.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'DDSupport:GetState';
end;//TkwDDSupportGetState.GetWordNameForRegister

function TkwDDSupportGetState.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(TDragDataState);
end;//TkwDDSupportGetState.GetResultTypeInfo
{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� DDSupport_GetState
 TkwDDSupportGetState.RegisterInEngine;
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� TtfwContext
 TtfwTypeRegistrator.RegisterType(@tfw_tiStruct);
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� TDragDataState
 TtfwTypeRegistrator.RegisterType(TypeInfo(TDragDataState));
{$IfEnd} //not NoScripts

end.