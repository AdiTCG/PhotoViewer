   M S B A M L   `   `   `  ����  Image Viewer    Image_Viewer.MainWindow   5      \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    8x,http://schemas.microsoft.com/winfx/2006/xaml    5      -   5          �Name$  Window��5       � Title$	 AIV��5      $	��640��5      $	��480��6    � 	Resources 5         ButtonStyle1 �� 
TargetType �� Property �� Value �� 
TargetType � 	Resources  Key �� TargetProperty	 �� 
TargetName
 O� KeyTime O� Value �Name J� RenderTransformOrigin J� SnapsToDevicePixels �� Triggers P� Property P� Value N� ExitActions ��Name  Storyboard2 N� EnterActions  Storyboard1  ButtonStyle2��%J  &	        7  7  &	     7  7  �� 5	      " ��6   .�5
      ��  � �� 5      �� 5      " ��6    5      ���� 5   	   Storyboard1 .��5   
   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6(   $
	 grid��6�   .\�5      �� $
 0:0:0.1��6    $
 1.25Q�62   5      U� 5   
   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6(   $
	 grid��6�   .\�5      �� $
 0:0:0.1��6    $
 1.25Q�62   5      5   
   �� 5   	   Storyboard2 .��5   
   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6(   $
	 grid��6�   .\�5      �� $
 0:0:0.1��6    $ 1Q�62   5      U� 5   
   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6(   $
	 grid��6�   .\�5      �� $
 0:0:0.1��6    $ 1Q�62   5      5   
   5   	   .R�5      � $
 grid��6   $ 0.5,0.5&�6   z�5    	   V� 5!   
   .~�5"      �� �� 5#      �� 5$      T� 5%      5&      .+�5(   	   �� $��Folder_Open.png��6   �� 5)   	   #��z��6   ��. # z 6x   #��z��6�   $�� ��6�   5*   	    5+      P� 5,   	    �@J�	IsFocused . 6&   P� 5-   	    �@��IsDefaulted . 6(   P� 5.   	    �@J�IsMouseOver .  5/   
   �� 50      $! Storyboard2_BeginStoryboard��6   8��  6@    52   
   �� 53      8�� 6   55   
   P� 56   	    � �� . 6&   P� 57   	    � {� .  6&   59      5;      5<      �� 5=      " ��6   .�5>      ��  � �� 5?      �� 5@      " ��6    5A      ���� 5B   	   Storyboard1 .��5C   
   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6(   $
	 grid��6�   .\�5D      �� $
 0:0:0.1��6    $
 1.25Q�62   5E      U� 5F   
   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6(   $
	 grid��6�   .\�5G      �� $
 0:0:0.1��6    $
 1.25Q�62   5H      5I   
   �� 5J   	   Storyboard2 .��5K   
   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6(   $
	 grid��6�   .\�5L      �� $
 0:0:0.1��6    $ 1Q�62   5M      U� 5N   
   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6(   $
	 grid��6�   .\�5O      �� $
 0:0:0.1��6    $ 1Q�62   5P      5Q   
   5R   	   .R�5S      � $
 grid��6   $ 0.5,0.5&�6   z�5T   	   V� 5U   
   .~�5V      �� �� 5W      �� 5X      T� 5Y      5Z      .+�5\   	   �� $��generic_picture.png��6   �� 5]   	   #��z��6   ��. # z 6x   #��z��6�   $�� ��6�   5^   	    5_      P� 5`   	    �@J�	IsFocused . 6&   P� 5a   	    �@��IsDefaulted . 6(   P� 5b   	    �@J�IsMouseOver .  5c   
   �� 5d      $! Storyboard2_BeginStoryboard��6   8��  6@    5f   
   �� 5g      8�� 6   5i   
   P� 5j   	    � �� . 6&   P� 5k   	    � {� .  6&   5m      5o      5p      5q      ��5r      �� 5s       �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6)   .��5t      �  � Color$ White��6    � Offset$ 0Q�6    � 5u      $ 	#FF9D9D9D��6   $ 1Q�6$   5v      .��5y      � -   5        $ 
LayoutRoot��5y      .+�5z      (� $��15,15,15,60q�6    (� Stretch$
 Fill=�6!   .��5{      �� -   5         ��Name$ 	ImgCanvas��5{      }�. $	��371��63   $	��602��6@   .+�5|      �� -   5         ��Name$ ImgContentCtrl��5|      $	��371��6-   $	��602��6:    �� Left$ 0��6F   
 �� Top$ 0��6V   .��5}      � -   5        $ ImgGrid��5}      .+�5~      �� -   5         ��Name$ 	ImgObject��5~      n� 5      -   5         n�Name$	 Img��5        J� Opacity$  0Q�6   6A   5�      5�      5�      5�      �� 5�      -   5        ! ��Name$! 
OpenButton��5�      $��Button��6   $
��Left=�60   $��36��6K   $��34,0,0,8q�6W   #���   6i   $��Bottom=�6�   $��40��6�   " � ToolTip$" 	Open File��6�   6�   �� 5�      -	   5        $! BestFitButton��5�      $��Button��6"   $
��Left=�63   $��36��6N   $��	94,0,0,11q�6Z   #���   6m   $��Bottom=�6�   $��40��6�   $" Best Fit��6�   6�   5�      5�      