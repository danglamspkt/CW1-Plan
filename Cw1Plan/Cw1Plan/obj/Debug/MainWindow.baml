   M S B A M L   `   `   `  ����B  >Cw1Plan, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:Cw1PlanCw1Plan  5   	   5clr-namespace:Cw1Plan.ViewModelCw1Plan.ViewModel  5
   	   ;"clr-namespace:Cw1Plan.UserControl1Cw1Plan.UserControl1  5   	       Cw1Plan.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Cw1Plan     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   ?dxmvvm2http://schemas.devexpress.com/winfx/2008/xaml/mvvm  5	   	   /	viewmodelclr-namespace:Cw1Plan.ViewModel  5
   	   +uc"clr-namespace:Cw1Plan.UserControl1  5   	   -   5          �Name$  
mainWindow��5   	   ���#f2f2f2$��Medium"�5   	   $��14(�5   	    
  MainVM � DataContext# [  5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ LUXSO��5   	   $	��800��5   	   $
��1500��5   	    � WindowStyle$
 None=�5   	   
 � Top$ 0��5   	    � WindowState$ 	Maximized=�5   	   ���	#FF2F49D8$	��0.5q�5   	   ��5   	   :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension  .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 5       6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 6$   �� *LoadedWindowCommand+   CommandParameter 5!   $   ��  �� ElementName$ 
mainWindow��5"      .��5$      �  � RowDefinitions 5%   
   �� 5&      $
��auto �6   �� 5'      .+�5)   
   � $��0��6   .+�5*      +   %Cw1Plan.UserControl1.ControlBarBaseUC  
 � Tag 6"   �� *Title+$ 
mainWindow��5+      � 5,   
   $��1��6   ��5-      �� 5.       �� ImageSource$ /PlanBackground.JPG��6    j� Stretch$ UniformToFill=�5/       �� Opacity$ 1Q�50      51      .+�53      � $��50q�6   .+�54      #  MaterialDesignThemes.Wpf.Card  .  (MaterialDesignThemes.Wpf.ElevationAssist   	Elevation$
 Dp24=�6&      UniformCornerRadius$ 40Q�55   &    J� Opacity$	 0.2Q�56   &   
�������58      �� 59      $��Center=�6   $��Center=�5:      .+�5;      �� -   5         ��Name$ 
btnKeHoach��5=      $	��100��5;      $	��100��5<      ���#009688$��10 10 10 10q�5A      $	��Top=�5B      +	  %MaterialDesignThemes.Wpf.ButtonAssist 	  CornerRadius$ 10��5C        MaterialDesignRaisedButton#��[ 5D       � ToolTip$3 -MaterialDesignRaisedButton with Round Corners��5E      ��5>      �� *Kehoachdata+��5?      �� $ UCMain��.��5F      '
  !MaterialDesignThemes.Wpf.PackIcon
  $��70��62   $��70��5G   2   $
��Left=�5H   2   $��Center=�5I   2   
������� 
  Kind$ CalendarEdit=�5K   2   5L      5M      �� 5N      $��Kế hoạch SX��6    $��20(�5O       
������ 
���   �$��Center=�5R       5T      5U      5W      5Z      5\      5]      