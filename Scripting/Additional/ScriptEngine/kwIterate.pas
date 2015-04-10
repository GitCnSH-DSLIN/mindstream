unit kwIterate;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwIterate.pas"
// �����: 12.05.2011 21:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::Iterate
//
// ���������� �������� �������.
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
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwArrayAndLambdaWord.imp.pas}
 TkwIterate = class(_tfwArrayAndLambdaWord_)
  {* ���������� �������� �������.
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
 private
 // private methods
   procedure DoIterate(const aList: ItfwValueList;
     aLambda: TtfwWord;
     const aCtx: TtfwContext);
 protected
 // realized methods
   procedure DoArrayAndLambda(const aCtx: TtfwContext;
     const anArray: ItfwValueList;
     aLambda: TtfwWord); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwIterate
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwIterate;

{$Include ..\ScriptEngine\tfwArrayAndLambdaWord.imp.pas}

// start class TkwIterate

procedure TkwIterate.DoIterate(const aList: ItfwValueList;
  aLambda: TtfwWord;
  const aCtx: TtfwContext);
//#UC START# *52E258CE028A_4DCC19E9008D_var*
//#UC END# *52E258CE028A_4DCC19E9008D_var*
begin
//#UC START# *52E258CE028A_4DCC19E9008D_impl*
 aList.ForEach(aLambda, aCtx);
//#UC END# *52E258CE028A_4DCC19E9008D_impl*
end;//TkwIterate.DoIterate

procedure TkwIterate.DoArrayAndLambda(const aCtx: TtfwContext;
  const anArray: ItfwValueList;
  aLambda: TtfwWord);
//#UC START# *52E7D17100B5_4DCC19E9008D_var*
//#UC END# *52E7D17100B5_4DCC19E9008D_var*
begin
//#UC START# *52E7D17100B5_4DCC19E9008D_impl*
 DoIterate(anArray, aLambda, aCtx);
//#UC END# *52E7D17100B5_4DCC19E9008D_impl*
end;//TkwIterate.DoArrayAndLambda

class function TkwIterate.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'Iterate';
end;//TkwIterate.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwArrayAndLambdaWord.imp.pas}
{$IfEnd} //not NoScripts

end.