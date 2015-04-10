unit kwSubdescriptorGetVisible;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwSubdescriptorGetVisible.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::SubPanelWords::subdescriptor_GetVisible
//
// �������� � ���� �������� �����.
// ������:
// {code}
// aSubDescrObj subdescriptor:GetVisible
// {code}
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
  evSubPn,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwSubDescriptorFromStackWord.imp.pas}
 TkwSubdescriptorGetVisible = {final} class(_kwSubDescriptorFromStackWord_)
  {* �������� � ���� �������� �����.
������:
[code]
aSubDescrObj subdescriptor:GetVisible
[code] }
 protected
 // realized methods
   procedure DoWithSubDescriptor(aControl: TevSubDescriptor;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwSubdescriptorGetVisible
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  Controls,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwSubdescriptorGetVisible;

{$Include ..\ScriptEngine\kwSubDescriptorFromStackWord.imp.pas}

// start class TkwSubdescriptorGetVisible

procedure TkwSubdescriptorGetVisible.DoWithSubDescriptor(aControl: TevSubDescriptor;
  const aCtx: TtfwContext);
//#UC START# *52D65E9502E1_52D661D4008D_var*
//#UC END# *52D65E9502E1_52D661D4008D_var*
begin
//#UC START# *52D65E9502E1_52D661D4008D_impl*
 aCtx.rEngine.PushBool(aControl.Visible);
//#UC END# *52D65E9502E1_52D661D4008D_impl*
end;//TkwSubdescriptorGetVisible.DoWithSubDescriptor

class function TkwSubdescriptorGetVisible.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'subdescriptor:GetVisible';
end;//TkwSubdescriptorGetVisible.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwSubDescriptorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.