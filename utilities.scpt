FasdUAS 1.101.10   ��   ��    k             l     ��  ��      WIRECAST UTILITIES     � 	 	 &   W I R E C A S T   U T I L I T I E S   
  
 l     ��  ��    
  ###     �      # # #      l     ��  ��    > 8 This is a utility .scpt designed to be called using any     �   p   T h i s   i s   a   u t i l i t y   . s c p t   d e s i g n e d   t o   b e   c a l l e d   u s i n g   a n y      l     ��  ��    B < tool that can execute applescript. Quadro, BetterTouchTool,     �   x   t o o l   t h a t   c a n   e x e c u t e   a p p l e s c r i p t .   Q u a d r o ,   B e t t e r T o u c h T o o l ,      l     ��  ��    @ : KeyboardMaestro, and many others have this functionality.     �   t   K e y b o a r d M a e s t r o ,   a n d   m a n y   o t h e r s   h a v e   t h i s   f u n c t i o n a l i t y .      l     ��������  ��  ��       !   l     �� " #��   " A ; As of OSX 10.4, you can pass arguments to AppleScript, and    # � $ $ v   A s   o f   O S X   1 0 . 4 ,   y o u   c a n   p a s s   a r g u m e n t s   t o   A p p l e S c r i p t ,   a n d !  % & % l     �� ' (��   ' > 8 that is how we build a rich AppleScript for controlling    ( � ) ) p   t h a t   i s   h o w   w e   b u i l d   a   r i c h   A p p l e S c r i p t   f o r   c o n t r o l l i n g &  * + * l     �� , -��   ,  
 Wirecast.    - � . .    W i r e c a s t . +  / 0 / l     �� 1 2��   1       2 � 3 3    0  4 5 4 l     �� 6 7��   6   SETUP    7 � 8 8    S E T U P 5  9 : 9 l     �� ; <��   ; 
  ###    < � = =    # # # :  > ? > l     �� @ A��   @ : 4 You must have a blank layer in all 5 master layers:    A � B B h   Y o u   m u s t   h a v e   a   b l a n k   l a y e r   i n   a l l   5   m a s t e r   l a y e r s : ?  C D C l     �� E F��   E $  TRANSITIONS in Master Layer 1    F � G G <   T R A N S I T I O N S   i n   M a s t e r   L a y e r   1 D  H I H l     �� J K��   J %  UPPER THIRDS in Master Layer 2    K � L L >   U P P E R   T H I R D S   i n   M a s t e r   L a y e r   2 I  M N M l     �� O P��   O %  LOWER THIRDS in Master Layer 3    P � Q Q >   L O W E R   T H I R D S   i n   M a s t e r   L a y e r   3 N  R S R l     �� T U��   T    CAMERAS in Master Layer 4    U � V V 4   C A M E R A S   i n   M a s t e r   L a y e r   4 S  W X W l     �� Y Z��   Y   AUDIO in Master Layer 5    Z � [ [ 0   A U D I O   i n   M a s t e r   L a y e r   5 X  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     �� ` a��   ` E ? This follows most Wirecast setups. You're welcome to let these    a � b b ~   T h i s   f o l l o w s   m o s t   W i r e c a s t   s e t u p s .   Y o u ' r e   w e l c o m e   t o   l e t   t h e s e _  c d c l     �� e f��   e C = layers mean other things, just change the references here in    f � g g z   l a y e r s   m e a n   o t h e r   t h i n g s ,   j u s t   c h a n g e   t h e   r e f e r e n c e s   h e r e   i n d  h i h l     �� j k��   j   the script.    k � l l    t h e   s c r i p t . i  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q C = To invoke this, run the following command from any utility's    r � s s z   T o   i n v o k e   t h i s ,   r u n   t h e   f o l l o w i n g   c o m m a n d   f r o m   a n y   u t i l i t y ' s p  t u t l     �� v w��   v B < "run applescript" command. (You can also execute "oascript"    w � x x x   " r u n   a p p l e s c r i p t "   c o m m a n d .   ( Y o u   c a n   a l s o   e x e c u t e   " o a s c r i p t " u  y z y l     �� { |��   { E ? directly if your tool has a command for running shell scripts.    | � } } ~   d i r e c t l y   i f   y o u r   t o o l   h a s   a   c o m m a n d   f o r   r u n n i n g   s h e l l   s c r i p t s . z  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   � O I do shell script "osascript <path/to>/utilities.scpt <command> <args...>"    � � � � �   d o   s h e l l   s c r i p t   " o s a s c r i p t   < p a t h / t o > / u t i l i t i e s . s c p t   < c o m m a n d >   < a r g s . . . > " �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 The available commands (and their arguments) are:    � � � � d   T h e   a v a i l a b l e   c o m m a n d s   ( a n d   t h e i r   a r g u m e n t s )   a r e : �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   stinger    � � � �    s t i n g e r �  � � � l     �� � ���   � J D Used to create a "stinger" transition. It will begin by playing the    � � � � �   U s e d   t o   c r e a t e   a   " s t i n g e r "   t r a n s i t i o n .   I t   w i l l   b e g i n   b y   p l a y i n g   t h e �  � � � l     �� � ���   � I C transition_name, and after the first delay, will change the camera    � � � � �   t r a n s i t i o n _ n a m e ,   a n d   a f t e r   t h e   f i r s t   d e l a y ,   w i l l   c h a n g e   t h e   c a m e r a �  � � � l     �� � ���   � K E source, ideally cutting while the camera source is hidden behind the    � � � � �   s o u r c e ,   i d e a l l y   c u t t i n g   w h i l e   t h e   c a m e r a   s o u r c e   i s   h i d d e n   b e h i n d   t h e �  � � � l     �� � ���   � L F transition. It will then fade the audio back in after a second delay.    � � � � �   t r a n s i t i o n .   I t   w i l l   t h e n   f a d e   t h e   a u d i o   b a c k   i n   a f t e r   a   s e c o n d   d e l a y . �  � � � l     �� � ���   � P J	transition_name<s>	- The name of the transition layer to use as a stinger    � � � � � 	 t r a n s i t i o n _ n a m e < s > 	 -   T h e   n a m e   o f   t h e   t r a n s i t i o n   l a y e r   t o   u s e   a s   a   s t i n g e r �  � � � l     �� � ���   � X R 	speed<s>			- The transition speed One of: {slowest, slow, normal, fast, fastest}    � � � � �   	 s p e e d < s > 	 	 	 -   T h e   t r a n s i t i o n   s p e e d   O n e   o f :   { s l o w e s t ,   s l o w ,   n o r m a l ,   f a s t ,   f a s t e s t } �  � � � l     �� � ���   � L F 	camera_delay<i>		- delay in seconds before changing the camera layer    � � � � �   	 c a m e r a _ d e l a y < i > 	 	 -   d e l a y   i n   s e c o n d s   b e f o r e   c h a n g i n g   t h e   c a m e r a   l a y e r �  � � � l     �� � ���   � 2 ,	camera_name<s>		- camera layer to change to    � � � � X 	 c a m e r a _ n a m e < s > 	 	 -   c a m e r a   l a y e r   t o   c h a n g e   t o �  � � � l     �� � ���   � L F	audio_duration<i>		- delay in seconds before changing the audio layer    � � � � � 	 a u d i o _ d u r a t i o n < i > 	 	 -   d e l a y   i n   s e c o n d s   b e f o r e   c h a n g i n g   t h e   a u d i o   l a y e r �  � � � l     �� � ���   � R L	audio_name<s>		- audio layer to change to (if not set, audio will not mute)    � � � � � 	 a u d i o _ n a m e < s > 	 	 -   a u d i o   l a y e r   t o   c h a n g e   t o   ( i f   n o t   s e t ,   a u d i o   w i l l   n o t   m u t e ) �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   upper    � � � �    u p p e r �  � � � l     �� � ���   � 9 3 Used to trigger a shot on the "UPPER THIRDS" layer    � � � � f   U s e d   t o   t r i g g e r   a   s h o t   o n   t h e   " U P P E R   T H I R D S "   l a y e r �  � � � l     �� � ���   � 5 /	upper_name<s>		- name of the upper 3rd to play    � � � � ^ 	 u p p e r _ n a m e < s > 	 	 -   n a m e   o f   t h e   u p p e r   3 r d   t o   p l a y �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   lower    � � � �    l o w e r �  � � � l     �� � ���   � 9 3 Used to trigger a shot on the "LOWER THIRDS" layer    � � � � f   U s e d   t o   t r i g g e r   a   s h o t   o n   t h e   " L O W E R   T H I R D S "   l a y e r �  � � � l     �� � ���   � 6 0 	lower_name<s>		- name of the lower 3rd to play    � � � � `   	 l o w e r _ n a m e < s > 	 	 -   n a m e   o f   t h e   l o w e r   3 r d   t o   p l a y �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   camera    � � � �    c a m e r a �  � � � l     �� � ���   � J D Used to change the shot on the CAMERAS layer at the specified speed    � � � � �   U s e d   t o   c h a n g e   t h e   s h o t   o n   t h e   C A M E R A S   l a y e r   a t   t h e   s p e c i f i e d   s p e e d �  � � � l     �� � ���   � 8 2	camera_name<s>		- name of the camera shot to play    � � � � d 	 c a m e r a _ n a m e < s > 	 	 -   n a m e   o f   t h e   c a m e r a   s h o t   t o   p l a y �  � � � l     �� � ���   � W Q	speed<s>			- The transition speed One of: {slowest, slow, normal, fast, fastest}    � � � � � 	 s p e e d < s > 	 	 	 -   T h e   t r a n s i t i o n   s p e e d   O n e   o f :   { s l o w e s t ,   s l o w ,   n o r m a l ,   f a s t ,   f a s t e s t } �  � � � l     ��������  ��  ��   �  �  � l     ����     audio    �    a u d i o   l     ����   9 3 Used to change the audio source on the AUDIO layer    � f   U s e d   t o   c h a n g e   t h e   a u d i o   s o u r c e   o n   t h e   A U D I O   l a y e r 	
	 l     ����   @ :	audio_name<s>		- The name of the audio track to switch to    � t 	 a u d i o _ n a m e < s > 	 	 -   T h e   n a m e   o f   t h e   a u d i o   t r a c k   t o   s w i t c h   t o
  l     ��������  ��  ��    p       ������ 0 doc  ��    l     ��������  ��  ��    p       ������ 0 transitions  ��    p       ������ 0 upper_thirds  ��    p       ������ 0 lower_thirds  ��    p         ������ 0 cameras  ��   !"! p      ## ������ 
