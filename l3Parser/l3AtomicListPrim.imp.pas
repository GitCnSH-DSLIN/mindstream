{$IfNDef l3AtomicListPrim_imp}
 
{$Define l3AtomicListPrim_imp}
 {$Define l3Items_IsAtomic}
 { ����������, ��� �������� ������ - ��������� }

 _l3UnrefcountedList_Parent_ = _l3AtomicListPrim_Parent_;
 {$Include l3UnrefcountedList.imp.pas}
 _l3AtomicListPrim_ = {mixin} class(_l3UnrefcountedList_)
  {* ������ ��������� ��������� }
 end;//_l3AtomicListPrim_

{$Else l3AtomicListPrim_imp}


{$Include l3UnrefcountedList.imp.pas}


{$EndIf l3AtomicListPrim_imp}
