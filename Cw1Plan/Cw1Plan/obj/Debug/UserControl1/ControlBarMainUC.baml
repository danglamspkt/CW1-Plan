   M S B A M L   `   `   `  ����B  >Cw1Plan, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Cw1Plan.UserControl1Cw1Plan.UserControl1  5      5clr-namespace:Cw1Plan.ViewModelCw1Plan.ViewModel  5
      +    %Cw1Plan.UserControl1.ControlBarMainUC   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:Cw1Plan.UserControl1     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      /	viewmodelclr-namespace:Cw1Plan.ViewModel  5
      -   5        $��ucControlBar��5         CBVM  � DataContext#  [  5      .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ MouseLeftButtonDown��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *MouseMoveWindowCommand+   CommandParameter 6O   ��  �� ElementName$ ucControlBar��5      .��5      � .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  ���#262624.��5      ]� .+�5      �� $��Right=�6   
������  �� Orientation$ 
Horizontal=�6N    � 	Resources 5      	 �� 
TargetType
 �� Property �� Value��%�   '��       �� 5      "	 ��6    .�5      �� 
 � ��$ 2 4 2 4q�67   6I   �� 5      
 � ��$ 40��66   6C   5      5      .+�5      ��  � ToolTip$ Đóng��5        c� OverflowMode$ AsNeeded=�6)   
������ 
������ ���#f2f2f2��5      �� *MinimizeWindowCommand+��5      �� $ ucControlBar��.��5!      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�62   5"      �� 5#      $ Đóng��5%      $ AsNeeded=�6)   
������ 
������ ���#f2f2f2��5#      �� *MaximizeWindowCommand+��5$      �� $ ucControlBar��.��5&        $ WindowMaximize=�62   5'      �� 5(      $ Đóng��5*      $ AsNeeded=�6-   
������ 
������ ���#f2f2f2��5(      �� *CloseWindowCommand+��5)      �� $ ucControlBar��.��5+        $ WindowClose=�62   5,      5-      �� 5/      $
��Left=�6   $ 
Horizontal=�63   .+�50      �� $F��@https://drive.google.com/uc?id=11pEWHgVMSe_1r5i2l5S0awHz3wKz-WWP��6   $��28��6f   6t   �� 51      $��Center=�6    $��16 0 0 0q�6;   ��6M   �� *Tag+$ ucControlBar��6~   52      53      54      55      56      