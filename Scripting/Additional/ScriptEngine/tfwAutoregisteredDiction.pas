unit tfwAutoregisteredDiction;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwAutoregisteredDiction.pas"
// �����: 21.04.2011 20:49
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ScriptingKeywordsCore::TtfwAutoregisteredDiction
//
// ������� ���������������������� ����. ������ ��� ��������� ��� ��� �������������. ������������
// ����� ���� �������� � ���������������� ����, ��� ������������� �����, ��� ����� ����������
// �������
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
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TtfwAutoregisteredDiction = class(TtfwDictionary)
  {* ������� ���������������������� ����. ������ ��� ��������� ��� ��� �������������. ������������ ����� ���� �������� � ���������������� ����, ��� ������������� �����, ��� ����� ���������� ������� }
 private
 // private fields
   f_AllAxiomaticsDefined : Boolean;
    {* ���� ��� �������� AllAxiomaticsDefined}
 protected
 // property methods
   procedure pm_SetAllAxiomaticsDefined(aValue: Boolean); virtual;
 protected
 // overridden protected methods
   procedure ClearFields; override;
     {* ��������� ������ ClearFields }
 public
 // public properties
   property AllAxiomaticsDefined: Boolean
     read f_AllAxiomaticsDefined
     write pm_SetAllAxiomaticsDefined;
 public
 // singleton factory method
   class function Instance: TtfwAutoregisteredDiction;
    {- ���������� ��������� ����������. }
 end;//TtfwAutoregisteredDiction
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base {a}
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}


// start class TtfwAutoregisteredDiction

var g_TtfwAutoregisteredDiction : TtfwAutoregisteredDiction = nil;

procedure TtfwAutoregisteredDictionFree;
begin
 l3Free(g_TtfwAutoregisteredDiction);
end;

class function TtfwAutoregisteredDiction.Instance: TtfwAutoregisteredDiction;
begin
 if (g_TtfwAutoregisteredDiction = nil) then
 begin
  l3System.AddExitProc(TtfwAutoregisteredDictionFree);
  g_TtfwAutoregisteredDiction := Create;
 end;
 Result := g_TtfwAutoregisteredDiction;
end;


procedure TtfwAutoregisteredDiction.pm_SetAllAxiomaticsDefined(aValue: Boolean);
//#UC START# *52EF85600031_4DB05FF60115set_var*
//#UC END# *52EF85600031_4DB05FF60115set_var*
begin
//#UC START# *52EF85600031_4DB05FF60115set_impl*
 Assert(not f_AllAxiomaticsDefined OR aValue);
 f_AllAxiomaticsDefined := aValue;
//#UC END# *52EF85600031_4DB05FF60115set_impl*
end;//TtfwAutoregisteredDiction.pm_SetAllAxiomaticsDefined

procedure TtfwAutoregisteredDiction.ClearFields;
//#UC START# *5000565C019C_4DB05FF60115_var*
//#UC END# *5000565C019C_4DB05FF60115_var*
begin
//#UC START# *5000565C019C_4DB05FF60115_impl*
 inherited;
 f_AllAxiomaticsDefined := false;
//#UC END# *5000565C019C_4DB05FF60115_impl*
end;//TtfwAutoregisteredDiction.ClearFields

{$IfEnd} //not NoScripts

end.