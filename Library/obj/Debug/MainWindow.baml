   M S B A M L   `   `   `  ����B  >Library, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:LibraryLibrary  5   	       Library.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Library     5   	   k gTelerik.Windows.Controls.Input, Version=2017.1.117.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2017.1.117.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2017.1.117.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n jTelerik.Windows.Controls.GridView, Version=2017.1.117.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Etelerik1http://schemas.telerik.com/2008/xaml/presentation     5   	   -   5          � Title$  
Biblioteka��5	   	   $��833.787��6   $��1279.102��6-    � WindowStartupLocation$ CenterScreen=�6U    � 	Resources 5
       �� 
TargetType �� Property �� Value*  $Telerik.Windows.Controls.RadGridView8  2Telerik.Windows.Controls.GridView.BaseItemsControl;  5Telerik.Windows.Controls.GridView.GridViewDataControl   Library.LibraryDataSet   libraryDataSet  borrowerRuleViewSource �� Source �� Source��%�  '�       '  p     &	  B    &	 U    7   �� 5   
   " �6   .�5      ��  � ��$ Tahoma)�6+   �� 5       � ��$ 16(�6)   5      �� 5   
   "  6   .�5      ��  � ��$ 5q�6'   �� 5       � ��$
 Left=�64   �� 5       �@ AlternationCount$ 2��61   �� 5       �@ ShowGroupPanel .  6/   �� 5       �@ IsFilteringAllowed .  63   �� 5       �@ RowIndicatorVisibility$ 	Collapsed=�67   �� 5       �@ 
IsReadOnly . 6+   �� 5       �@ AutoGenerateColumns .  64   �� 5      ' �@ FrozenColumnsSplitterVisibility$ 	Collapsed=�6@   �� 5       �@ CanUserSortColumns .  63   �� 5       �@ CanUserReorderColumns .  66   �� 5       �@ CanUserResizeColumns .  65   �� 5       �@ CanUserFreezeColumns .  65   5        5   
   6   �� 5   
    6>   �� *BorrowerRule+8   5       .��5"      � .+�5#   
   �� $��RightToLeft=�6   $��31��61    �� Orientation$ 
Horizontal=�6=   $��10,10,10,10q�6V   $	��Top=�6k   #��� ��6�   .+�5$      �� -   5        	 ��Name$	 	btnLogOut��5$      $��
Izloguj se��6(   $��Center=�6>   $��31��6Y   $��Right=�6e   $��86��6�   ��6�   Z� ��5%      �� 5&      
 �� Color#
 � ��6&   5(      �� 5)      -   5         ��Name$ lblUser��5)      $��LeftToRight=�6%   $	��---��6A   $	��100��6O   $
��Left=�6^   �� 5*      -   5        $ lblUserReadOnly��5*      $��LeftToRight=�6-   $��
Korisnik: ��6I   $
��Bold"�6^   $��Right=�6p   5+      �� 5.   
   -   5         ��Name$ 
tabControl��5.      $��10,50,10,10q�6)   .@�5/      �� $��Knjige��6   $��70��6&   .��50      � ���	#FFE5E5E5$��0,0,0,0q�6.    � DataContext# [ 6?   .+�52      &   System.Windows.Controls.DataGrid  -   5          Name$ borrowerRuleDataGrid��53      $
��Auto��54         AutoGenerateColumns .     EnableRowVirtualization . $��29,31,816,561q�57   1      RowDetailsVisibilityMode$ VisibleWhenSelected=�58         CanUserAddRows .     CanUserReorderColumns .  ��57      ��    Columns 5;      0  *System.Windows.Controls.DataGridTextColumn  5<      -   5        borrowerRule_PKColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Borrower Rule PK��5<   t      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6�   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6P   �� *BorrowerRule_PK+6�     5=      -   5        
nameColumn��$
 Name��5=   ^    . $
 Auto 6~    6E   �� *Name+6~     5>      -	   5        designationColumn�� . $ Designation��5>   ~   $
 Auto 6�    6L   �� *Designation+6�   5@      �� 5C      -
   5        $%	 btnInsertBorrowerRuleAndRefresh��5C      $��Insert and load��6F   $
��Left=�6`   $��
470,93,0,0q�6{   $	��Top=�6�   $	��124��6�   6�   2
  ,Telerik.Windows.Controls.RadWatermarkTextBox
  5D      -   5         
 Name$ radWatermarkTextBoxName��5D   2    
  WatermarkContent$
 Name��6S   $
��Left=�6k   $��
470,33,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��237��6�   
  5E      -   5        $$ radWatermarkTextBoxDesignation��5E   2   $ Designation��6[   $
��Left=�6z   $��
470,63,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��237��6�     5G      -   5        $ dataGridNew��5H      $	��381��5K      $
��Left=�5L      $��470,307,0,0q�5M      $	��Top=�5N      $	��181��5O       .  ��5I      �� *BorrowerList+ �� SelectedItem 5J      �� *Probni+ 5Q        5R      -   5        nColumn��$
 Name��5R   [   $ SizeToHeader 6i    6B   �� *Name+6i     5S      -   5        dColumn��$ Designation��5S   b   $ SizeToHeader 6w    6B   �� *Designation+6w   5U      �� 5W      -   5        $	 button��5W      $��Delete��6-   $
��Left=�6>   $��470,509,0,0q�6Y   $	��Top=�6n   $	��158��6�   6�     5X      -   5        $��klisa��5Y      $
��Left=�5Z      $��
29,243,0,0q�5[      $	��Top=�5\      $	��289��5]      $	��365��5^         AutoGenerateColumns .     ShowGroupPanel .  *  $Telerik.Windows.Controls.DataControl   ItemsSource 5`      �� *BorrowerList+    SelectedItem  5a      �� *Probni+!   Columns! 5c      1  +Telerik.Windows.Controls.GridViewDataColumn  5d      6  0Telerik.Windows.Controls.GridViewBoundColumnBase"   Header$" Naziv��6X   #   DataMemberBinding# 65   �� *Name+6X     5e      $" Oznaka��6_   # 65   �� *Designation+6_   5g      5h      5i      �� 5j      $��Članovi��6   $��70��6'   .��5k      � ���	#FFE5E5E56   5l      5m      5o      5p      