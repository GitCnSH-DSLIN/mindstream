// �� ����� ���� ��� Delphi

<<UMLCategory>> <<Program>> Program1
�������� Project1
 // �� ����� ���� ��� Delphi
 
 <<UMLClass>> <<Class>> Class1
 �������� Project1 Program1
 ; // Class1
 // �� ����� ���� ��� Delphi
 
 <<UMLClass>> <<Class>> Class2
 �������� Project1 Program1
 ����������� Class1
 ����������� Interface1 Interface2
 ; // Class2
 // �� ����� ���� ��� Delphi
 
 <<UMLClass>> <<Class>> Class3
 �������� Project1 Program1
 ; // Class3
 // �� ����� ���� ��� Delphi
 
 <<UMLClass>> <<Class>> Class4
 �������� Project1 Program1
 ����������� Class2 Class3
 ; // Class4
 // �� ����� ���� ��� Delphi
 
 <<UMLClass>> <<Class>> Class5
 �������� Project1 Program1
  // �� ����� ���� ��� Delphi
  
  <<UMLClass>> <<Const>> Constant1
  �������� Project1 Program1 Class5
  ; // Constant1
  // �� ����� ���� ��� Delphi
  
  <<UMLClass>> <<Const>> Constant2
  �������� Project1 Program1 Class5
  ; // Constant2
  // �� ����� ���� ��� Delphi
  
  <<UMLClass>> <<Class>> InnerClass1
  �������� Project1 Program1 Class5
  ; // InnerClass1
  // �� ����� ���� ��� Delphi
  
  <<UMLClass>> <<Class>> InnerClass2
  �������� Project1 Program1 Class5
  ; // InnerClass2
 ; // Class5
; // Program1
