FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

Script by Philip Hutchison, April 2013
http://pipwerks.com
MIT license http://pipwerks.mit-license.org/

This script assumes:

1. You have a folder named "Wallpapers" in your Pictures folder
2. You have a subfolder named "Time of Day" in Wallpapers
3. You have six subfolders inside "Time of Day", with names that match the variables below. 
   * If you decide to use different folder names, you must change the variables to match the new folder names
4. You have images inside each folder

For example:
/Users/YOUR_USER_NAME/Pictures/Wallpapers/Time of Day/Afternoon Early/image.jpg

GeekTool can execute this script for you at specified intervals. Use this line in the command field:
osascript ~/Pictures/Wallpapers/Time\ of\ Day/wallpaper.scpt

     � 	 	� 
 
 S c r i p t   b y   P h i l i p   H u t c h i s o n ,   A p r i l   2 0 1 3 
 h t t p : / / p i p w e r k s . c o m 
 M I T   l i c e n s e   h t t p : / / p i p w e r k s . m i t - l i c e n s e . o r g / 
 
 T h i s   s c r i p t   a s s u m e s : 
 
 1 .   Y o u   h a v e   a   f o l d e r   n a m e d   " W a l l p a p e r s "   i n   y o u r   P i c t u r e s   f o l d e r 
 2 .   Y o u   h a v e   a   s u b f o l d e r   n a m e d   " T i m e   o f   D a y "   i n   W a l l p a p e r s 
 3 .   Y o u   h a v e   s i x   s u b f o l d e r s   i n s i d e   " T i m e   o f   D a y " ,   w i t h   n a m e s   t h a t   m a t c h   t h e   v a r i a b l e s   b e l o w .   
       *   I f   y o u   d e c i d e   t o   u s e   d i f f e r e n t   f o l d e r   n a m e s ,   y o u   m u s t   c h a n g e   t h e   v a r i a b l e s   t o   m a t c h   t h e   n e w   f o l d e r   n a m e s 
 4 .   Y o u   h a v e   i m a g e s   i n s i d e   e a c h   f o l d e r 
 
 F o r   e x a m p l e : 
 / U s e r s / Y O U R _ U S E R _ N A M E / P i c t u r e s / W a l l p a p e r s / T i m e   o f   D a y / A f t e r n o o n   E a r l y / i m a g e . j p g 
 
 G e e k T o o l   c a n   e x e c u t e   t h i s   s c r i p t   f o r   y o u   a t   s p e c i f i e d   i n t e r v a l s .   U s e   t h i s   l i n e   i n   t h e   c o m m a n d   f i e l d : 
 o s a s c r i p t   ~ / P i c t u r e s / W a l l p a p e r s / T i m e \   o f \   D a y / w a l l p a p e r . s c p t 
 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��      BEGIN USER CONFIGURATION     �   2   B E G I N   U S E R   C O N F I G U R A T I O N      l     ��������  ��  ��        l     ��  ��      supply folder names     �   (   s u p p l y   f o l d e r   n a m e s      l     ����  r         m        �      B r e a k f a s t  o      ���� 0 havebreakfast haveBreakfast��  ��     ! " ! l    #���� # r     $ % $ m     & & � ' ' 
 L e a r n % o      ���� 0 timetolearn timeToLearn��  ��   "  ( ) ( l    *���� * r     + , + m    	 - - � . .  W o r k , o      ���� 0 
timetowork 
timeToWork��  ��   )  / 0 / l    1���� 1 r     2 3 2 m     4 4 � 5 5 
 L u n c h 3 o      ���� 0 	havelunch 	haveLunch��  ��   0  6 7 6 l    8���� 8 r     9 : 9 m     ; ; � < <  K e e p   i n   T o u c h : o      ���� 0 keepintouch keepInTouch��  ��   7  = > = l    ?���� ? r     @ A @ m     B B � C C  D i n n e r A o      ���� 0 
