unit kwSubdescriptorGetColumn;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwSubdescriptorGetColumn.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::SubPanelWords::subdescriptor_GetColumn
//
// �������� � ���� ����� �������.
// ������:
// {code}
// aSubDescrObj subdescriptor:GetColumn
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
 TkwSubdescriptorGetColumn = {final} class(_kwSubDescriptorFromStackWord_)
  {* �������� � ���� ����� �������.
������:
[code]
aSubDescrObj subdescriptor:GetColumn
[code] }
 protected
 // realized methods
   procedure DoWithSubDescriptor(aControl: TevSubDescriptor;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwSubdescriptorGetColumn
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

type _Instance_R_ = TkwSubdescriptorGetColumn;

{$Include ..\ScriptEngine\kwSubDescriptorFromStackWord.imp.pas}

// start class TkwSubdescriptorGetColumn

procedure TkwSubdescriptorGetColumn.DoWithSubDescriptor(aControl: TevSubDescriptor;
  const aCtx: TtfwContext);
//#UC START# *52D65E9502E1_52D6622F0148_var*
//#UC END# *52D65E9502E1_52D6622F0148_var*
begin
//#UC START# *52D65E9502E1_52D6622F0148_impl*
 aCtx.rEngine.PushInt(aControl.Column);
//#UC END# *52D65E9502E1_52D6622F0148_impl*
end;//TkwSubdescriptorGetColumn.DoWithSubDescriptor

class function TkwSubdescriptorGetColumn.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'subdescriptor:GetColumn';
end;//TkwSubdescriptorGetColumn.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwSubDescriptorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.