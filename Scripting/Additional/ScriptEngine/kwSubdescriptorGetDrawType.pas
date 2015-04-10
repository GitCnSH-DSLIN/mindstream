unit kwSubdescriptorGetDrawType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwSubdescriptorGetDrawType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::SubPanelWords::subdescriptor_GetDrawType
//
// �������� � ���� ��� ����������� ����� � ���� ������ �����.
// ������:
// {code}
// aSubDescrObj subdescriptor:GetDrawType
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
 TkwSubdescriptorGetDrawType = {final} class(_kwSubDescriptorFromStackWord_)
  {* �������� � ���� ��� ����������� ����� � ���� ������ �����.
������:
[code]
aSubDescrObj subdescriptor:GetDrawType
[code] }
 protected
 // realized methods
   procedure DoWithSubDescriptor(aControl: TevSubDescriptor;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwSubdescriptorGetDrawType
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

type _Instance_R_ = TkwSubdescriptorGetDrawType;

{$Include ..\ScriptEngine\kwSubDescriptorFromStackWord.imp.pas}

// start class TkwSubdescriptorGetDrawType

procedure TkwSubdescriptorGetDrawType.DoWithSubDescriptor(aControl: TevSubDescriptor;
  const aCtx: TtfwContext);
//#UC START# *52D65E9502E1_52D65F690396_var*
//#UC END# *52D65E9502E1_52D65F690396_var*
begin
//#UC START# *52D65E9502E1_52D65F690396_impl*
 aCtx.rEngine.PushInt(Ord(aControl.DrawType));
//#UC END# *52D65E9502E1_52D65F690396_impl*
end;//TkwSubdescriptorGetDrawType.DoWithSubDescriptor

class function TkwSubdescriptorGetDrawType.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'subdescriptor:GetDrawType';
end;//TkwSubdescriptorGetDrawType.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwSubDescriptorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.