havedinner 
haveDinner��  ��   >  D E D l    F���� F r     G H G m     I I � J J  N o   S c r e e n s H o      ���� 0 	noscreens 	noScreens��  ��   E  K L K l    M���� M r     N O N m     P P � Q Q  G o   t o   S l e e p O o      ���� 0 	gotosleep 	goToSleep��  ��   L  R S R l     ��������  ��  ��   S  T U T l     �� V W��   V $  for multiple monitor support.    W � X X <   f o r   m u l t i p l e   m o n i t o r   s u p p o r t . U  Y Z Y l     �� [ \��   [ i c set to true to display the same image on all desktops, false to show unique images on each desktop    \ � ] ] �   s e t   t o   t r u e   t o   d i s p l a y   t h e   s a m e   i m a g e   o n   a l l   d e s k t o p s ,   f a l s e   t o   s h o w   u n i q u e   i m a g e s   o n   e a c h   d e s k t o p Z  ^ _ ^ l    % `���� ` r     % a b a m     !��
�� boovtrue b o      ���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays��  ��   _  c d c l     ��������  ��  ��   d  e f e l     �� g h��   g   END USER CONFIGURATION    h � i i .   E N D   U S E R   C O N F I G U R A T I O N f  j k j l     ��������  ��  ��   k  l m l l     ��������  ��  ��   m  n o n l     ��������  ��  ��   o  p q p l     �� r s��   r   get current hour    s � t t "   g e t   c u r r e n t   h o u r q  u v u l  & 3 w���� w r   & 3 x y x n   & / z { z 1   + /��
�� 
hour { l  & + |���� | I  & +������
�� .misccurdldt    ��� null��  ��  ��  ��   y o      ���� 0 h  ��  ��   v  } ~ } l     ��������  ��  ��   ~   �  l     �� � ���   �   set default periodOfDay    � � � � 0   s e t   d e f a u l t   p e r i o d O f D a y �  � � � l  4 9 ����� � r   4 9 � � � o   4 5���� 0 havebreakfast haveBreakfast � o      ���� 0 periodofday periodOfDay��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 change value of periodOfDay based on current time    � � � � d   c h a n g e   v a l u e   o f   p e r i o d O f D a y   b a s e d   o n   c u r r e n t   t i m e �  � � � l  :m ����� � Z   :m � � ��� � l  : O ����� � F   : O � � � @   : A � � � o   : =���� 0 h   � m   = @����  � A   D K � � � o   D G���� 0 h   � m   G J���� ��  ��   � r   R W � � � o   R S���� 0 havebreakfast haveBreakfast � o      ���� 0 periodofday periodOfDay �  � � � l  Z o ����� � F   Z o � � � @   Z a � � � o   Z ]���� 0 h   � m   ] `����  � A   d k � � � o   d g���� 0 h   � m   g j���� ��  ��   �  � � � r   r w � � � o   r s���� 0 timetolearn timeToLearn � o      ���� 0 periodofday periodOfDay �  � � � l  z � ����� � F   z � � � � @   z � � � � o   z }���� 0 h   � m   } �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � o   � ����� 0 
timetowork 
timeToWork � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � o   � ����� 0 timetolearn timeToLearn � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � o   � ����� 0 	havelunch 	haveLunch � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ��� 0 h   � m   � ��~�~ ��  ��   �  � � � r   � � � � � o   � ��}�} 0 
timetowork 
timeToWork � o      �|�| 0 periodofday periodOfDay �  � � � l  � ��{�z � F   � � � � @   � � � � o   � ��y�y 0 h   � m   � �x�x  � A   � � � o  �w�w 0 h   � m  
�v�v �{  �z   �  � � � r   � � � o  �u�u 0 keepintouch keepInTouch � o      �t�t 0 periodofday periodOfDay �  � � � l / ��s�r � F  / � � � @  ! � � � o  �q�q 0 h   � m   �p�p  � A  $+ � � � o  $'�o�o 0 h   � m  '*�n�n �s  �r   �  � � � r  27 � � � o  23�m�m 0 
havedinner 
haveDinner � o      �l�l 0 periodofday periodOfDay �  � � � l :O ��k�j � F  :O � � � @  :A �  � o  :=�i�i 0 h    m  =@�h�h  � A  DK o  DG�g�g 0 h   m  GJ�f�f �k  �j   �  r  RW o  RS�e�e 0 	noscreens 	noScreens o      �d�d 0 periodofday periodOfDay  l Za	�c�b	 @  Za

 o  Z]�a�a 0 h   m  ]`�`�` �c  �b   �_ r  di o  de�^�^ 0 	gotosleep 	goToSleep o      �]�] 0 periodofday periodOfDay�_  ��  ��  ��   �  l     �\�[�Z�\  �[  �Z    l     �Y�Y   ; 5 helper function ("handler") for getting random image    � j   h e l p e r   f u n c t i o n   ( " h a n d l e r " )   f o r   g e t t i n g   r a n d o m   i m a g e  i      I      �X�W�X 0 getimage getImage �V o      �U�U 0 
foldername 
folderName�V  �W   k       l     �T�S�R�T  �S  �R     O     !"! L    ## c    $%$ n    &'& 3    �Q
�Q 
file' n    ()( 4    �P*
�P 
cfol* l   +�O�N+ b    ,-, m    	.. �// @ P i c t u r e s : W a l l p a p e r s : T i m e   o f   D a y :- o   	 
�M�M 0 
foldername 
folderName�O  �N  ) 1    �L
�L 
home% m    �K
�K 
ctxt" m     00�                                                                                  MACS  alis    t  Macintosh HD               Σ�H+   
Finder.app                                                      ,"�`�        ����  	                CoreServices    Τ(�      �`D         6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��    1�J1 l   �I�H�G�I  �H  �G  �J   232 l     �F�E�D�F  �E  �D  3 454 l     �C�B�A�C  �B  �A  5 676 l n
8�@�?8 O  n
9:9 k  t	;; <=< l tt�>�=�<�>  �=  �<  = >?> l tt�;@A�;  @ 3 - wrapped in a try block for error suppression   A �BB Z   w r a p p e d   i n   a   t r y   b l o c k   f o r   e r r o r   s u p p r e s s i o n? CDC Q  tEF�:E k  w�GG HIH l ww�9�8�7�9  �8  �7  I JKJ l ww�6LM�6  L 6 0 determine which picture to use for main display   M �NN `   d e t e r m i n e   w h i c h   p i c t u r e   t o   u s e   f o r   m a i n   d i s p l a yK OPO r  w�QRQ n wSTS I  x�5U�4�5 0 getimage getImageU V�3V o  x{�2�2 0 periodofday periodOfDay�3  �4  T  f  wxR o      �1�1 (0 maindisplaypicture mainDisplayPictureP WXW l ���0�/�.�0  �/  �.  X YZY l ���-[\�-  [ = 7 set the picture for additional monitors, if applicable   \ �]] n   s e t   t h e   p i c t u r e   f o r   a d d i t i o n a l   m o n i t o r s ,   i f   a p p l i c a b l eZ ^_^ O  ��`a` k  ��bb cdc l ���,�+�*�,  �+  �*  d efe l ���)gh�)  g &   get a reference to all desktops   h �ii @   g e t   a   r e f e r e n c e   t o   a l l   d e s k t o p sf jkj r  ��lml N  ��nn 2  ���(
�( 
dskpm o      �'�' 0 thedesktops theDesktopsk opo l ���&�%�$�&  �%  �$  p qrq l ���#st�#  s !  handle additional desktops   t �uu 6   h a n d l e   a d d i t i o n a l   d e s k t o p sr vwv Z  ��xy�"�!x l ��z� �z ?  ��{|{ l ��}��} I ���~�
� .corecnte****       ****~ o  ���� 0 thedesktops theDesktops�  �  �  | m  ���� �   �  y k  �� ��� l ������  �  �  � ��� l ������  � D > loop through all desktops (beginning with the second desktop)   � ��� |   l o o p   t h r o u g h   a l l   d e s k t o p s   ( b e g i n n i n g   w i t h   t h e   s e c o n d   d e s k t o p )� ��� Y  �������� k  ���� ��� l ������  �  �  � ��� l ������  � #  determine which image to use   � ��� :   d e t e r m i n e   w h i c h   i m a g e   t o   u s e� ��� Z  ������� l ������ = ����� o  ���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays� m  ���

�
 boovfals�  �  � r  ����� n ����� I  ���	���	 0 getimage getImage� ��� o  ���� 0 periodofday periodOfDay�  �  �  f  ��� o      �� 20 secondarydisplaypicture secondaryDisplayPicture�  � r  ����� n ����� o  ���� (0 maindisplaypicture mainDisplayPicture�  f  ��� o      �� 20 secondarydisplaypicture secondaryDisplayPicture� ��� l ����� �  �  �   � ��� l ��������  �   apply image to desktop   � ��� .   a p p l y   i m a g e   t o   d e s k t o p� ��� r  ����� o  ������ 20 secondarydisplaypicture secondaryDisplayPicture� n      ��� 1  ����
�� 
picP� n  ����� 4  �����
�� 
cobj� o  ������ 0 x  � l �������� o  ������ 0 thedesktops theDesktops��  ��  � ���� l ����������  ��  ��  ��  � 0 x  � m  ������ � l �������� I �������
�� .corecnte****       ****� o  ������ 0 thedesktops theDesktops��  ��  ��  �  � ���� l ����������  ��  ��  ��  �"  �!  w ���� l ����������  ��  ��  ��  a m  �����                                                                                  sevs  alis    �  Macintosh HD               Σ�H+   System Events.app                                               ���A��        ����  	                CoreServices    Τ(�      �A�9         =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  _ ��� l ����������  ��  ��  � ��� l ��������  � ( " set the primary monitor's picture   � ��� D   s e t   t h e   p r i m a r y   m o n i t o r ' s   p i c t u r e� ��� l ��������  � R L due to a Finder quirk, this has to be done AFTER setting the other displays   � ��� �   d u e   t o   a   F i n d e r   q u i r k ,   t h i s   h a s   t o   b e   d o n e   A F T E R   s e t t i n g   t h e   o t h e r   d i s p l a y s� ��� r  ����� o  ������ (0 maindisplaypicture mainDisplayPicture� 1  ����
�� 
dpic� ���� l ����������  ��  ��  ��  F R      ������
�� .ascrerr ****      � ****��  ��  �:  D ���� l ��������  ��  ��  ��  : m  nq���                                                                                  MACS  alis    t  Macintosh HD               Σ�H+   
Finder.app                                                      ,"�`�        ����  	                CoreServices    Τ(�      �`D         6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �@  �?  7 ���� l     ��������  ��  ��  ��       �����  & - 4 ; B I P���� ������  � ���������������������������������� 0 getimage getImage
�� .aevtoappnull  �   � ****�� 0 havebreakfast haveBreakfast�� 0 timetolearn timeToLearn�� 0 
timetowork 
timeToWork�� 0 	havelunch 	haveLunch�� 0 keepintouch keepInTouch�� 0 
havedinner 
haveDinner�� 0 	noscreens 	noScreens�� 0 	gotosleep 	goToSleep�� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays�� 0 h  �� 0 periodofday periodOfDay�� (0 maindisplaypicture mainDisplayPicture�� 0 thedesktops theDesktops��  � ������������ 0 getimage getImage�� ����� �  ���� 0 
foldername 
folderName��  � ���� 0 
foldername 
folderName� 0����.����
�� 
home
�� 
cfol
�� 
file
�� 
ctxt�� � *�,��%/�.�&UOP� �����������
�� .aevtoappnull  �   � ****� k    
��  ��  !��  (��  /��  6��  =��  D��  K��  ^��  u��  ���  ��� 6����  ��  ��  � ���� 0 x  � . �� &�� -�� 4�� ;�� B�� I�� P�������������������������������������������������������������� 0 havebreakfast haveBreakfast�� 0 timetolearn timeToLearn�� 0 
timetowork 
timeToWork�� 0 	havelunch 	haveLunch�� 0 keepintouch keepInTouch�� 0 
havedinner 
haveDinner�� 0 	noscreens 	noScreens�� 0 	gotosleep 	goToSleep�� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays
�� .misccurdldt    ��� null
�� 
hour�� 0 h  �� 0 periodofday periodOfDay�� �� 
�� 
bool�� �� �� �� �� �� �� �� �� �� 0 getimage getImage�� (0 maindisplaypicture mainDisplayPicture
�� 
dskp�� 0 thedesktops theDesktops
�� .corecnte****       ****�� 20 secondarydisplaypicture secondaryDisplayPicture
�� 
cobj
�� 
picP
�� 
dpic��  ��  ���E�O�E�O�E�O�E�O�E�O�E�O�E�O�E�OeE` O*j a ,E` O�E` O_ a 	 _ a a & 
�E` Y_ a 	 _ a a & 
�E` Y �_ a 	 _ a a & 
�E` Y �_ a 	 _ a a & 
�E` Y �_ a 	 _ a a & 
�E` Y �_ a 	 _ a a & 
�E` Y u_ a 	 _ a a & 
�E` Y U_ a 	 _ a a & 
�E` Y 5_ a 	 _ a  a & 
�E` Y _ a   
�E` Y hOa ! � �)_ k+ "E` #Oa $ i*a %-E` &O_ &j 'k O Gl_ &j 'kh  _ f  )_ k+ "E` (Y )a #,E` (O_ (_ &a )�/a *,FOP[OY��OPY hOPUO_ #*a +,FOPW X , -hOPU
�� boovtrue��  � ��� � M a c i n t o s h   H D : U s e r s : A l b e r t o : P i c t u r e s : W a l l p a p e r s : T i m e   o f   D a y : B r e a k f a s t : h o n e y . j p g� �� ���
�� 
dskp��   ascr  ��ޭ