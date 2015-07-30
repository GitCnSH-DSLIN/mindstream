unit kwARRAY;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "kwARRAY.pas"
// �����: 12.05.2011 21:14
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::Modifiers::ARRAY
//
// ���������� ��������� �������� � ��������.
// *������:*
// {code}
// ARRAY L
// 10 LOOP (
// ++
// DUP
// >>>[] L
// )
// DROP
// @ . L ITERATE
// // - �������� ����� �� 1 �� 10
// '' .
// 0 @ + L ITERATE .
// // - ��������� ����� �� 1 �� 10 � �������� ���������
// {code}
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwModifier,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwARRAY = {scriptword} class(TkwModifier)
  {* ���������� ��������� �������� � ��������.
 *������:*
[code]
 ARRAY L
 10 LOOP (
  ++
  DUP
  >>>[] L
 )
 DROP
 @ . L ITERATE
 // - �������� ����� �� 1 �� 10
 '' .
 0 @ + L ITERATE .
 // - ��������� ����� �� 1 �� 10 � �������� ���������
[code] }
 protected
 // realized methods
   function pm_GetModifier: TtfwWordModifier; override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwARRAY
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwARRAY

function TkwARRAY.pm_GetModifier: TtfwWordModifier;
//#UC START# *4DCACED80361_4DCC157102A8get_var*
//#UC END# *4DCACED80361_4DCC157102A8get_var*
begin
//#UC START# *4DCACED80361_4DCC157102A8get_impl*
 Result := tfw_wmList;
//#UC END# *4DCACED80361_4DCC157102A8get_impl*
end;//TkwARRAY.pm_GetModifier

class function TkwARRAY.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ARRAY';
end;//TkwARRAY.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� ARRAY
 TkwARRAY.RegisterInEngine;
{$IfEnd} //not NoScripts

end.