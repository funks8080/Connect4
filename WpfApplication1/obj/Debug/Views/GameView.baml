   M S B A M L   `   `   `  ����J  FWpfApplication1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:WpfApplication1.ViewsWpfApplication1.Views  5   	   G(clr-namespace:WpfApplication1.ConvertersWpfApplication1.Converters  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	   $    WpfApplication1.Views.GameView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:WpfApplication1.Views     5   	   ?
converters(clr-namespace:WpfApplication1.Converters     5   	   9system&clr-namespace:System;assembly=mscorlib     5   	   $	��850��5
   	   $	��900��6     � 	Resources  5      9   3WpfApplication1.Converters.MultiDimensionalCoverter   MultiDimensionalCoverter  0  1  2  3  4  5  6  7��%5  &	        &	      &	 ,     &	 E     &	 ^     &	 w     &	 �     &	 �     &	 �       5   
   6.   ��5   
   0��6$   ��5   
   1��6$   ��5   
   2��6$   ��5   
   3��6$   ��5   
   4��6$   ��5   
   5��6$   ��5   
   6��6$   ��5   
   7��6$   5      .��5      � -   5        $��	GameBoard��5      $��Center=�6   $��Center=�67    � ColumnDefinitions 5   
   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $	��100 �6    � RowDefinitions 5!   
   �� 5"      $	��100 �6   �� 5#      $	��100 �6   �� 5$      $	��100 �6   �� 5%      $	��100 �6   �� 5&      $	��100 �6   �� 5'      $	��100 �6   �� 5(      $��50 �6   �� 5)      $	��100 �6   .+�5+   
   �� -   5        $��Spot00��5+      $��0��6   $��0��6+   ��5,      `� 5-       `� 	Converter# [  6   .1�5.      ��  �� Path$ 	GameBoard�6   �� 5/       �� Source# [ 6   �� 50      # [ 6   51      53      �� 54   
   -   5        $��Spot01��54      $��0��6   $��1��6+   ��55      `� 56      # [  6   .1�57      �� $ 	GameBoard�6   �� 58      # [ 6   �� 59      # [ 6   5:      5<      �� 5=   
   -   5        $��Spot02��5=      $��0��6   $��2��6+   ��5>      `� 5?      # [  6   .1�5@      �� $ 	GameBoard�6   �� 5A      # [ 6   �� 5B      # [ 6   5C      5E      �� 5F   
   -   5        $��Spot03��5F      $��0��6   $��3��6+   ��5G      `� 5H      # [  6   .1�5I      �� $ 	GameBoard�6   �� 5J      # [ 6   �� 5K      # [ 6   5L      5N      �� 5O   
   -   5        $��Spot04��5O      $��0��6   $��4��6+   ��5P      `� 5Q      # [  6   .1�5R      �� $ 	GameBoard�6   �� 5S      # [ 6   �� 5T      # [ 6   5U      5W      �� 5X   
   -   5        $��Spot05��5X      $��0��6   $��5��6+   ��5Y      `� 5Z      # [  6   .1�5[      �� $ 	GameBoard�6   �� 5\      # [ 6   �� 5]      # [ 6   5^      5`      �� 5a   
   -   5        $��Spot06��5a      $��0��6   $��6��6+   ��5b      `� 5c      # [  6   .1�5d      �� $ 	GameBoard�6   �� 5e      # [ 6   �� 5f      # [ 6   5g      5i      �� 5j   
   -	   5        $��Spot10��5j      $��1��6   $��0��6+   ��5k      `� 5l      # [  6   .1�5m      �� $ 	GameBoard�6   �� 5n      # [ 6   �� 5o      # [ 6   5p      5r      �� 5s   
   -
   5        $��Spot11��5s      $��1��6   $��1��6+   ��5t      `� 5u      # [  6   .1�5v      �� $ 	GameBoard�6   �� 5w      # [ 6   �� 5x      # [ 6   5y      5{      �� 5|   
   -   5        $��Spot12��5|      $��1��6   $��2��6+   ��5}      `� 5~      # [  6   .1�5      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot13��5�      $��1��6   $��3��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot14��5�      $��1��6   $��4��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot15��5�      $��1��6   $��5��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot16��5�      $��1��6   $��6��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot20��5�      $��2��6   $��0��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot21��5�      $��2��6   $��1��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot22��5�      $��2��6   $��2��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot23��5�      $��2��6   $��3��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot24��5�      $��2��6   $��4��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot25��5�      $��2��6   $��5��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot26��5�      $��2��6   $��6��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot30��5�      $��3��6   $��0��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot31��5�      $��3��6   $��1��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5�      5�      �� 5�   
   -   5        $��Spot32��5�      $��3��6   $��2��6+   ��5�      `� 5�      # [  6   .1�5�      �� $ 	GameBoard�6   �� 5�      # [ 6   �� 5�      # [ 6   5      5     �� 5  
   -   5        $��Spot33��5     $��3��6   $��3��6+   ��5     `� 5     # [  6   .1�5     �� $ 	GameBoard�6   �� 5     # [ 6   �� 5     # [ 6   5	     5     �� 5  
   -   5        $��Spot34��5     $��3��6   $��4��6+   ��5     `� 5     # [  6   .1�5     �� $ 	GameBoard�6   �� 5     # [ 6   �� 5     # [ 6   5     5     �� 5  
   -   5        $��Spot35��5     $��3��6   $��5��6+   ��5     `� 5     # [  6   .1�5     �� $ 	GameBoard�6   �� 5     # [ 6   �� 5     # [ 6   5     5     �� 5  
   -   5        $��Spot36��5     $��3��6   $��6��6+   ��5     `� 5      # [  6   .1�5!     �� $ 	GameBoard�6   �� 5"     # [ 6   �� 5#     # [ 6   5$     5&     �� 5'  
   -   5        $��Spot40��5'     $��4��6   $��0��6+   ��5(     `� 5)     # [  6   .1�5*     �� $ 	GameBoard�6   �� 5+     # [ 6   �� 5,     # [ 6   5-     5/     �� 50  
   -   5        $��Spot41��50     $��4��6   $��1��6+   ��51     `� 52     # [  6   .1�53     �� $ 	GameBoard�6   �� 54     # [ 6   �� 55     # [ 6   56     58     �� 59  
   -    5        $��Spot42��59     $��4��6   $��2��6+   ��5:     `� 5;     # [  6   .1�5<     �� $ 	GameBoard�6   �� 5=     # [ 6   �� 5>     # [ 6   5?     5A     �� 5B  
   -!   5        $��Spot43��5B     $��4��6   $��3��6+   ��5C     `� 5D     # [  6   .1�5E     �� $ 	GameBoard�6   �� 5F     # [ 6   �� 5G     # [ 6   5H     5J     �� 5K  
   -"   5        $��Spot44��5K     $��4��6   $��4��6+   ��5L     `� 5M     # [  6   .1�5N     �� $ 	GameBoard�6   �� 5O     # [ 6   �� 5P     # [ 6   5Q     5S     �� 5T  
   -#   5        $��Spot45��5T     $��4��6   $��5��6+   ��5U     `� 5V     # [  6   .1�5W     �� $ 	GameBoard�6   �� 5X     # [ 6   �� 5Y     # [ 6   5Z     5\     �� 5]  
   -$   5        $��Spot46��5]     $��4��6   $��6��6+   ��5^     `� 5_     # [  6   .1�5`     �� $ 	GameBoard�6   �� 5a     # [ 6   �� 5b     # [ 6   5c     5e     �� 5f  
   -%   5        $��Spot50��5f     $��5��6   $��0��6+   ��5g     `� 5h     # [  6   .1�5i     �� $ 	GameBoard�6   �� 5j     # [ 6   �� 5k     # [ 6   5l     5n     �� 5o  
   -&   5        $��Spot51��5o     $��5��6   $��1��6+   ��5p     `� 5q     # [  6   .1�5r     �� $ 	GameBoard�6   �� 5s     # [ 6   �� 5t     # [ 6   5u     5w     �� 5x  
   -'   5        $��Spot52��5x     $��5��6   $��2��6+   ��5y     `� 5z     # [  6   .1�5{     �� $ 	GameBoard�6   �� 5|     # [ 6   �� 5}     # [ 6   5~     5�     �� 5�  
   -(   5        $��Spot53��5�     $��5��6   $��3��6+   ��5�     `� 5�     # [  6   .1�5�     �� $ 	GameBoard�6   �� 5�     # [ 6   �� 5�     # [ 6   5�     5�     �� 5�  
   -)   5        $��Spot54��5�     $��5��6   $��4��6+   ��5�     `� 5�     # [  6   .1�5�     �� $ 	GameBoard�6   �� 5�     # [ 6   �� 5�     # [ 6   5�     5�     �� 5�  
   -*   5        $��Spot55��5�     $��5��6   $��5��6+   ��5�     `� 5�     # [  6   .1�5�     �� $ 	GameBoard�6   �� 5�     # [ 6   �� 5�     # [ 6   5�     5�     �� 5�  
   -+   5        $��Spot56��5�     $��5��6   $��6��6+   ��5�     `� 5�     # [  6   .1�5�     �� $ 	GameBoard�6   �� 5�     # [ 6   �� 5�     # [ 6   5�     5�     �� 5�  
   -,   5        $��DropColumn0��5�     
 � Tag$ 0��6$   $��
Drop Piece��6,   $��6��6A   $��0��6N   $��0��6~   $��Center=�6�   $��Center=�6�   {�. ��6^   �� *DropCommand+6�   �� 5�  
   --   5        $��DropColumn1��5�     $ 1��6$   $��
Drop Piece��6,   $��6��6A   $��1��6N   $��1��6~   $��Center=�6�   $��Center=�6�   ��6^   �� *DropCommand+6�   �� 5�  
   -.   5        $��DropColumn2��5�     $ 2��6$   $��
Drop Piece��6,   $��6��6A   $��2��6N   $��2��6~   $��Center=�6�   $��Center=�6�   ��6^   �� *DropCommand+6�   �� 5�  
   -/   5        $��DropColumn3��5�     $ 3��6$   $��
Drop Piece��6,   $��6��6A   $��3��6N   $��3��6~   $��Center=�6�   $��Center=�6�   ��6^   �� *DropCommand+6�   �� 5�  
   -0   5        $��DropColumn4��5�     $ 4��6$   $��
Drop Piece��6,   $��6��6A   $��4��6N   $��4��6~   $��Center=�6�   $��Center=�6�   ��6^   �� *DropCommand+6�   �� 5�  
   -1   5        $��DropColumn5��5�     $ 5��6$   $��
Drop Piece��6,   $��6��6A   $��5��6N   $��5��6~   $��Center=�6�   $��Center=�6�   ��6^   �� *DropCommand+6�   �� 5�  
   -2   5        $��DropColumn6��5�     $ 6��6$   $��
Drop Piece��6,   $��6��6A   $��6��6N   $��6��6~   $��Center=�6�   $��Center=�6�   ��6^   �� *DropCommand+6�   �� 5�  
   -3   5        $��Reset��5�     $ 7��6   $��Reset��6&   $��7��66   $��3��6C   $��Center=�6t   $��Center=�6�   ��6S   �� *ResetCommand+6�   � 5�  
   $��7��6   $��1��6!   $	��100��61   .+�5�     �� -4   5        $��
ScoreLabel��5�     $��Score:��6&   $��24(�67   $
��Bold"�6E   $
��Left=�6W   $��0q�6r   �� 5�     -5   5        $��P1ScoreLabel��5�     $��Player 1 - ��6(   $��12(�6>   $��20 0 0 0q�6L   �� 5�     -6   5        $��P1Score��5�     $��12(�6E    �� Padding$ 0q�6S   ��6'   �� *Player1Score+6S   �� 5�     -7   5        $��P2ScoreLabel��5�     $��Player 2 - ��6(   $��12(�6>   $��20 0 0 0q�6L   �� 5�     -8   5        $��P2Score��5�     $��12(�6E   $ 0q�6S   ��6'   �� *Player2Score+6S   5�     5�     5�     