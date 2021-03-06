{$IfNDef tfwIncludeLike_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "tfwIncludeLike.imp.pas"
// �����: 06.05.2011 11:22
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: Impurity::Class Shared Delphi Low Level::ScriptEngine::IncludesAndUses::tfwIncludeLike
//
// ��������� Include-����������� ����.
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwIncludeLike_imp}
{$If not defined(NoScripts)}
 _tfwIncludeLike_ = {abstract mixin} class(TtfwCompilingWord)
  {* ��������� Include-����������� ����. }
 protected
 // overridden protected methods
   procedure AfterCompile(const aPrevContext: TtfwContext;
     var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWordPrim); override;
   function AcceptsKeyWordAfter: Boolean; override;
   procedure DoStringToken(const aContext: TtfwContext;
     aCompiled: TtfwWord;
     const aString: Il3CString); override;
 protected
 // protected methods
   procedure DoIncluded(const aContext: TtfwContext;
     const aFileName: AnsiString);
   function GetIncludedClass: RkwIncluded; virtual;
   function MakeIncluded(const aFileName: AnsiString;
     const aContext: TtfwContext): TkwIncluded; virtual;
 end;//_tfwIncludeLike_
{$Else}

 _tfwIncludeLike_ = TtfwCompilingWord;

{$IfEnd} //not NoScripts

{$Else tfwIncludeLike_imp}

{$If not defined(NoScripts)}

// start class _tfwIncludeLike_

procedure _tfwIncludeLike_.DoIncluded(const aContext: TtfwContext;
  const aFileName: AnsiString);
//#UC START# *4DC3A24D0330_4DC3A1A30235_var*
var
 l_I : TkwIncluded;
 l_S : AnsiString;
 l_Index : Integer;
//#UC END# *4DC3A24D0330_4DC3A1A30235_var*
begin
//#UC START# *4DC3A24D0330_4DC3A1A30235_impl*
 l_S := aContext.rCaller.ResolveIncludedFilePath(aFileName);
 if not aContext.rUsed.FindData(l_S, l_Index, l3_siCaseUnsensitive) then
 begin
  aContext.rUsed.Insert(l_Index, l_S);
  l_I := MakeIncluded(l_S, aContext);
  try
   l_I.DoIt(aContext);
  finally
   FreeAndNil(l_I);
  end;//try..finally
 end;//not aContext.rUsed.Find(l_S, l_Index)
//#UC END# *4DC3A24D0330_4DC3A1A30235_impl*
end;//_tfwIncludeLike_.DoIncluded

function _tfwIncludeLike_.GetIncludedClass: RkwIncluded;
//#UC START# *4F3AA4E10327_4DC3A1A30235_var*
//#UC END# *4F3AA4E10327_4DC3A1A30235_var*
begin
//#UC START# *4F3AA4E10327_4DC3A1A30235_impl*
 Result := TkwIncluded;
//#UC END# *4F3AA4E10327_4DC3A1A30235_impl*
end;//_tfwIncludeLike_.GetIncludedClass

function _tfwIncludeLike_.MakeIncluded(const aFileName: AnsiString;
  const aContext: TtfwContext): TkwIncluded;
//#UC START# *4F47673F03B0_4DC3A1A30235_var*
//#UC END# *4F47673F03B0_4DC3A1A30235_var*
begin
//#UC START# *4F47673F03B0_4DC3A1A30235_impl*
 Result := GetIncludedClass.Create(aFileName)
//#UC END# *4F47673F03B0_4DC3A1A30235_impl*
end;//_tfwIncludeLike_.MakeIncluded

procedure _tfwIncludeLike_.AfterCompile(const aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWordPrim);
//#UC START# *4DB6CE2302C9_4DC3A1A30235_var*
//#UC END# *4DB6CE2302C9_4DC3A1A30235_var*
begin
//#UC START# *4DB6CE2302C9_4DC3A1A30235_impl*
 CompilerAssert(not aCompiled.HasCode,
                '������ ������ INCLUDE/USES ������ ���������� �����',
                aPrevContext);
 CompilerAssert(not aCompiled.HasLocalDictionary,
                '������ ������ INCLUDE/USES ������ ���������� �����',
                aPrevContext);
 inherited;
//#UC END# *4DB6CE2302C9_4DC3A1A30235_impl*
end;//_tfwIncludeLike_.AfterCompile

function _tfwIncludeLike_.AcceptsKeyWordAfter: Boolean;
//#UC START# *4DB9B502013D_4DC3A1A30235_var*
//#UC END# *4DB9B502013D_4DC3A1A30235_var*
begin
//#UC START# *4DB9B502013D_4DC3A1A30235_impl*
 Result := false;
//#UC END# *4DB9B502013D_4DC3A1A30235_impl*
end;//_tfwIncludeLike_.AcceptsKeyWordAfter

procedure _tfwIncludeLike_.DoStringToken(const aContext: TtfwContext;
  aCompiled: TtfwWord;
  const aString: Il3CString);
//#UC START# *4DC19432023E_4DC3A1A30235_var*
//#UC END# *4DC19432023E_4DC3A1A30235_var*
begin
//#UC START# *4DC19432023E_4DC3A1A30235_impl*
 DoIncluded(aContext, l3Str(aString));
//#UC END# *4DC19432023E_4DC3A1A30235_impl*
end;//_tfwIncludeLike_.DoStringToken

{$IfEnd} //not NoScripts

{$EndIf tfwIncludeLike_imp}