0 audios  ��  " $%$ l     ��������  ��  ��  % &'& p      (( ������ 0 clear_transitions  ��  ' )*) p      ++ ������ 0 clear_upper_thirds  ��  * ,-, p      .. ������ 0 clear_lower_thirds  ��  - /0/ p      11 ������ 0 clear_cameras  ��  0 232 p      44 ������ 0 
mute_audio  ��  3 565 l     ��������  ��  ��  6 787 p      99 ������ 0 take_cut  ��  8 :;: p      << ������ 0 take_smooth  ��  ; =>= l     ��������  ��  ��  > ?@? p      AA ������ 0 previous_take  ��  @ BCB p      DD ������ 0 normal_speed  ��  C EFE l     ��������  ��  ��  F GHG l     �IJ�  I   setup   J �KK    s e t u pH LML l     �~NO�~  N E ? creates the layers and shots used for clearing and configuring   O �PP ~   c r e a t e s   t h e   l a y e r s   a n d   s h o t s   u s e d   f o r   c l e a r i n g   a n d   c o n f i g u r i n gM QRQ l     �}ST�}  S : 4 the effects. Additionally, it turns off "auto live"   T �UU h   t h e   e f f e c t s .   A d d i t i o n a l l y ,   i t   t u r n s   o f f   " a u t o   l i v e "R VWV i     XYX I      �|�{�z�| 	0 setup  �{  �z  Y O     �Z[Z k    �\\ ]^] r    
_`_ l   a�y�xa 4   �wb
�w 
docub m    �v�v���y  �x  ` o      �u�u 0 doc  ^ cdc l   �t�s�r�t  �s  �r  d efe r    ghg m    �q
�q boovfalsh n      iji 1    �p
�p 
wALvj o    �o�o 0 doc  f klk l   �n�m�l�n  �m  �l  l mnm r    opo l   q�k�jq n    rsr 5    �it�h
�i 
wLayt m    uu �vv  M a s t e r   L a y e r   1
�h kfrmnames o    �g�g 0 doc  �k  �j  p o      �f�f 0 transitions  n wxw r     yzy l   {�e�d{ n    |}| 5    �c~�b
�c 
wLay~ m     ���  M a s t e r   L a y e r   2
�b kfrmname} o    �a�a 0 doc  �e  �d  z o      �`�` 0 upper_thirds  x ��� r   ! (��� l  ! &��_�^� n   ! &��� 5   " &�]��\
�] 
wLay� m   # $�� ���  M a s t e r   L a y e r   3
�\ kfrmname� o   ! "�[�[ 0 doc  �_  �^  � o      �Z�Z 0 lower_thirds  � ��� r   ) 0��� l  ) .��Y�X� n   ) .��� 5   * .�W��V
�W 
wLay� m   + ,�� ���  M a s t e r   L a y e r   4
�V kfrmname� o   ) *�U�U 0 doc  �Y  �X  � o      �T�T 0 cameras  � ��� r   1 8��� l  1 6��S�R� n   1 6��� 5   2 6�Q��P
�Q 
wLay� m   3 4�� ���  M a s t e r   L a y e r   5
�P kfrmname� o   1 2�O�O 0 doc  �S  �R  � o      �N�N 
0 audios  � ��� l  9 9�M�L�K�M  �L  �K  � ��� r   9 F��� l  9 B��J�I� n   9 B��� 5   : B�H��G
�H 
wSht� m   = @�� ���  T R A N S I T I O N S
�G kfrmname� o   9 :�F�F 0 doc  �J  �I  � o      �E�E 0 clear_transitions  � ��� r   G T��� l  G P��D�C� n   G P��� 5   H P�B��A
�B 
wSht� m   K N�� ���  U P P E R   T H I R D S
�A kfrmname� o   G H�@�@ 0 doc  �D  �C  � o      �?�? 0 clear_upper_thirds  � ��� r   U b��� l  U ^��>�=� n   U ^��� 5   V ^�<��;
�< 
wSht� m   Y \�� ���  L O W E R   T H I R D S
�; kfrmname� o   U V�:�: 0 doc  �>  �=  � o      �9�9 0 clear_lower_thirds  � ��� r   c p��� l  c l��8�7� n   c l��� 5   d l�6��5
�6 
wSht� m   g j�� ���  C A M E R A S
�5 kfrmname� o   c d�4�4 0 doc  �8  �7  � o      �3�3 0 clear_cameras  � ��� r   q ~��� l  q z��2�1� n   q z��� 5   r z�0��/
�0 
wSht� m   u x�� ��� 
 A U D I O
�/ kfrmname� o   q r�.�. 0 doc  �2  �1  � o      �-�- 0 
mute_audio  � ��� l   �,�+�*�,  �+  �*  � ��� r    ���� m    ��)�) � o      �(�( 0 take_cut  � ��� r   � ���� m   � ��'�' � o      �&�& 0 take_smooth  � ��� r   � ���� o   � ��%�% 0 take_smooth  � o      �$�$ 0 previous_take  � ��#� r   � ���� m   � ��� ���  N o r m a l� o      �"�" 0 normal_speed  �#  [ m     ���                                                                                  Wcst  alis    V  Macintosh HD               �
�H+  hVWirecast.app                                                   y����        ����  	                Applications    �{      ��{�    hV  'Macintosh HD:Applications: Wirecast.app     W i r e c a s t . a p p    M a c i n t o s h   H D  Applications/Wirecast.app   / ��  W ��� l     �!� ��!  �   �  � ��� l     ����  �   clearLayers   � ���    c l e a r L a y e r s� ��� l     ����  � J D clears one or more layers: transitions, upper, lower, camera, audio   � ��� �   c l e a r s   o n e   o r   m o r e   l a y e r s :   t r a n s i t i o n s ,   u p p e r ,   l o w e r ,   c a m e r a ,   a u d i o� ��� i    ��� I      ���� 0 clearlayers clearLayers� ��� o      �� 0 t  � ��� o      �� 0 u  � ��� o      �� 0 l  � ��� o      �� 0 c  �  �  o      �� 0 a  �  �  � O     T k    S  Z    �� =   	 o    �� 0 t  	 m    �
� boovtrue r   
 

 o   
 �� 0 clear_transitions   n       1    �
� 
pSht o    �� 0 transitions  �  �    Z    #�� =    o    �� 0 u   m    �

�
 boovtrue r     o    �	�	 0 clear_upper_thirds   n       1    �
� 
pSht o    �� 0 upper_thirds  �  �    Z   $ 3�� =  $ ' o   $ %�� 0 l   m   % &�
� boovtrue r   * / o   * +�� 0 clear_lower_thirds   n       !  1   , .�
� 
pSht! o   + ,� �  0 lower_thirds  �  �   "#" Z   4 C$%����$ =  4 7&'& o   4 5���� 0 c  ' m   5 6��
�� boovtrue% r   : ?()( o   : ;���� 0 clear_cameras  ) n      *+* 1   < >��
�� 
pSht+ o   ; <���� 0 cameras  ��  ��  # ,��, Z   D S-.����- =  D G/0/ o   D E���� 0 a  0 m   E F��
�� boovtrue. r   J O121 o   J K���� 0 
mute_audio  2 n      343 1   L N��
�� 
pSht4 o   K L���� 
0 audios  ��  ��  ��   m     55�                                                                                  Wcst  alis    V  Macintosh HD               �
�H+  hVWirecast.app                                                   y����        ����  	                Applications    �{      ��{�    hV  'Macintosh HD:Applications: Wirecast.app     W i r e c a s t . a p p    M a c i n t o s h   H D  Applications/Wirecast.app   / ��  � 676 l     ��������  ��  ��  7 898 l     ��:;��  :   saveTakeInfo   ; �<<    s a v e T a k e I n f o9 =>= l     ��?@��  ? A ; saves information about your "go" configuration to restore   @ �AA v   s a v e s   i n f o r m a t i o n   a b o u t   y o u r   " g o "   c o n f i g u r a t i o n   t o   r e s t o r e> BCB l     ��DE��  D   via restoreTakeInfo()   E �FF ,   v i a   r e s t o r e T a k e I n f o ( )C GHG i    IJI I      �������� 0 savetakeinfo saveTakeInfo��  ��  J O     
KLK r    	MNM n    OPO 1    ��
�� 
wTPpP o    ���� 0 doc  N o      ���� 0 previous_take  L m     QQ�                                                                                  Wcst  alis    V  Macintosh HD               �
�H+  hVWirecast.app                                                   y����        ����  	                Applications    �{      ��{�    hV  'Macintosh HD:Applications: Wirecast.app     W i r e c a s t . a p p    M a c i n t o s h   H D  Applications/Wirecast.app   / ��  H RSR l     ��������  ��  ��  S TUT l     ��VW��  V   restoreTakeInfo   W �XX     r e s t o r e T a k e I n f oU YZY l     ��[\��  [ 4 . restores take info saved with saveTakeInfo()    \ �]] \   r e s t o r e s   t a k e   i n f o   s a v e d   w i t h   s a v e T a k e I n f o ( )  Z ^_^ i    `a` I      �������� "0 restoretakeinfo restoreTakeInfo��  ��  a O     bcb k    dd efe r    	ghg o    ���� 0 normal_speed  h n      iji 1    ��
�� 
wTSnj o    ���� 0 doc  f k��k r   
 lml o   
 ���� 0 previous_take  m n      non 1    ��
�� 
wTPpo o    ���� 0 doc  ��  c m     pp�                                                                                  Wcst  alis    V  Macintosh HD               �
�H+  hVWirecast.app                                                   y����        ����  	                Applications    �{      ��{�    hV  'Macintosh HD:Applications: Wirecast.app     W i r e c a s t . a p p    M a c i n t o s h   H D  Applications/Wirecast.app   / ��  _ qrq l     ��������  ��  ��  r sts l     ��uv��  u   stingerTransition   v �ww $   s t i n g e r T r a n s i t i o nt xyx l     ��z{��  z E ? executes a stinger style transition, changing the camera layer   { �|| ~   e x e c u t e s   a   s t i n g e r   s t y l e   t r a n s i t i o n ,   c h a n g i n g   t h e   c a m e r a   l a y e ry }~} l     �����   "  at a specific point in time   � ��� 8   a t   a   s p e c i f i c   p o i n t   i n   t i m e~ ��� i    ��� I      ������� &0 stingertransition stingerTransition� ��� o      ���� 0 
transition  � ��� o      ���� 	0 speed  � ��� o      ���� 0 camera_change_delay  � ��� o      ���� 
0 camera  � ��� o      ���� 0 audio_change_delay  � ���� o      ���� 	0 audio  ��  ��  � k     ��� ��� Z     ������ E    
��� J     �� ��� J     ����  � ��� J    �� ���� m    �� ���  ��  � ���� m    �� ���  ��  � o    	���� 	0 audio  � r    ��� m    ��
�� boovfals� o      ���� 0 change_audio  ��  � r    ��� m    ��
�� boovtrue� o      ���� 0 change_audio  � ��� l   ��������  ��  ��  � ��� I    !������� 0 clearlayers clearLayers� ��� m    ��
�� boovtrue� ��� m    ��
�� boovtrue� ��� m    ��
�� boovtrue� ��� m    ��
�� boovfals� ���� o    ���� 0 change_audio  ��  ��  � ��� I   " '�������� 0 savetakeinfo saveTakeInfo��  ��  � ��� O   ( ���� k   , ��� ��� r   , 3��� l  , 1������ n   , 1��� 5   - 1�����
�� 
wSht� o   . /���� 0 
transition  
�� kfrmname� o   , -���� 0 doc  ��  ��  � o      ���� 0 transition_shot  � ��� r   4 ;��� l  4 9������ n   4 9��� 5   5 9�����
�� 
wSht� o   6 7���� 
0 camera  
�� kfrmname� o   4 5���� 0 doc  ��  ��  � o      ���� 0 camera_shot  � ��� r   < C��� l  < A������ n   < A��� 5   = A�����
�� 
wSht� o   > ?���� 	0 audio  
�� kfrmname� o   < =���� 0 doc  ��  ��  � o      ���� 0 
audio_shot  � ��� l  D D��������  ��  ��  � ��� r   D I��� o   D E���� 0 transition_shot  � n      ��� 1   F H��
�� 
pSht� o   E F���� 0 transitions  � ��� r   J O��� o   J K���� 	0 speed  � n      ��� 1   L N��
�� 
wTSn� o   K L���� 0 doc  � ��� r   P U��� o   P Q���� 0 take_smooth  � n      ��� 1   R T��
�� 
wTPp� o   Q R���� 0 doc  � ��� I  V [�����
�� .WcstGogonull���     ****� o   V W���� 0 doc  ��  � ��� I  \ a�����
�� .sysodelanull��� ��� nmbr� o   \ ]���� 0 camera_change_delay  ��  � ��� r   b i��� o   b c���� 0 camera_shot  � n      ��� 1   f h��
�� 
pSht� o   c f���� 0 cameras  � ��� r   j q��� o   j m���� 0 take_cut  � n      ��� 1   n p��
�� 
wTPp� o   m n���� 0 doc  � ��� I  r w�����
�� .WcstGogonull���     ****� o   r s���� 0 doc  ��  �    l  x x��~�}�  �~  �}   �| Z   x ��{�z =  x { o   x y�y�y 0 change_audio   m   y z�x
�x boovtrue k   ~ � 	 I  ~ ��w
�v
�w .sysodelanull��� ��� nmbr
 o   ~ �u�u 0 audio_change_delay  �v  	  r   � � o   � ��t�t 0 
audio_shot   n       1   � ��s
�s 
pSht o   � ��r�r 
0 audios    r   � � o   � ��q�q 0 normal_speed   n       1   � ��p
�p 
wTSn o   � ��o�o 0 doc    r   � � o   � ��n�n 0 take_smooth   n       1   � ��m
�m 
wTPp o   � ��l�l 0 doc   �k I  � ��j�i
�j .WcstGogonull���     **** o   � ��h�h 0 doc  �i  �k  �{  �z  �|  � m   ( )�                                                                                  Wcst  alis    V  Macintosh HD               �
�H+  hVWirecast.app                                                   y����        ����  	                Applications    �{      ��{�    hV  'Macintosh HD:Applications: Wirecast.app     W i r e c a s t . a p p    M a c i n t o s h   H D  Applications/Wirecast.app   / ��  �  �g  I   � ��f�e�d�f "0 restoretakeinfo restoreTakeInfo�e  �d  �g  � !"! l     �c�b�a�c  �b  �a  " #$# l     �`%&�`  %   upperThird   & �''    u p p e r T h i r d$ ()( l     �_*+�_  * &   set an upper third item to play   + �,, @   s e t   a n   u p p e r   t h i r d   i t e m   t o   p l a y) -.- i    /0/ I      �^1�]�^ 0 
upperthird 
upperThird1 2�\2 1      �[
�[ 
pnam�\  �]  0 k     '33 454 I     �Z�Y�X�Z 0 savetakeinfo saveTakeInfo�Y  �X  5 676 O    !898 k   
  :: ;<; r   
 =>= l  
 ?�W�V? n   
 @A@ 5    �UB�T
�U 
wShtB 1    �S
�S 
pnam
�T kfrmnameA o   
 �R�R 0 doc  �W  �V  > n      CDC 1    �Q
�Q 
pShtD o    �P�P 0 upper_thirds  < EFE r    GHG o    �O�O 0 take_cut  H n      IJI 1    �N
�N 
wTPpJ o    �M�M 0 doc  F K�LK I    �KL�J
�K .WcstGogonull���     ****L o    �I�I 0 doc  �J  �L  9 m    MM�                                                                                  Wcst  alis    V  Macintosh HD               �
�H+  hVWirecast.app                                                   y����        ����  	                Applications    �{      ��{�    hV  'Macintosh HD:Applications: Wirecast.app     W i r e c a s t . a p p    M a c i n t o s h   H D  Applications/Wirecast.app   / ��  7 N�HN I   " '�G�F�E�G "0 restoretakeinfo restoreTakeInfo�F  �E  �H  . OPO l     �D�C�B�D  �C  �B  P QRQ l     �AST�A  S   lowerThird   T �UU    l o w e r T h i r dR VWV l     �@XY�@  X %  set a lower third item to play   Y �ZZ >   s e t   a   l o w e r   t h i r d   i t e m   t o   p l a yW [\[ i    ]^] I      �?_�>�? 0 
lowerthird 
lowerThird_ `�=` 1      �<
�< 
pnam�=  �>  ^ k     'aa bcb I     �;�:�9�; 0 savetakeinfo saveTakeInfo�:  �9  c ded O    !fgf k   
  hh iji r   
 klk l  
 m�8�7m n   
 non 5    �6p�5
�6 
wShtp 1    �4
�4 
pnam
�5 kfrmnameo o   
 �3�3 0 doc  �8  �7  l n      qrq 1    �2
�2 
pShtr o    �1�1 0 lower_thirds  j sts r    uvu o    �0�0 0 take_cut  v n      wxw 1    �/
�/ 
wTPpx o    �.�. 0 doc  t y�-y I    �,z�+
�, .WcstGogonull���     ****z o    �*�* 0 doc  �+  �-  g m    {{�                                                                                  Wcst  alis    V  Macintosh HD               �
�H+  hVWirecast.app                                                   y����        ����  	                Applications    �{      ��{�    hV  'Macintosh HD:Applications: Wirecast.app     W i r e c a s t . a p p    M a c i n t o s h   H D  Applications/Wirecast.app   / ��  e |�)| I   " '�(�'�&�( "0 restoretakeinfo restoreTakeInfo�'  �&  �)  \ }~} l     �%�$�#�%  �$  �#  ~ � l     �"���"  �   camera   � ���    c a m e r a� ��� l     �!���!  � B < set a camera item to play with a specified transition speed   � ��� x   s e t   a   c a m e r a   i t e m   t o   p l a y   w i t h   a   s p e c i f i e d   t r a n s i t i o n   s p e e d� ��� i    ��� I      � ���  
0 camera  � ��� 1      �
� 
pnam� ��� o      �� 0 cut_or_smooth  �  �  � k     9�� ��� I     ���� 0 savetakeinfo saveTakeInfo�  �  � ��� r    	��� o    �� 0 take_smooth  � o      �� 0 
take_style  � ��� Z   
 ����� E   
 ��� o   
 �� 0 cut_or_smooth  � m    �� ���  c u t� r    ��� o    �� 0 take_cut  � o      �� 0 
take_style  �  �  � ��� O    3��� k    2�� ��� r    &��� l   "���� n    "��� 5    "���
� 
wSht� 1     �
� 
pnam
� kfrmname� o    �� 0 doc  �  �  � n      ��� 1   # %�
� 
pSht� o   " #�
�
 0 cameras  � ��� r   ' ,��� o   ' (�	�	 0 
take_style  � n      ��� 1   ) +�
� 
wTPp� o   ( )�� 0 doc  � ��� I  - 2���
� .WcstGogonull���     ****� o   - .�� 0 doc  �  �  � m    ���                                                                                  Wcst  alis    V  Macintosh HD               �
�H+  hVWirecast.app                                                   y����        ����  	                Applications    �{      ��{�    hV  'Macintosh HD:Applications: Wirecast.app     W i r e c a s t . a p p    M a c i n t o s h   H D  Applications/Wirecast.app   / ��  � ��� I   4 9�� ��� "0 restoretakeinfo restoreTakeInfo�   ��  �  � ��� l     ��������  ��  ��  � ��� l     ������  �   audio   � ���    a u d i o� ��� l     ������  �   set the audio track   � ��� (   s e t   t h e   a u d i o   t r a c k� ��� i     #��� I      ������� 	0 audio  � ���� 1      ��
�� 
pnam��  ��  � O     !��� k     �� ��� r    ��� l   
������ n    
��� 5    
�����
�� 
wSht� 1    ��
�� 
pnam
�� kfrmname� o    ���� 0 doc  ��  ��  � n      ��� 1    ��
�� 
pSht� o   
 ���� 
0 audios  � ��� r    ��� o    ���� 0 take_smooth  � n      ��� 1    ��
�� 
wTPp� o    ���� 0 doc  � ��� r    ��� o    ���� 0 normal_speed  � n      ��� 1    ��
�� 
wTSn� o    ���� 0 doc  � ���� I    �����
�� .WcstGogonull���     ****� o    ���� 0 doc  ��  ��  � m     ���                                                                                  Wcst  alis    V  Macintosh HD               �
�H+  hVWirecast.app                                                   y����        ����  	                Applications    �{      ��{�    hV  'Macintosh HD:Applications: Wirecast.app     W i r e c a s t . a p p    M a c i n t o s h   H D  Applications/Wirecast.app   / ��  � ��� l     ��������  ��  ��  � ��� i   $ '��� I      ������� 0 err  � ��� o      ���� 0 errtitle errTitle� ���� o      ���� 0 errmsg errMsg��  ��  � I    	����
�� .sysodisAaleR        TEXT� o     ���� 0 errtitle errTitle� ����
�� 
mesS� o    ���� 0 errmsg errMsg� �����
�� 
as A� m    ��
�� EAlTcriT��  � ��� l     ��������  ��  ��  � ��� l     ������  � 
  run   � ���    r u n� � � l     ����   6 0 entry point when called using the command line.    � `   e n t r y   p o i n t   w h e n   c a l l e d   u s i n g   t h e   c o m m a n d   l i n e .   l     ����   > 8 parses argv to determine the mode and call a supporting    � p   p a r s e s   a r g v   t o   d e t e r m i n e   t h e   m o d e   a n d   c a l l   a   s u p p o r t i n g 	
	 l     ����    	 function    �    f u n c t i o n
 �� i   ( + I     ����
�� .aevtoappnull  �   � **** o      ���� 0 argv  ��   k    @  Z     ���� A     l    ���� I    ����
�� .corecnte****       **** o     ���� 0 argv  ��  ��  ��   m    ����  k   
   I   
 ������ 0 err     m    !! �""  M o d e   R e q u i r e d  #��# m    $$ �%% � Y o u   m u s t   s p e c i f i y   a   s u p p o r t e d   m o d e :   s t i n g e r ,   u p p e r ,   l o w e r ,   c a m e r a ,   a u d i o��  ��   &��& L    ����  ��  ��  ��   '(' I    �������� 	0 setup  ��  ��  ( )*) Z    f+,����+ =   %-.- n    #/0/ 4     #��1
�� 
cobj1 m   ! "���� 0 o     ���� 0 argv  . m   # $22 �33  s t i n g e r, k   ( b44 565 Z   ( @78����7 A  ( /9:9 l  ( -;����; I  ( -��<��
�� .corecnte****       ****< o   ( )���� 0 argv  ��  ��  ��  : m   - .���� 8 k   2 <== >?> I   2 9��@���� 0 err  @ ABA m   3 4CC �DD  s t i n g e r   u s a g e :B E��E m   4 5FF �GGD < u t i l i t i e s . s c p t >   s t i n g e r   t r a n s i t i o n ( s t r i n g )   s p e e d ( s t r i n g )   c a m e r a _ c h a n g e _ d e l a y ( f l o a t ) ,   c a m e r a ( s t r i n g ) ,   a u d i o _ c h a n g e _ d e l a y ( f l o a t ,   o p t i o n a l ) ,   a u d i o ( s t r i n g ,   o p t i o n a l )��  ��  ? H��H L   : <����  ��  ��  ��  6 I��I I   A b��J���� &0 stingertransition stingerTransitionJ KLK n   B FMNM 4   C F��O
�� 
cobjO m   D E���� N o   B C���� 0 argv  L PQP n   F JRSR 4   G J��T
�� 
cobjT m   H I���� S o   F G���� 0 argv  Q UVU n   J NWXW 4   K N��Y
�� 
cobjY m   L M���� X o   J K���� 0 argv  V Z[Z n   N R\]\ 4   O R��^
�� 
cobj^ m   P Q���� ] o   N O���� 0 argv  [ _`_ n   R Vaba 4   S V��c
�� 
cobjc m   T U���� b o   R S���� 0 argv  ` ded n   V Zfgf 4   W Z��h
�� 
cobjh m   X Y���� g o   V W���� 0 argv  e i��i n   Z ^jkj 4   [ ^��l
�� 
cobjl m   \ ]���� k o   Z [���� 0 argv  ��  ��  ��  ��  ��  * mnm Z   g �op����o =  g mqrq n   g ksts 4   h k��u
�� 
cobju m   i j���� t o   g h���� 0 argv  r m   k lvv �ww 
 u p p e rp k   p �xx yzy Z   p �{|����{ A  p w}~} l  p u���� I  p u�����
�� .corecnte****       ****� o   p q���� 0 argv  ��  ��  ��  ~ m   u v���� | k   z ��� ��� I   z �������� 0 err  � ��� m   { ~�� ���  u p p e r   u s a g e :� ��� m   ~ ��� ��� F < u t i l i t i e s . s c p t >   u p p e r   s h o t ( s t r i n g )�  ��  � ��~� L   � ��}�}  �~  ��  ��  z ��|� I   � ��{��z�{ 0 
upperthird 
upperThird� ��y� n   � ���� 4   � ��x�
�x 
cobj� m   � ��w�w � o   � ��v�v 0 argv  �y  �z  �|  ��  ��  n ��� Z   � ����u�t� =  � ���� n   � ���� 4   � ��s�
�s 
cobj� m   � ��r�r � o   � ��q�q 0 argv  � m   � ��� ��� 
 l o w e r� k   � ��� ��� Z   � ����p�o� A  � ���� l  � ���n�m� I  � ��l��k
�l .corecnte****       ****� o   � ��j�j 0 argv  �k  �n  �m  � m   � ��i�i � k   � ��� ��� I   � ��h��g�h 0 err  � ��� m   � ��� ���  l o w e r   u s a g e :� ��f� m   � ��� ��� F < u t i l i t i e s . s c p t >   l o w e r   s h o t ( s t r i n g )�f  �g  � ��e� L   � ��d�d  �e  �p  �o  � ��c� I   � ��b��a�b 0 
lowerthird 
lowerThird� ��`� n   � ���� 4   � ��_�
�_ 
cobj� m   � ��^�^ � o   � ��]�] 0 argv  �`  �a  �c  �u  �t  � ��� Z   �
���\�[� =  � ���� n   � ���� 4   � ��Z�
�Z 
cobj� m   � ��Y�Y � o   � ��X�X 0 argv  � m   � ��� ���  c a m e r a� k   ��� ��� Z   � ����W�V� A  � ���� l  � ���U�T� I  � ��S��R
�S .corecnte****       ****� o   � ��Q�Q 0 argv  �R  �U  �T  � m   � ��P�P � k   � ��� ��� I   � ��O��N�O 0 err  � ��� m   � ��� ���  c a m e r a   u s a g e :� ��M� m   � ��� ��� f < u t i l i t i e s . s c p t >   c a m e r a   s h o t ( s t r i n g ) ,   s p e e d ( s t r i n g )�M  �N  � ��L� L   � ��K�K  �L  �W  �V  � ��J� I   ��I��H�I 
0 camera  � ��� n   � ���� 4   � ��G�
�G 
cobj� m   � ��F�F � o   � ��E�E 0 argv  � ��D� n   ���� 4   ��C�
�C 
cobj� m   �B�B � o   � ��A�A 0 argv  �D  �H  �J  �\  �[  � ��@� Z  @���?�>� = ��� n  ��� 4  �=�
�= 
cobj� m  �<�< � o  �;�; 0 argv  � m  �� ��� 
 a u d i o� k  <�� ��� Z  2���:�9� A ��� l ��8�7� I �6��5
�6 .corecnte****       ****� o  �4�4 0 argv  �5  �8  �7  � m  �3�3 � k   .�� ��� I   +�2��1�2 0 err  � ��� m  !$�� ���  a u d i o   u s a g e :� ��0� m  $'   � F < u t i l i t i e s . s c p t >   a u d i o   s h o t ( s t r i n g )�0  �1  � �/ L  ,.�.�.  �/  �:  �9  � �- I  3<�,�+�, 	0 audio   �* n  48 4  58�)
�) 
cobj m  67�(�(  o  45�'�' 0 argv  �*  �+  �-  �?  �>  �@  ��       .�&	
�%�$�#��"�!� ����������������&  	 ,�������
�	��������� ������������������������������������������������������� 	0 setup  � 0 clearlayers clearLayers� 0 savetakeinfo saveTakeInfo� "0 restoretakeinfo restoreTakeInfo� &0 stingertransition stingerTransition� 0 
upperthird 
upperThird�
 0 
lowerthird 
lowerThird�	 
0 camera  � 	0 audio  � 0 err  
� .aevtoappnull  �   � ****� 0 doc  � 0 transitions  � 0 upper_thirds  � 0 lower_thirds  � 0 cameras  �  
0 audios  �� 0 clear_transitions  �� 0 clear_upper_thirds  �� 0 clear_lower_thirds  �� 0 clear_cameras  �� 0 
mute_audio  �� 0 take_cut  �� 0 take_smooth  �� 0 previous_take  �� 0 normal_speed  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  
 ��Y���� !���� 	0 setup  ��  ��     !  ���������u�����������������������������������������
�� 
docu�� 0 doc  
�� 
wALv
�� 
wLay
�� kfrmname�� 0 transitions  �� 0 upper_thirds  �� 0 lower_thirds  �� 0 cameras  �� 
0 audios  
�� 
wSht�� 0 clear_transitions  �� 0 clear_upper_thirds  �� 0 clear_lower_thirds  �� 0 clear_cameras  �� 0 
mute_audio  �� 0 take_cut  �� 0 take_smooth  �� 0 previous_take  �� 0 normal_speed  �� �� �*�i/E�Of��,FO����0E�O����0E�O����0E�O����0E�O����0E�O�a a �0E` O�a a �0E` O�a a �0E` O�a a �0E` O�a a �0E` OkE` OlE` O_ E` Oa E` U �������"#���� 0 clearlayers clearLayers�� ��$�� $  ������������ 0 t  �� 0 u  �� 0 l  �� 0 c  �� 0 a  ��  " ������������ 0 t  �� 0 u  �� 0 l  �� 0 c  �� 0 a  # 5������������������������ 0 clear_transitions  �� 0 transitions  
�� 
pSht�� 0 clear_upper_thirds  �� 0 upper_thirds  �� 0 clear_lower_thirds  �� 0 lower_thirds  �� 0 clear_cameras  �� 0 cameras  �� 0 
mute_audio  �� 
0 audios  �� U� Q�e  
���,FY hO�e  
���,FY hO�e  
���,FY hO�e  
���,FY hO�e  
���,FY hU ��J����%&���� 0 savetakeinfo saveTakeInfo��  ��  %  & Q�������� 0 doc  
�� 
wTPp�� 0 previous_take  �� � ��,E�U ��a����'(���� "0 restoretakeinfo restoreTakeInfo��  ��  '  ( p������������ 0 normal_speed  �� 0 doc  
�� 
wTSn�� 0 previous_take  
�� 
wTPp�� � ���,FO���,FU �������)*���� &0 stingertransition stingerTransition�� ��+�� +  �������������� 0 
transition  �� 	0 speed  �� 0 camera_change_delay  �� 
0 camera  �� 0 audio_change_delay  �� 	0 audio  ��  ) 
���������������������� 0 
transition  �� 	0 speed  �� 0 camera_change_delay  �� 
0 camera  �� 0 audio_change_delay  �� 	0 audio  �� 0 change_audio  �� 0 transition_shot  �� 0 camera_shot  �� 0 
audio_shot  * ��������������������������������~�}�|�� �� 0 clearlayers clearLayers�� 0 savetakeinfo saveTakeInfo�� 0 doc  
�� 
wSht
�� kfrmname�� 0 transitions  
�� 
pSht
�� 
wTSn�� 0 take_smooth  
�� 
wTPp
�� .WcstGogonull���     ****
�� .sysodelanull��� ��� nmbr�� 0 cameras  � 0 take_cut  �~ 
0 audios  �} 0 normal_speed  �| "0 restoretakeinfo restoreTakeInfo�� �jv�kv�mv� fE�Y eE�O*eeef��+ O*j+ O� y���0E�O���0E�O���0E�O���,FO���,FO���,FO�j O�j O�_ �,FO_ ��,FO�j O�e  &�j O�_ �,FO_ ��,FO���,FO�j Y hUO*j+  �{0�z�y,-�x�{ 0 
upperthird 
upperThird�z �w.�w .  �v
�v 
pnam�y  , �u
�u 
pnam- �tM�s�r�q�p�o�n�m�l�k�t 0 savetakeinfo saveTakeInfo�s 0 doc  
�r 
wSht
�q kfrmname�p 0 upper_thirds  
�o 
pSht�n 0 take_cut  
�m 
wTPp
�l .WcstGogonull���     ****�k "0 restoretakeinfo restoreTakeInfo�x (*j+  O� ��E�0��,FO���,FO�j 	UO*j+ 
 �j^�i�h/0�g�j 0 
lowerthird 
lowerThird�i �f1�f 1  �e
�e 
pnam�h  / �d
�d 
pnam0 �c{�b�a�`�_�^�]�\�[�Z�c 0 savetakeinfo saveTakeInfo�b 0 doc  
�a 
wSht
�` kfrmname�_ 0 lower_thirds  
�^ 
pSht�] 0 take_cut  
�\ 
wTPp
�[ .WcstGogonull���     ****�Z "0 restoretakeinfo restoreTakeInfo�g (*j+  O� ��E�0��,FO���,FO�j 	UO*j+ 
 �Y��X�W23�V�Y 
0 camera  �X �U4�U 4  �T�S
�T 
pnam�S 0 cut_or_smooth  �W  2 �R�Q�P
�R 
pnam�Q 0 cut_or_smooth  �P 0 
take_style  3 �O�N��M��L�K�J�I�H�G�F�E�O 0 savetakeinfo saveTakeInfo�N 0 take_smooth  �M 0 take_cut  �L 0 doc  
�K 
wSht
�J kfrmname�I 0 cameras  
�H 
pSht
�G 
wTPp
�F .WcstGogonull���     ****�E "0 restoretakeinfo restoreTakeInfo�V :*j+  O�E�O�� �E�Y hO� ��E�0��,FO���,FO�j UO*j+  �D��C�B56�A�D 	0 audio  �C �@7�@ 7  �?
�? 
pnam�B  5 �>
�> 
pnam6 ��=�<�;�:�9�8�7�6�5�4�= 0 doc  
�< 
wSht
�; kfrmname�: 
0 audios  
�9 
pSht�8 0 take_smooth  
�7 
wTPp�6 0 normal_speed  
�5 
wTSn
�4 .WcstGogonull���     ****�A "� ��E�0��,FO���,FO���,FO�j 
U �3��2�189�0�3 0 err  �2 �/:�/ :  �.�-�. 0 errtitle errTitle�- 0 errmsg errMsg�1  8 �,�+�, 0 errtitle errTitle�+ 0 errmsg errMsg9 �*�)�(�'�&
�* 
mesS
�) 
as A
�( EAlTcriT�' 
�& .sysodisAaleR        TEXT�0 
�����  �%�$�#;<�"
�% .aevtoappnull  �   � ****�$ 0 argv  �#  ; �!�! 0 argv  < � !$���2�CF�����v������������� �
�  .corecnte****       ****� 0 err  � 	0 setup  
� 
cobj� � � � � � &0 stingertransition stingerTransition� 0 
upperthird 
upperThird� 0 
lowerthird 
lowerThird� 
0 camera  � 	0 audio  �"A�j  k *��l+ OhY hO*j+ O��k/�  ?�j  � *��l+ OhY hO*��l/��m/���/���/���/���/���/�+ Y hO��k/�  +�j  l *a a l+ OhY hO*��l/k+ Y hO��k/a   +�j  l *a a l+ OhY hO*��l/k+ Y hO��k/a   /�j  l *a a l+ OhY hO*��l/��m/l+ Y hO��k/a   +�j  l *a a l+ OhY hO*��l/k+ Y h == ����
� 
docu�	�
� kfrmID   >> ?�@? ����
� 
docu�	�
� kfrmID  
� 
wLay@ �AA  M a s t e r   L a y e r   1 BB C�DC ��
�	�
�
 
docu�		�
� kfrmID  
� 
wLayD �EE  M a s t e r   L a y e r   2 FF G�HG ����
� 
docu�	�
� kfrmID  
� 
wLayH �II  M a s t e r   L a y e r   3 JJ K�LK ���� 
� 
docu�	�
�  kfrmID  
� 
wLayL �MM  M a s t e r   L a y e r   4 NN O��PO �������
�� 
docu��	�
�� kfrmID  
�� 
wLayP �QQ  M a s t e r   L a y e r   5 RR S������S �������
�� 
docu��	�
�� kfrmID  
�� 
wSht��
	
�� kfrmID   TT U������U �������
�� 
docu��	�
�� kfrmID  
�� 
wSht��

�� kfrmID   VV W������W �������
�� 
docu��	�
�� kfrmID  
�� 
wSht��


�� kfrmID   XX Y������Y �������
�� 
docu��	�
�� kfrmID  
�� 
wSht��

�� kfrmID   ZZ [������[ �������
�� 
docu��	�
�� kfrmID  
�� 
wSht��
@
�� kfrmID  �% �$ �#  �"  �!  �   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  ascr  ��ޭ