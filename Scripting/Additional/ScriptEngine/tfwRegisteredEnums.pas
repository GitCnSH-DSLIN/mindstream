unit tfwRegisteredEnums;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwRegisteredEnums.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ConstantsRegistration::TtfwRegisteredEnums
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
  tfwTypeInfoList
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TtfwRegisteredEnums = class(TtfwTypeInfoList)
 public
 // singleton factory method
   class function Instance: TtfwRegisteredEnums;
    {- ���������� ��������� ����������. }
 end;//TtfwRegisteredEnums
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base {a}
  ;
{$IfEnd} //not NoScripts


{$If not defined(NoScripts)}

// start class TtfwRegisteredEnums

var g_TtfwRegisteredEnums : TtfwRegisteredEnums = nil;

procedure TtfwRegisteredEnumsFree;
begin
 l3Free(g_TtfwRegisteredEnums);
end;

class function TtfwRegisteredEnums.Instance: TtfwRegisteredEnums;
begin
 if (g_TtfwRegisteredEnums = nil) then
 begin
  l3System.AddExitProc(TtfwRegisteredEnumsFree);
  g_TtfwRegisteredEnums := Create;
 end;
 Result := g_TtfwRegisteredEnums;
end;

{$IfEnd} //not NoScripts


end.