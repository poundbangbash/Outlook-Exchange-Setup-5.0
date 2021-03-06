FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

--------------------------------------------
Outlook Exchange Setup 5.0
� Copyright 2008-2015 William Smith
bill@officeformachelp.com

Except where otherwise noted, this work is licensed under
http://creativecommons.org/licenses/by/3.0/

This script may be freely modified for personal or commercial
purposes but may not be republished for profit without prior consent.

If you find this script useful or have ideas for improving it,
please let me know. It is only compatible with Outlook 2016 for Mac.

--------------------------------------------

This script assists a user with the setup of his Exchange account
information. Below are basic instructions for using the script.
Consult the Outlook Exchange Setup 5.0 Administrator's Guide
for complete details.

1.	Customize the "network and  server properties" below with information
	appropriate to your network.
	
2.	Deploy this script to a location on your Macs such as
	"/Library/CompanyName/OutlookExchangeSetup5.0.scpt".

3. 	Deploy the recommended "Outlook preferences.mobileconfig"
	configuration profile to eliminate Outlook's startup windows.
	This assumes you're using the volume license edition
	of Office 2016 for Mac.
	
4.	Deploy the OutlookExchangeSetup5.0.plist file to
	/Library/LaunchAgents. Update the path to point to the
	OutlookExchangeSetup5.0.scpt script.
	  
This script assumes the user's full name is in the form of "Last, First",
but is easily modified if the full name is in the form of "First Last".
It works especially well if the Mac is bound to Active Directory where
the user's short name will match his login name. Optionally, you cans set dscl
to pull the user's EMailAddress from a directory service.

     � 	 	< 
 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 O u t l o o k   E x c h a n g e   S e t u p   5 . 0 
 �   C o p y r i g h t   2 0 0 8 - 2 0 1 5   W i l l i a m   S m i t h 
 b i l l @ o f f i c e f o r m a c h e l p . c o m 
 
 E x c e p t   w h e r e   o t h e r w i s e   n o t e d ,   t h i s   w o r k   i s   l i c e n s e d   u n d e r 
 h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y / 3 . 0 / 
 
 T h i s   s c r i p t   m a y   b e   f r e e l y   m o d i f i e d   f o r   p e r s o n a l   o r   c o m m e r c i a l 
 p u r p o s e s   b u t   m a y   n o t   b e   r e p u b l i s h e d   f o r   p r o f i t   w i t h o u t   p r i o r   c o n s e n t . 
 
 I f   y o u   f i n d   t h i s   s c r i p t   u s e f u l   o r   h a v e   i d e a s   f o r   i m p r o v i n g   i t , 
 p l e a s e   l e t   m e   k n o w .   I t   i s   o n l y   c o m p a t i b l e   w i t h   O u t l o o k   2 0 1 6   f o r   M a c . 
 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
 T h i s   s c r i p t   a s s i s t s   a   u s e r   w i t h   t h e   s e t u p   o f   h i s   E x c h a n g e   a c c o u n t 
 i n f o r m a t i o n .   B e l o w   a r e   b a s i c   i n s t r u c t i o n s   f o r   u s i n g   t h e   s c r i p t . 
 C o n s u l t   t h e   O u t l o o k   E x c h a n g e   S e t u p   5 . 0   A d m i n i s t r a t o r ' s   G u i d e 
 f o r   c o m p l e t e   d e t a i l s . 
 
 1 . 	 C u s t o m i z e   t h e   " n e t w o r k   a n d     s e r v e r   p r o p e r t i e s "   b e l o w   w i t h   i n f o r m a t i o n 
 	 a p p r o p r i a t e   t o   y o u r   n e t w o r k . 
 	 
 2 . 	 D e p l o y   t h i s   s c r i p t   t o   a   l o c a t i o n   o n   y o u r   M a c s   s u c h   a s 
 	 " / L i b r a r y / C o m p a n y N a m e / O u t l o o k E x c h a n g e S e t u p 5 . 0 . s c p t " . 
 
 3 .   	 D e p l o y   t h e   r e c o m m e n d e d   " O u t l o o k   p r e f e r e n c e s . m o b i l e c o n f i g " 
 	 c o n f i g u r a t i o n   p r o f i l e   t o   e l i m i n a t e   O u t l o o k ' s   s t a r t u p   w i n d o w s . 
 	 T h i s   a s s u m e s   y o u ' r e   u s i n g   t h e   v o l u m e   l i c e n s e   e d i t i o n 
 	 o f   O f f i c e   2 0 1 6   f o r   M a c . 
 	 
 4 . 	 D e p l o y   t h e   O u t l o o k E x c h a n g e S e t u p 5 . 0 . p l i s t   f i l e   t o 
 	 / L i b r a r y / L a u n c h A g e n t s .   U p d a t e   t h e   p a t h   t o   p o i n t   t o   t h e 
 	 O u t l o o k E x c h a n g e S e t u p 5 . 0 . s c p t   s c r i p t . 
 	     
 T h i s   s c r i p t   a s s u m e s   t h e   u s e r ' s   f u l l   n a m e   i s   i n   t h e   f o r m   o f   " L a s t ,   F i r s t " , 
 b u t   i s   e a s i l y   m o d i f i e d   i f   t h e   f u l l   n a m e   i s   i n   t h e   f o r m   o f   " F i r s t   L a s t " . 
 I t   w o r k s   e s p e c i a l l y   w e l l   i f   t h e   M a c   i s   b o u n d   t o   A c t i v e   D i r e c t o r y   w h e r e 
 t h e   u s e r ' s   s h o r t   n a m e   w i l l   m a t c h   h i s   l o g i n   n a m e .   O p t i o n a l l y ,   y o u   c a n s   s e t   d s c l 
 t o   p u l l   t h e   u s e r ' s   E M a i l A d d r e s s   f r o m   a   d i r e c t o r y   s e r v i c e . 
 
   
  
 l     ��������  ��  ��        l     ��  ��    0 *------------------------------------------     �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��  ��    , & Begin network, server and preferences     �   L   B e g i n   n e t w o r k ,   s e r v e r   a n d   p r e f e r e n c e s      l     ��  ��    0 *------------------------------------------     �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��������  ��  ��        l     ��������  ��  ��         l     �� ! "��   ! C =------------- Exchange Server settings ----------------------    " � # # z - - - - - - - - - - - - -   E x c h a n g e   S e r v e r   s e t t i n g s   - - - - - - - - - - - - - - - - - - - - - -    $ % $ l     ��������  ��  ��   %  & ' & j     �� (�� 0 usekerberos useKerberos ( m     ��
�� boovtrue '  ) * ) l     �� + ,��   + B < Set this to true only if Macs in your environment are bound    , � - - x   S e t   t h i s   t o   t r u e   o n l y   i f   M a c s   i n   y o u r   e n v i r o n m e n t   a r e   b o u n d *  . / . l     �� 0 1��   0 C = to Active Directory and your network is properly configured.    1 � 2 2 z   t o   A c t i v e   D i r e c t o r y   a n d   y o u r   n e t w o r k   i s   p r o p e r l y   c o n f i g u r e d . /  3 4 3 l     ��������  ��  ��   4  5 6 5 j    �� 7��  0 exchangeserver ExchangeServer 7 m     8 8 � 9 9 ( e x c h a n g e . e x a m p l e . c o m 6  : ; : l     �� < =��   < 6 0 Address of your organization's Exchange server.    = � > > `   A d d r e s s   o f   y o u r   o r g a n i z a t i o n ' s   E x c h a n g e   s e r v e r . ;  ? @ ? l     ��������  ��  ��   @  A B A j    �� C�� 60 exchangeserverrequiresssl ExchangeServerRequiresSSL C m    ��
�� boovtrue B  D E D l     �� F G��   F   True for most servers.    G � H H .   T r u e   f o r   m o s t   s e r v e r s . E  I J I l     ��������  ��  ��   J  K L K j   	 �� M�� .0 exchangeserversslport ExchangeServerSSLPort M m   	 
����� L  N O N l     �� P Q��   P @ : If ExchangeServerRequiresSSL is true set the port to 443.    Q � R R t   I f   E x c h a n g e S e r v e r R e q u i r e s S S L   i s   t r u e   s e t   t h e   p o r t   t o   4 4 3 . O  S T S l     �� U V��   U @ : If ExchangeServerRequiresSSL is false set the port to 80.    V � W W t   I f   E x c h a n g e S e r v e r R e q u i r e s S S L   i s   f a l s e   s e t   t h e   p o r t   t o   8 0 . T  X Y X l     �� Z [��   Z L F Use a different port number only if your administrator instructs you.    [ � \ \ �   U s e   a   d i f f e r e n t   p o r t   n u m b e r   o n l y   i f   y o u r   a d m i n i s t r a t o r   i n s t r u c t s   y o u . Y  ] ^ ] l     ��������  ��  ��   ^  _ ` _ j    �� a�� "0 directoryserver DirectoryServer a m     b b � c c  g c . e x a m p l e . c o m `  d e d l     �� f g��   f Z T Address of an internal Global Catalog server (a type of Windows domain controller).    g � h h �   A d d r e s s   o f   a n   i n t e r n a l   G l o b a l   C a t a l o g   s e r v e r   ( a   t y p e   o f   W i n d o w s   d o m a i n   c o n t r o l l e r ) . e  i j i l     �� k l��   k L F The LDAP server in a Windows network will be a Global Catalog server,    l � m m �   T h e   L D A P   s e r v e r   i n   a   W i n d o w s   n e t w o r k   w i l l   b e   a   G l o b a l   C a t a l o g   s e r v e r , j  n o n l     �� p q��   p 2 , which is separate from the Exchange Server.    q � r r X   w h i c h   i s   s e p a r a t e   f r o m   t h e   E x c h a n g e   S e r v e r . o  s t s l     ��������  ��  ��   t  u v u j    �� w�� N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication w m    ��
�� boovtrue v  x y x l     �� z {��   z ' ! This will almost always be true.    { � | | B   T h i s   w i l l   a l m o s t   a l w a y s   b e   t r u e . y  } ~ } l     ��������  ��  ��   ~   �  j    �� ��� 80 directoryserverrequiresssl DirectoryServerRequiresSSL � m    ��
�� boovtrue �  � � � l     �� � ���   � ' ! This will almost always be true.    � � � � B   T h i s   w i l l   a l m o s t   a l w a y s   b e   t r u e . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� 00 directoryserversslport DirectoryServerSSLPort � m    ����� �  � � � l     �� � ���   � B < If DirectoryServerRequiresSSL is true set the port to 3269.    � � � � x   I f   D i r e c t o r y S e r v e r R e q u i r e s S S L   i s   t r u e   s e t   t h e   p o r t   t o   3 2 6 9 . �  � � � l     �� � ���   � C = If DirectoryServerRequiresSSL is false set the port to 3268.    � � � � z   I f   D i r e c t o r y S e r v e r R e q u i r e s S S L   i s   f a l s e   s e t   t h e   p o r t   t o   3 2 6 8 . �  � � � l     �� � ���   � U O Use a different port number only if your Exchange administrator instructs you.    � � � � �   U s e   a   d i f f e r e n t   p o r t   n u m b e r   o n l y   i f   y o u r   E x c h a n g e   a d m i n i s t r a t o r   i n s t r u c t s   y o u . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� >0 directoryservermaximumresults DirectoryServerMaximumResults � m    ����� �  � � � l     �� � ���   � G A When searching the Global Catalog server, this number determines    � � � � �   W h e n   s e a r c h i n g   t h e   G l o b a l   C a t a l o g   s e r v e r ,   t h i s   n u m b e r   d e t e r m i n e s �  � � � l     �� � ���   � 0 * the maximum number of entries to display.    � � � � T   t h e   m a x i m u m   n u m b e r   o f   e n t r i e s   t o   d i s p l a y . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� 60 directoryserversearchbase DirectoryServerSearchBase � m     � � � � �   �  � � � l     �� � ���   � + % example: "cn=users,dc=domain,dc=com"    � � � � J   e x a m p l e :   " c n = u s e r s , d c = d o m a i n , d c = c o m " �  � � � l     �� � ���   �   Usually, this is empty.    � � � � 0   U s u a l l y ,   t h i s   i s   e m p t y . �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � D >------------- For Active Directory users ---------------------    � � � � | - - - - - - - - - - - - -   F o r   A c t i v e   D i r e c t o r y   u s e r s   - - - - - - - - - - - - - - - - - - - - - �  � � � l     ��������  ��  ��   �  � � � j     �� ��� N0 %getuserinformationfromactivedirectory %getUserInformationFromActiveDirectory � m    ��
�� boovtrue �  � � � l     �� � ���   � B < If Macs are bound to Active Directory they can probably use    � � � � x   I f   M a c s   a r e   b o u n d   t o   A c t i v e   D i r e c t o r y   t h e y   c a n   p r o b a b l y   u s e �  � � � l     �� � ���   � Q K dscl to return the current user's email address, phone number, title, etc.    � � � � �   d s c l   t o   r e t u r n   t h e   c u r r e n t   u s e r ' s   e m a i l   a d d r e s s ,   p h o n e   n u m b e r ,   t i t l e ,   e t c . �  � � � l     �� � ���   � O I Use Active Directory when possible, otherwise complete the next section.    � � � � �   U s e   A c t i v e   D i r e c t o r y   w h e n   p o s s i b l e ,   o t h e r w i s e   c o m p l e t e   t h e   n e x t   s e c t i o n . �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � B <------------- For non Active Directory users ---------------    � � � � x - - - - - - - - - - - - -   F o r   n o n   A c t i v e   D i r e c t o r y   u s e r s   - - - - - - - - - - - - - - - �  � � � l     ��������  ��  ��   �  � � � j   ! %�� ��� 0 
domainname 
domainName � m   ! $ � � � � �  e x a m p l e . c o m �  � � � l     �� � ���   � P J Complete this only if not using Active Directory to get user information.    � � � � �   C o m p l e t e   t h i s   o n l y   i f   n o t   u s i n g   A c t i v e   D i r e c t o r y   t o   g e t   u s e r   i n f o r m a t i o n . �  � � � l     �� � ���   � L F The part of your organization's email address following the @ symbol.    � � � � �   T h e   p a r t   o f   y o u r   o r g a n i z a t i o n ' s   e m a i l   a d d r e s s   f o l l o w i n g   t h e   @   s y m b o l . �  � � � l     ��������  ��  ��   �  � � � j   & (�� ��� 0 emailformat emailFormat � m   & '����  �  � � � l     �� � ���   � P J Complete this only if not using Active Directory to get user information.    � � � � �   C o m p l e t e   t h i s   o n l y   i f   n o t   u s i n g   A c t i v e   D i r e c t o r y   t o   g e t   u s e r   i n f o r m a t i o n . �  � � � l     �� � ���   � P J When Active Directory is unavailable to determine a user's email address,    � �   �   W h e n   A c t i v e   D i r e c t o r y   i s   u n a v a i l a b l e   t o   d e t e r m i n e   a   u s e r ' s   e m a i l   a d d r e s s , �  l     ����   V P this script will attempt to parse it from the display name of the user's login.    � �   t h i s   s c r i p t   w i l l   a t t e m p t   t o   p a r s e   i t   f r o m   t h e   d i s p l a y   n a m e   o f   t h e   u s e r ' s   l o g i n .  l     ��������  ��  ��   	 l     ��
��  
 1 + Describe your organization's email format:    � V   D e s c r i b e   y o u r   o r g a n i z a t i o n ' s   e m a i l   f o r m a t :	  l     ����   / ) 1: Email format is first.last@domain.com    � R   1 :   E m a i l   f o r m a t   i s   f i r s t . l a s t @ d o m a i n . c o m  l     ����   * $ 2: Email format is first@domain.com    � H   2 :   E m a i l   f o r m a t   i s   f i r s t @ d o m a i n . c o m  l     ����   N H 3: Email format is flast@domain.com (first name initial plus last name)    � �   3 :   E m a i l   f o r m a t   i s   f l a s t @ d o m a i n . c o m   ( f i r s t   n a m e   i n i t i a l   p l u s   l a s t   n a m e )  l     ����   . ( 4: Email format is shortName@domain.com    �   P   4 :   E m a i l   f o r m a t   i s   s h o r t N a m e @ d o m a i n . c o m !"! l     ��������  ��  ��  " #$# j   ) +�%� 0 displayname displayName% m   ) *�~�~ $ &'& l     �}()�}  ( P J Complete this only if not using Active Directory to get user information.   ) �** �   C o m p l e t e   t h i s   o n l y   i f   n o t   u s i n g   A c t i v e   D i r e c t o r y   t o   g e t   u s e r   i n f o r m a t i o n .' +,+ l     �|-.�|  - M G Describe how the user's display name appears at the bottom of the menu   . �// �   D e s c r i b e   h o w   t h e   u s e r ' s   d i s p l a y   n a m e   a p p e a r s   a t   t h e   b o t t o m   o f   t h e   m e n u, 010 l     �{23�{  2 R L when clicking the Apple menu (Log Out Joe Cool... or Log Out Cool, Joe...).   3 �44 �   w h e n   c l i c k i n g   t h e   A p p l e   m e n u   ( L o g   O u t   J o e   C o o l . . .   o r   L o g   O u t   C o o l ,   J o e . . . ) .1 565 l     �z78�z  7 / ) 1: Display name appears as "Last, First"   8 �99 R   1 :   D i s p l a y   n a m e   a p p e a r s   a s   " L a s t ,   F i r s t "6 :;: l     �y<=�y  < . ( 2: Display name appears as "First Last"   = �>> P   2 :   D i s p l a y   n a m e   a p p e a r s   a s   " F i r s t   L a s t "; ?@? l     �x�w�v�x  �w  �v  @ ABA l     �u�t�s�u  �t  �s  B CDC l     �rEF�r  E C =------------- User Experience -------------------------------   F �GG z - - - - - - - - - - - - -   U s e r   E x p e r i e n c e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -D HIH l     �q�p�o�q  �p  �o  I JKJ j   , .�nL�n (0 verifyemailaddress verifyEMailAddressL m   , -�m
�m boovfalsK MNM l     �lOP�l  O M G If set to "true", a dialog asks the user to confirm his email address.   P �QQ �   I f   s e t   t o   " t r u e " ,   a   d i a l o g   a s k s   t h e   u s e r   t o   c o n f i r m   h i s   e m a i l   a d d r e s s .N RSR l     �k�j�i�k  �j  �i  S TUT j   / 1�hV�h *0 verifyserveraddress verifyServerAddressV m   / 0�g
�g boovfalsU WXW l     �fYZ�f  Y W Q If set to "true", a dialog asks the user to confirm his Exchange server address.   Z �[[ �   I f   s e t   t o   " t r u e " ,   a   d i a l o g   a s k s   t h e   u s e r   t o   c o n f i r m   h i s   E x c h a n g e   s e r v e r   a d d r e s s .X \]\ l     �e�d�c�e  �d  �c  ] ^_^ j   2 6�b`�b *0 downloadheadersonly downloadHeadersOnly` m   2 3�a
�a boovfals_ aba l     �`cd�`  c H B If set to "true", only email headers are downloaded into Outlook.   d �ee �   I f   s e t   t o   " t r u e " ,   o n l y   e m a i l   h e a d e r s   a r e   d o w n l o a d e d   i n t o   O u t l o o k .b fgf l     �_hi�_  h B < This takes much less time to sync but a user must be online   i �jj x   T h i s   t a k e s   m u c h   l e s s   t i m e   t o   s y n c   b u t   a   u s e r   m u s t   b e   o n l i n eg klk l     �^mn�^  m %  to download and view messages.   n �oo >   t o   d o w n l o a d   a n d   v i e w   m e s s a g e s .l pqp l     �]�\�[�]  �\  �[  q rsr j   7 ;�Zt�Z 0 unifiedinbox unifiedInboxt m   7 8�Y
�Y boovfalss uvu l     �Xwx�X  w C = If set to "true", turns on the Group Similar Folders feature   x �yy z   I f   s e t   t o   " t r u e " ,   t u r n s   o n   t h e   G r o u p   S i m i l a r   F o l d e r s   f e a t u r ev z{z l     �W|}�W  | / ) in Outlook menu > Preferences > General.   } �~~ R   i n   O u t l o o k   m e n u   >   P r e f e r e n c e s   >   G e n e r a l .{ � l     �V�U�T�V  �U  �T  � ��� j   < @�S��S *0 disableautodiscover disableAutodiscover� m   < =�R
�R boovfals� ��� l     �Q���Q  � < 6 If set to "true", disables Autodiscover functionality   � ��� l   I f   s e t   t o   " t r u e " ,   d i s a b l e s   A u t o d i s c o v e r   f u n c t i o n a l i t y� ��� l     �P���P  � C = for the Exchange account. Not recommended for mobile devices   � ��� z   f o r   t h e   E x c h a n g e   a c c o u n t .   N o t   r e c o m m e n d e d   f o r   m o b i l e   d e v i c e s� ��� l     �O���O  � C = that may connect to an internal Exchange server addresss and   � ��� z   t h a t   m a y   c o n n e c t   t o   a n   i n t e r n a l   E x c h a n g e   s e r v e r   a d d r e s s s   a n d� ��� l     �N���N  � ? 9 connect to a different external Exchange server address.   � ��� r   c o n n e c t   t o   a   d i f f e r e n t   e x t e r n a l   E x c h a n g e   s e r v e r   a d d r e s s .� ��� l     �M�L�K�M  �L  �K  � ��� j   A G�J��J 0 errormessage errorMessage� m   A D�� ��� � O u t l o o k ' s   s e t u p   f o r   y o u r   E x c h a n g e   a c c o u n t   f a i l e d .   P l e a s e   c o n t a c t   t h e   H e l p   D e s k   f o r   a s s i s t a n c e .� ��� l     �I���I  � T N Customize this error message for your users in case their account setup fails   � ��� �   C u s t o m i z e   t h i s   e r r o r   m e s s a g e   f o r   y o u r   u s e r s   i n   c a s e   t h e i r   a c c o u n t   s e t u p   f a i l s� ��� l     �H�G�F�H  �G  �F  � ��� l     �E���E  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �D���D  � * $ End network, server and preferences   � ��� H   E n d   n e t w o r k ,   s e r v e r   a n d   p r e f e r e n c e s� ��� l     �C���C  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �B�A�@�B  �A  �@  � ��� l     �?���?  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �>���>  � ( " Begin collecting user information   � ��� D   B e g i n   c o l l e c t i n g   u s e r   i n f o r m a t i o n� ��� l     �=���=  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �<�;�:�<  �;  �:  � ��� l     �9���9  � R L attempt to read information from Active Directory for the Me Contact record   � ��� �   a t t e m p t   t o   r e a d   i n f o r m a t i o n   f r o m   A c t i v e   D i r e c t o r y   f o r   t h e   M e   C o n t a c t   r e c o r d� ��� l     �8�7�6�8  �7  �6  � ��� l    ��5�4� r     ��� m     �� ���  � o      �3�3 0 userfirstname userFirstName�5  �4  � ��� l   ��2�1� r    ��� m    �� ���  � o      �0�0 0 userlastname userLastName�2  �1  � ��� l   ��/�.� r    ��� m    	�� ���  � o      �-�-  0 userdepartment userDepartment�/  �.  � ��� l   ��,�+� r    ��� m    �� ���  � o      �*�* 0 
useroffice 
userOffice�,  �+  � ��� l   ��)�(� r    ��� m    �� ���  � o      �'�' 0 usercompany userCompany�)  �(  � ��� l   ��&�%� r    ��� m    �� ���  � o      �$�$ 0 userworkphone userWorkPhone�&  �%  � ��� l   ��#�"� r    ��� m    �� ���  � o      �!�! 0 
usermobile 
userMobile�#  �"  �    l   � � r     m     �   o      �� 0 userfax userFax�   �    l    '	��	 r     '

 m     # �   o      �� 0 	usertitle 	userTitle�  �    l  ( /�� r   ( / m   ( + �   o      �� 0 
userstreet 
userStreet�  �    l  0 7�� r   0 7 m   0 3 �   o      �� 0 usercity userCity�  �    l  8 ?�� r   8 ?  m   8 ;!! �""    o      �� 0 	userstate 	userState�  �   #$# l  @ G%��% r   @ G&'& m   @ C(( �))  ' o      ��  0 userpostalcode userPostalCode�  �  $ *+* l  H O,��, r   H O-.- m   H K// �00  . o      �� 0 usercountry userCountry�  �  + 121 l  P W3��
3 r   P W454 m   P S66 �77  5 o      �	�	 0 userwebpage userWebPage�  �
  2 898 l     ����  �  �  9 :;: l  XB<��< Z   XB=>?@= =  X _ABA o   X ]�� N0 %getuserinformationfromactivedirectory %getUserInformationFromActiveDirectoryB m   ] ^�
� boovtrue> k   b	CC DED l  b b�� ���  �   ��  E FGF l  b b��HI��  H + % Get information from Active Directoy   I �JJ J   G e t   i n f o r m a t i o n   f r o m   A c t i v e   D i r e c t o yG KLK l  b b��������  ��  ��  L MNM l  b b��OP��  O 3 - get the domain's primary NetBIOS domain name   P �QQ Z   g e t   t h e   d o m a i n ' s   p r i m a r y   N e t B I O S   d o m a i n   n a m eN RSR l  b b��������  ��  ��  S TUT Q   b �VWXV r   e pYZY I  e l��[��
�� .sysoexecTEXT���     TEXT[ m   e h\\ �]] � d s c l   " / A c t i v e   D i r e c t o r y / "   - r e a d   /   S u b N o d e s   |   a w k   ' B E G I N   { F S = " :   " }   { p r i n t   $ 2 } '��  Z o      ���� 0 netbiosdomain netbiosDomainW R      ������
�� .ascrerr ****      � ****��  ��  X k   x �^^ _`_ l  x x��������  ��  ��  ` aba l  x x��cd��  c   something went wrong   d �ee *   s o m e t h i n g   w e n t   w r o n gb fgf l  x x��������  ��  ��  g hih I  x ���jk
�� .sysodlogaskr        TEXTj b   x �lml b   x �non b   x �pqp o   x }���� 0 errormessage errorMessageq o   } ���
�� 
ret o o   � ���
�� 
ret m m   � �rr �ss � U n a b l e   t o   d e t e r m i n e   N E T B I O S   d o m a i n   n a m e .   T h i s   c o m p u t e r   m a y   n o t   b e   b o u n d   t o   A c t i v e   D i r e c t o r y .k ��tu
�� 
dispt m   � ���
�� stic    u ��vw
�� 
btnsv J   � �xx y��y m   � �zz �{{  O K��  w ��|}
�� 
dflt| J   � �~~ �� m   � ��� ���  O K��  } �����
�� 
appr� m   � ��� ��� , O u t l o o k   E x c h a n g e   S e t u p��  i ���� R   � ������
�� .ascrerr ****      � ****��  � �����
�� 
errn� m   � ���������  ��  U ��� l  � ���������  ��  ��  � ��� l  � �������  � 7 1 read full user information from Active Directory   � ��� b   r e a d   f u l l   u s e r   i n f o r m a t i o n   f r o m   A c t i v e   D i r e c t o r y� ��� l  � ���������  ��  ��  � ��� Q   �!���� k   � ��� ��� r   � ���� J   � ��� ���� m   � ��� ���  :  ��  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ���� r   � ���� I  � ������
�� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� m   � ��� ��� 0 d s c l   " / A c t i v e   D i r e c t o r y /� o   � ����� 0 netbiosdomain netbiosDomain� m   � ��� ���� / A l l   D o m a i n s / "   - r e a d   / U s e r s / $ U S E R   A u t h e n t i c a t i o n A u t h o r i t y   C i t y   c o   c o m p a n y   d e p a r t m e n t   p h y s i c a l D e l i v e r y O f f i c e N a m e   s A M A c c o u n t N a m e   w W W H o m e P a g e   E M a i l A d d r e s s   F A X N u m b e r   F i r s t N a m e   J o b T i t l e   L a s t N a m e   M o b i l e N u m b e r   P h o n e N u m b e r   P o s t a l C o d e   R e a l N a m e   S t a t e   S t r e e t��  � o      ���� "0 userinformation userInformation��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   �!�� ��� l  � ���������  ��  ��  � ��� l  � �������  �   something went wrong   � ��� *   s o m e t h i n g   w e n t   w r o n g� ��� l  � ���������  ��  ��  � ��� I  �����
�� .sysodlogaskr        TEXT� b   � ���� b   � ���� b   � ���� o   � ����� 0 errormessage errorMessage� o   � ���
�� 
ret � o   � ���
�� 
ret � m   � ��� ��� n U n a b l e   t o   r e a d   u s e r   i n f o r m a t i o n   f r o m   n e t w o r k   d i r e c t o r y .� ����
�� 
disp� m   � ���
�� stic    � ����
�� 
btns� J   ��� ���� m   � �� ���  O K��  � ����
�� 
dflt� J  
�� ���� m  �� ���  O K��  � �����
�� 
appr� m  �� ��� , O u t l o o k   E x c h a n g e   S e t u p��  � ���� R  !�����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  ��������  ��  � ��� l ""��������  ��  ��  � ��� Y  "~�������� k  6y�� ��� l 66��������  ��  ��  � ��� r  6C��� J  6;�� ���� m  69�� ���  :  ��  � n     ��� 1  >B��
�� 
txdl� 1  ;>��
�� 
ascr� ��� Z  D�������� C DP��� n  DL��� 4  GL���
�� 
cpar� o  JK���� 0 i  � o  DG���� "0 userinformation userInformation� m  LO�� ���  E M a i l A d d r e s s :� Q  S����� r  Vg��� n  Vc��� 4  ^c���
�� 
citm� m  ab���� � n  V^��� 4  Y^�� 
�� 
cpar  o  \]���� 0 i  � o  VY���� "0 userinformation userInformation� o      ���� 0 emailaddress emailAddress� R      ������
�� .ascrerr ****      � ****��  ��  � k  o�  r  o| J  ot �� m  or �		  ��   n     

 1  w{��
�� 
txdl 1  tw��
�� 
ascr �� r  }� c  }� n  }� 7����
�� 
cha  m  ������   ;  �� n  }� 4  ����
�� 
cpar l ������ [  �� o  ������ 0 i   m  ������ ��  ��   o  }����� "0 userinformation userInformation m  ����
�� 
TEXT o      ���� 0 emailaddress emailAddress��  ��  ��  �  l ����������  ��  ��    r  ��  J  ��!! "��" m  ��## �$$  :  ��    n     %&% 1  ����
�� 
txdl& 1  ����
�� 
ascr '(' Z  �)*��~) C ��+,+ n  ��-.- 4  ���}/
�} 
cpar/ o  ���|�| 0 i  . o  ���{�{ "0 userinformation userInformation, m  ��00 �11 ( d s A t t r T y p e N a t i v e : c o :* Q  �2342 r  ��565 n  ��787 4  ���z9
�z 
citm9 m  ���y�y 8 n  ��:;: 4  ���x<
�x 
cpar< o  ���w�w 0 i  ; o  ���v�v "0 userinformation userInformation6 o      �u�u 0 usercountry userCountry3 R      �t�s�r
�t .ascrerr ****      � ****�s  �r  4 k  �== >?> r  ��@A@ J  ��BB C�qC m  ��DD �EE  �q  A n     FGF 1  ���p
�p 
txdlG 1  ���o
�o 
ascr? H�nH r  �IJI c  ��KLK n  ��MNM 7���mOP
�m 
cha O m  ���l�l P  ;  ��N n  ��QRQ 4  ���kS
�k 
cparS l ��T�j�iT [  ��UVU o  ���h�h 0 i  V m  ���g�g �j  �i  R o  ���f�f "0 userinformation userInformationL m  ���e
�e 
TEXTJ o      �d�d 0 usercountry userCountry�n  �  �~  ( WXW l �c�b�a�c  �b  �a  X YZY r  [\[ J  ]] ^�`^ m  __ �``  :  �`  \ n     aba 1  �_
�_ 
txdlb 1  �^
�^ 
ascrZ cdc Z  lef�]�\e C "ghg n  iji 4  �[k
�[ 
cpark o  �Z�Z 0 i  j o  �Y�Y "0 userinformation userInformationh m  !ll �mm 2 d s A t t r T y p e N a t i v e : c o m p a n y :f Q  %hnopn r  (7qrq n  (5sts 4  05�Xu
�X 
citmu m  34�W�W t n  (0vwv 4  +0�Vx
�V 
cparx o  ./�U�U 0 i  w o  (+�T�T "0 userinformation userInformationr o      �S�S 0 usercompany userCompanyo R      �R�Q�P
�R .ascrerr ****      � ****�Q  �P  p k  ?hyy z{z r  ?L|}| J  ?D~~ �O m  ?B�� ���  �O  } n     ��� 1  GK�N
�N 
txdl� 1  DG�M
�M 
ascr{ ��L� r  Mh��� c  Mf��� n  Mb��� 7Wb�K��
�K 
cha � m  ]_�J�J �  ;  `a� n  MW��� 4  PW�I�
�I 
cpar� l SV��H�G� [  SV��� o  ST�F�F 0 i  � m  TU�E�E �H  �G  � o  MP�D�D "0 userinformation userInformation� m  be�C
�C 
TEXT� o      �B�B 0 usercompany userCompany�L  �]  �\  d ��� l mm�A�@�?�A  �@  �?  � ��� r  mz��� J  mr�� ��>� m  mp�� ���  :  �>  � n     ��� 1  uy�=
�= 
txdl� 1  ru�<
�< 
ascr� ��� Z  {����;�:� C {���� n  {���� 4  ~��9�
�9 
cpar� o  ���8�8 0 i  � o  {~�7�7 "0 userinformation userInformation� m  ���� ��� 8 d s A t t r T y p e N a t i v e : d e p a r t m e n t :� Q  ������ r  ����� n  ����� 4  ���6�
�6 
citm� m  ���5�5 � n  ����� 4  ���4�
�4 
cpar� o  ���3�3 0 i  � o  ���2�2 "0 userinformation userInformation� o      �1�1  0 userdepartment userDepartment� R      �0�/�.
�0 .ascrerr ****      � ****�/  �.  � k  ���� ��� r  ����� J  ���� ��-� m  ���� ���  �-  � n     ��� 1  ���,
�, 
txdl� 1  ���+
�+ 
ascr� ��*� r  ����� c  ����� n  ����� 7���)��
�) 
cha � m  ���(�( �  ;  ��� n  ����� 4  ���'�
�' 
cpar� l ����&�%� [  ����� o  ���$�$ 0 i  � m  ���#�# �&  �%  � o  ���"�" "0 userinformation userInformation� m  ���!
�! 
TEXT� o      � �   0 userdepartment userDepartment�*  �;  �:  � ��� l ������  �  �  � ��� r  ����� J  ���� ��� m  ���� ���  :  �  � n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� Z  �6����� C ����� n  ����� 4  ����
� 
cpar� o  ���� 0 i  � o  ���� "0 userinformation userInformation� m  ���� ��� X d s A t t r T y p e N a t i v e : p h y s i c a l D e l i v e r y O f f i c e N a m e :� Q  �2���� r  ���� n  ����� 4  ����
� 
citm� m  ���� � n  ����� 4  ����
� 
cpar� o  ���� 0 i  � o  ���� "0 userinformation userInformation� o      �� 0 
useroffice 
userOffice� R      ���
� .ascrerr ****      � ****�  �  � k  	2�� ��� r  	��� J  	�� ��� m  	�� ���  �  � n     ��� 1  �

�
 
txdl� 1  �	
�	 
ascr� ��� r  2��� c  0� � n  , 7!,�
� 
cha  m  ')��   ;  *+ n  ! 4  !�
� 
cpar l  �� [   	
	 o  �� 0 i  
 m  �� �  �   o  � �  "0 userinformation userInformation  m  ,/��
�� 
TEXT� o      ���� 0 
useroffice 
userOffice�  �  �  �  l 77��������  ��  ��    r  7D J  7< �� m  7: �  :  ��   n      1  ?C��
�� 
txdl 1  <?��
�� 
ascr  Z  E����� C EQ n  EM 4  HM��
�� 
cpar o  KL���� 0 i   o  EH���� "0 userinformation userInformation m  MP   �!! @ d s A t t r T y p e N a t i v e : s A M A c c o u n t N a m e : Q  T�"#$" r  Wh%&% n  Wd'(' 4  _d��)
�� 
citm) m  bc���� ( n  W_*+* 4  Z_��,
�� 
cpar, o  ]^���� 0 i  + o  WZ���� "0 userinformation userInformation& o      ���� 0 usershortname userShortName# R      ������
�� .ascrerr ****      � ****��  ��  $ k  p�-- ./. r  p}010 J  pu22 3��3 m  ps44 �55  ��  1 n     676 1  x|��
�� 
txdl7 1  ux��
�� 
ascr/ 8��8 r  ~�9:9 c  ~�;<; n  ~�=>= 7����?@
�� 
cha ? m  ������ @  ;  ��> n  ~�ABA 4  ����C
�� 
cparC l ��D����D [  ��EFE o  ������ 0 i  F m  ������ ��  ��  B o  ~����� "0 userinformation userInformation< m  ����
�� 
TEXT: o      ���� 0 usershortname userShortName��  ��  ��   GHG l ����������  ��  ��  H IJI r  ��KLK J  ��MM N��N m  ��OO �PP  :  ��  L n     QRQ 1  ����
�� 
txdlR 1  ����
�� 
ascrJ STS Z  �UV����U C ��WXW n  ��YZY 4  ����[
�� 
cpar[ o  ������ 0 i  Z o  ������ "0 userinformation userInformationX m  ��\\ �]] : d s A t t r T y p e N a t i v e : w W W H o m e P a g e :V Q  �^_`^ r  ��aba n  ��cdc 4  ����e
�� 
citme m  ������ d n  ��fgf 4  ����h
�� 
cparh o  ������ 0 i  g o  ������ "0 userinformation userInformationb o      ���� 0 userwebpage userWebPage_ R      ������
�� .ascrerr ****      � ****��  ��  ` k  �ii jkj r  ��lml J  ��nn o��o m  ��pp �qq  ��  m n     rsr 1  ����
�� 
txdls 1  ����
�� 
ascrk t��t r  �uvu c  � wxw n  ��yzy 7����{|
�� 
cha { m  ������ |  ;  ��z n  ��}~} 4  ����
�� 
cpar l �������� [  ����� o  ������ 0 i  � m  ������ ��  ��  ~ o  ������ "0 userinformation userInformationx m  ����
�� 
TEXTv o      ���� 0 userwebpage userWebPage��  ��  ��  T ��� l 		��������  ��  ��  � ��� r  	��� J  	�� ���� m  	�� ���  :  ��  � n     ��� 1  ��
�� 
txdl� 1  ��
�� 
ascr� ��� Z  q������� C #��� n  ��� 4  ���
�� 
cpar� o  ���� 0 i  � o  ���� "0 userinformation userInformation� m  "�� ��� 
 C i t y :� Q  &m���� r  ):��� n  )6��� 4  16���
�� 
citm� m  45���� � n  )1��� 4  ,1���
�� 
cpar� o  /0���� 0 i  � o  ),���� "0 userinformation userInformation� o      ���� 0 usercity userCity� R      ������
�� .ascrerr ****      � ****��  ��  � k  Bm�� ��� r  BO��� J  BG�� ���� m  BE�� ���  ��  � n     ��� 1  JN��
�� 
txdl� 1  GJ��
�� 
ascr� ���� r  Pm��� c  Pi��� n  Pe��� 7Ze����
�� 
cha � m  `b���� �  ;  cd� n  PZ��� 4  SZ���
�� 
cpar� l VY������ [  VY��� o  VW���� 0 i  � m  WX���� ��  ��  � o  PS���� "0 userinformation userInformation� m  eh��
�� 
TEXT� o      ���� 0 usercity userCity��  ��  ��  � ��� l rr��������  ��  ��  � ��� r  r��� J  rw�� ���� m  ru�� ���  :  ��  � n     ��� 1  z~��
�� 
txdl� 1  wz��
�� 
ascr� ��� Z  ��������� C ����� n  ����� 4  �����
�� 
cpar� o  ������ 0 i  � o  ������ "0 userinformation userInformation� m  ���� ���  F A X N u m b e r :� Q  ������ r  ����� n  ����� 4  �����
�� 
citm� m  ������ � n  ����� 4  �����
�� 
cpar� o  ������ 0 i  � o  ������ "0 userinformation userInformation� o      ���� 0 userfax userFax� R      ������
�� .ascrerr ****      � ****��  ��  � k  ���� ��� r  ����� J  ���� ���� m  ���� ���  ��  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ���� r  ����� c  ����� n  ����� 7�����
� 
cha � m  ���~�~ �  ;  ��� n  ����� 4  ���}�
�} 
cpar� l ����|�{� [  ����� o  ���z�z 0 i  � m  ���y�y �|  �{  � o  ���x�x "0 userinformation userInformation� m  ���w
�w 
TEXT� o      �v�v 0 userfax userFax��  ��  ��  � ��� l ���u�t�s�u  �t  �s  � ��� r  ��� � J  �� �r m  �� �  :  �r    n      1  ���q
�q 
txdl 1  ���p
�p 
ascr�  Z  �;	
�o�n	 C �� n  �� 4  ���m
�m 
cpar o  ���l�l 0 i   o  ���k�k "0 userinformation userInformation m  �� �  F i r s t N a m e :
 Q  �7 r  � n  � 4  ��j
�j 
citm m  �i�i  n  �� 4  ���h
�h 
cpar o  ���g�g 0 i   o  ���f�f "0 userinformation userInformation o      �e�e 0 userfirstname userFirstName R      �d�c�b
�d .ascrerr ****      � ****�c  �b   k  7  r   !  J  "" #�a# m  $$ �%%  �a  ! n     &'& 1  �`
�` 
txdl' 1  �_
�_ 
ascr (�^( r  7)*) c  5+,+ n  1-.- 7&1�]/0
�] 
cha / m  ,.�\�\ 0  ;  /0. n  &121 4  &�[3
�[ 
cpar3 l "%4�Z�Y4 [  "%565 o  "#�X�X 0 i  6 m  #$�W�W �Z  �Y  2 o  �V�V "0 userinformation userInformation, m  14�U
�U 
TEXT* o      �T�T 0 userfirstname userFirstName�^  �o  �n   787 l <<�S�R�Q�S  �R  �Q  8 9:9 r  <I;<; J  <A== >�P> m  <??? �@@  :  �P  < n     ABA 1  DH�O
�O 
txdlB 1  AD�N
�N 
ascr: CDC Z  J�EF�M�LE C JVGHG n  JRIJI 4  MR�KK
�K 
cparK o  PQ�J�J 0 i  J o  JM�I�I "0 userinformation userInformationH m  RULL �MM  J o b T i t l e :F Q  Y�NOPN r  \mQRQ n  \iSTS 4  di�HU
�H 
citmU m  gh�G�G T n  \dVWV 4  _d�FX
�F 
cparX o  bc�E�E 0 i  W o  \_�D�D "0 userinformation userInformationR o      �C�C 0 	usertitle 	userTitleO R      �B�A�@
�B .ascrerr ****      � ****�A  �@  P k  u�YY Z[Z r  u�\]\ J  uz^^ _�?_ m  ux`` �aa  �?  ] n     bcb 1  }��>
�> 
txdlc 1  z}�=
�= 
ascr[ d�<d r  ��efe c  ��ghg n  ��iji 7���;kl
�; 
cha k m  ���:�: l  ;  ��j n  ��mnm 4  ���9o
�9 
cparo l ��p�8�7p [  ��qrq o  ���6�6 0 i  r m  ���5�5 �8  �7  n o  ���4�4 "0 userinformation userInformationh m  ���3
�3 
TEXTf o      �2�2 0 	usertitle 	userTitle�<  �M  �L  D sts l ���1�0�/�1  �0  �/  t uvu r  ��wxw J  ��yy z�.z m  ��{{ �||  :  �.  x n     }~} 1  ���-
�- 
txdl~ 1  ���,
�, 
ascrv � Z  �	���+�*� C ����� n  ����� 4  ���)�
�) 
cpar� o  ���(�( 0 i  � o  ���'�' "0 userinformation userInformation� m  ���� ���  L a s t N a m e :� Q  ����� r  ����� n  ����� 4  ���&�
�& 
citm� m  ���%�% � n  ����� 4  ���$�
�$ 
cpar� o  ���#�# 0 i  � o  ���"�" "0 userinformation userInformation� o      �!�! 0 userlastname userLastName� R      � ��
�  .ascrerr ****      � ****�  �  � k  ��� ��� r  ����� J  ���� ��� m  ���� ���  �  � n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ���� c  ���� n  ����� 7�����
� 
cha � m  ���� �  ;  ��� n  ����� 4  ����
� 
cpar� l ������ [  ����� o  ���� 0 i  � m  ���� �  �  � o  ���� "0 userinformation userInformation� m  ��
� 
TEXT� o      �� 0 userlastname userLastName�  �+  �*  � ��� l 

����  �  �  � ��� r  
��� J  
�� ��� m  
�� ���  :  �  � n     ��� 1  �
� 
txdl� 1  �

�
 
ascr� ��� Z  n���	�� C $��� n   ��� 4   ��
� 
cpar� o  �� 0 i  � o  �� "0 userinformation userInformation� m   #�� ���  M o b i l e N u m b e r :� Q  'j���� r  *9��� n  *7��� 4  27��
� 
citm� m  56�� � n  *2��� 4  -2��
� 
cpar� o  01�� 0 i  � o  *-� �  "0 userinformation userInformation� o      ���� 0 
usermobile 
userMobile� R      ������
�� .ascrerr ****      � ****��  ��  � k  Aj�� ��� r  AN��� J  AF�� ���� m  AD�� ���  ��  � n     ��� 1  IM��
�� 
txdl� 1  FI��
�� 
ascr� ���� r  Oj��� c  Oh��� n  Od��� 7Yd����
�� 
cha � m  _a���� �  ;  bc� n  OY��� 4  RY���
�� 
cpar� l UX������ [  UX��� o  UV���� 0 i  � m  VW���� ��  ��  � o  OR���� "0 userinformation userInformation� m  dg��
�� 
TEXT� o      ���� 0 
usermobile 
userMobile��  �	  �  � ��� l oo��������  ��  ��  � ��� r  o|��� J  ot�� ���� m  or�� ���  :  ��  � n     ��� 1  w{��
�� 
txdl� 1  tw��
�� 
ascr� ��� Z  }�������� C }���� n  }���� 4  �����
�� 
cpar� o  ������ 0 i  � o  }����� "0 userinformation userInformation� m  ��   �  P h o n e N u m b e r :� Q  �� r  �� n  �� 4  ����	
�� 
citm	 m  ������  n  ��

 4  ����
�� 
cpar o  ������ 0 i   o  ������ "0 userinformation userInformation o      ���� 0 userworkphone userWorkPhone R      ������
�� .ascrerr ****      � ****��  ��   k  ��  r  �� J  �� �� m  �� �  ��   n      1  ����
�� 
txdl 1  ����
�� 
ascr �� r  �� c  �� n  �� 7���� 
�� 
cha  m  ������    ;  �� n  ��!"! 4  ����#
�� 
cpar# l ��$����$ [  ��%&% o  ������ 0 i  & m  ������ ��  ��  " o  ������ "0 userinformation userInformation m  ����
�� 
TEXT o      ���� 0 userworkphone userWorkPhone��  ��  ��  � '(' l ����������  ��  ��  ( )*) r  ��+,+ J  ��-- .��. m  ��// �00  :  ��  , n     121 1  ����
�� 
txdl2 1  ����
�� 
ascr* 343 Z  �<56����5 C ��787 n  ��9:9 4  ����;
�� 
cpar; o  ������ 0 i  : o  ������ "0 userinformation userInformation8 m  ��<< �==  P o s t a l C o d e :6 Q  �8>?@> r  �ABA n  �CDC 4  ���E
�� 
citmE m  � ���� D n  ��FGF 4  ����H
�� 
cparH o  ������ 0 i  G o  ������ "0 userinformation userInformationB o      ����  0 userpostalcode userPostalCode? R      ������
�� .ascrerr ****      � ****��  ��  @ k  8II JKJ r  LML J  NN O��O m  PP �QQ  ��  M n     RSR 1  ��
�� 
txdlS 1  ��
�� 
ascrK T��T r  8UVU c  4WXW n  0YZY 7%0��[\
�� 
cha [ m  +-���� \  ;  ./Z n  %]^] 4  %��_
�� 
cpar_ l !$`����` [  !$aba o  !"���� 0 i  b m  "#���� ��  ��  ^ o  ���� "0 userinformation userInformationX m  03��
�� 
TEXTV o      ����  0 userpostalcode userPostalCode��  ��  ��  4 cdc l ==��������  ��  ��  d efe r  =Jghg J  =Bii j��j m  =@kk �ll  :  ��  h n     mnm 1  EI��
�� 
txdln 1  BE��
�� 
ascrf opo Z  K�qr����q C KWsts n  KSuvu 4  NS��w
�� 
cparw o  QR���� 0 i  v o  KN���� "0 userinformation userInformationt m  SVxx �yy  R e a l N a m e :r Q  Z�z{|z r  ]n}~} n  ]j� 4  ej���
�� 
citm� m  hi���� � n  ]e��� 4  `e���
�� 
cpar� o  cd���� 0 i  � o  ]`���� "0 userinformation userInformation~ o      ���� 0 userfullname userFullName{ R      ������
�� .ascrerr ****      � ****��  ��  | k  v��� ��� r  v���� J  v{�� ���� m  vy�� ���  ��  � n     ��� 1  ~���
�� 
txdl� 1  {~��
�� 
ascr� ���� r  ����� c  ����� n  ����� 7������
�� 
cha � m  ������ �  ;  ��� n  ����� 4  �����
�� 
cpar� l �������� [  ����� o  ������ 0 i  � m  ������ ��  ��  � o  ������ "0 userinformation userInformation� m  ����
�� 
TEXT� o      ���� 0 userfullname userFullName��  ��  ��  p ��� l ����������  ��  ��  � ��� r  ����� J  ���� ���� m  ���� ���  :  ��  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� Z  �������� C ����� n  ����� 4  ����
� 
cpar� o  ���~�~ 0 i  � o  ���}�} "0 userinformation userInformation� m  ���� ���  S t a t e :� Q  �
���� r  ����� n  ����� 4  ���|�
�| 
citm� m  ���{�{ � n  ����� 4  ���z�
�z 
cpar� o  ���y�y 0 i  � o  ���x�x "0 userinformation userInformation� o      �w�w 0 	userstate 	userState� R      �v�u�t
�v .ascrerr ****      � ****�u  �t  � k  �
�� ��� r  ����� J  ���� ��s� m  ���� ���  �s  � n     ��� 1  ���r
�r 
txdl� 1  ���q
�q 
ascr� ��p� r  �
��� c  ���� n  ���� 7��o��
�o 
cha � m  ���n�n �  ;   � n  ����� 4  ���m�
�m 
cpar� l ����l�k� [  ����� o  ���j�j 0 i  � m  ���i�i �l  �k  � o  ���h�h "0 userinformation userInformation� m  �g
�g 
TEXT� o      �f�f 0 	userstate 	userState�p  ��  ��  � ��� l �e�d�c�e  �d  �c  � ��� r  ��� J  �� ��b� m  �� ���  :  �b  � n     ��� 1  �a
�a 
txdl� 1  �`
�` 
ascr� ��� Z  w���_�^� C )��� n  %��� 4   %�]�
�] 
cpar� o  #$�\�\ 0 i  � o   �[�[ "0 userinformation userInformation� m  %(�� ���  S t r e e t :� Q  ,s���� r  /@��� n  /<��� 4  7<�Z�
�Z 
citm� m  :;�Y�Y � n  /7��� 4  27�X�
�X 
cpar� o  56�W�W 0 i  � o  /2�V�V "0 userinformation userInformation� o      �U�U 0 
userstreet 
userStreet� R      �T�S�R
�T .ascrerr ****      � ****�S  �R  � k  Hs�� ��� r  HU   J  HM �Q m  HK �  �Q   n      1  PT�P
�P 
txdl 1  MP�O
�O 
ascr� �N r  Vs	
	 c  Vo n  Vk 7`k�M
�M 
cha  m  fh�L�L   ;  ij n  V` 4  Y`�K
�K 
cpar l \_�J�I [  \_ o  \]�H�H 0 i   m  ]^�G�G �J  �I   o  VY�F�F "0 userinformation userInformation m  kn�E
�E 
TEXT
 o      �D�D 0 
userstreet 
userStreet�N  �_  �^  � �C l xx�B�A�@�B  �A  �@  �C  �� 0 i  � m  %&�?�? � I &1�>�=
�> .corecnte****       **** n &- 2 )-�<
�< 
cpar o  &)�;�; "0 userinformation userInformation�=  ��  �  l �:�9�8�:  �9  �8    r  �  J  �!! "#" m  �$$ �%%  ; K e r b e r o s v 5 ; ;# &�7& m  ��'' �((  ;�7    n     )*) 1  ���6
�6 
txdl* 1  ���5
�5 
ascr +,+ l ���4�3�2�4  �3  �2  , -.- Q  ��/0�1/ r  ��121 n  ��343 4  ���05
�0 
citm5 m  ���/�/ 4 o  ���.�. "0 userinformation userInformation2 o      �-�- &0 userkerberosrealm userKerberosRealm0 R      �,�+�*
�, .ascrerr ****      � ****�+  �*  �1  . 676 l ���)�(�'�)  �(  �'  7 898 r  ��:;: J  ��<< =�&= m  ��>> �??  �&  ; n     @A@ 1  ���%
�% 
txdlA 1  ���$
�$ 
ascr9 BCB l ���#�"�!�#  �"  �!  C DED Z  �	FG� �F = ��HIH o  ���� 0 emailaddress emailAddressI m  ��JJ �KK  G k  ��LL MNM l ������  �  �  N OPO l ���QR�  Q   something went wrong   R �SS *   s o m e t h i n g   w e n t   w r o n gP TUT l ������  �  �  U VWV I ���XY
� .sysodlogaskr        TEXTX b  ��Z[Z b  ��\]\ b  ��^_^ o  ���� 0 errormessage errorMessage_ o  ���
� 
ret ] o  ���
� 
ret [ m  ��`` �aa h U n a b l e   t o   r e a d   e m a i l   a d d r e s s   f r o m   n e t w o r k   d i r e c t o r y .Y �bc
� 
dispb m  ���
� stic    c �de
� 
btnsd J  ��ff g�g m  ��hh �ii  O K�  e �jk
� 
dfltj J  ��ll m�m m  ��nn �oo  O K�  k �p�
� 
apprp m  ��qq �rr , O u t l o o k   E x c h a n g e   S e t u p�  W s�
s R  ���	�t
�	 .ascrerr ****      � ****�  t �u�
� 
errnu m  �������  �
  �   �  E v�v l 		����  �  �  �  ? wxw F  		yzy = 		{|{ o  		� �  0 emailformat emailFormat| m  		���� z = 		}~} o  		���� 0 displayname displayName~ m  		���� x � k  	 	��� ��� l 	 	 ��������  ��  ��  � ��� l 	 	 ������  � P J Pull user information from the account settings of the local user account   � ��� �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t� ��� l 	 	 ��������  ��  ��  � ��� r  	 	-��� n  	 	)��� 1  	%	)��
�� 
sisn� l 	 	%������ I 	 	%������
�� .sysosigtsirr   ��� null��  ��  ��  ��  � o      ���� 0 usershortname userShortName� ��� r  	.	;��� n  	.	7��� 1  	3	7��
�� 
siln� l 	.	3������ I 	.	3������
�� .sysosigtsirr   ��� null��  ��  ��  ��  � o      ���� 0 userfullname userFullName� ��� l 	<	<��������  ��  ��  � ��� l 	<	<������  � D > first.last@domain.com and full name displays as "Last, First"   � ��� |   f i r s t . l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "� ��� l 	<	<��������  ��  ��  � ��� r  	<	G��� m  	<	?�� ���  ,  � n     ��� 1  	B	F��
�� 
txdl� 1  	?	B��
�� 
ascr� ��� r  	H	R��� n  	H	P��� 4 	K	P���
�� 
citm� m  	N	O������� o  	H	K���� 0 userfullname userFullName� o      ���� 0 userfirstname userFirstName� ��� r  	S	b��� n  	S	`��� 4  	[	`���
�� 
cwor� m  	^	_���� � n  	S	[��� 4  	V	[���
�� 
citm� m  	Y	Z���� � o  	S	V���� 0 userfullname userFullName� o      ���� 0 userlastname userLastName� ��� r  	c	n��� m  	c	f�� ���  � n     ��� 1  	i	m��
�� 
txdl� 1  	f	i��
�� 
ascr� ��� r  	o	���� b  	o	���� b  	o	z��� b  	o	v��� b  	o	t��� o  	o	p���� 0 userfirstname userFirstName� m  	p	s�� ���  .� o  	t	u���� 0 userlastname userLastName� m  	v	y�� ���  @� o  	z	���� 0 
domainname 
domainName� o      ���� 0 emailaddress emailAddress� ���� l 	�	���������  ��  ��  ��  � ��� F  	�	���� = 	�	���� o  	�	����� 0 emailformat emailFormat� m  	�	����� � = 	�	���� o  	�	����� 0 displayname displayName� m  	�	����� � ��� k  	�
�� ��� l 	�	���������  ��  ��  � ��� l 	�	�������  � P J Pull user information from the account settings of the local user account   � ��� �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t� ��� l 	�	���������  ��  ��  � ��� r  	�	���� n  	�	���� 1  	�	���
�� 
sisn� l 	�	������� I 	�	�������
�� .sysosigtsirr   ��� null��  ��  ��  ��  � o      ���� 0 usershortname userShortName� ��� r  	�	���� n  	�	���� 1  	�	���
�� 
siln� l 	�	������� I 	�	�������
�� .sysosigtsirr   ��� null��  ��  ��  ��  � o      ���� 0 userfullname userFullName� ��� l 	�	���������  ��  ��  � ��� l 	�	�������  � C = first.last@domain.com and full name displays as "First Last"   � ��� z   f i r s t . l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "� ��� l 	�	���������  ��  ��  � � � r  	�	� m  	�	� �    n      1  	�	���
�� 
txdl 1  	�	���
�� 
ascr   r  	�	�	
	 n  	�	� 4  	�	���
�� 
cwor m  	�	�����  n  	�	� 4  	�	���
�� 
citm m  	�	�����  o  	�	����� 0 userfullname userFullName
 o      ���� 0 userfirstname userFirstName  r  	�	� n  	�	� 4 	�	���
�� 
citm m  	�	������� o  	�	����� 0 userfullname userFullName o      ���� 0 userlastname userLastName  r  	�	� m  	�	� �   n      1  	�	���
�� 
txdl 1  	�	���
�� 
ascr  !  r  	�
"#" b  	�
$%$ b  	�	�&'& b  	�	�()( b  	�	�*+* o  	�	����� 0 userfirstname userFirstName+ m  	�	�,, �--  .) o  	�	����� 0 userlastname userLastName' m  	�	�.. �//  @% o  	�
 ���� 0 
domainname 
domainName# o      ���� 0 emailaddress emailAddress! 0��0 l 

��������  ��  ��  ��  � 121 F  


343 = 


565 o  


���� 0 emailformat emailFormat6 m  

���� 4 = 

787 o  

���� 0 displayname displayName8 m  

���� 2 9:9 k  
"
�;; <=< l 
"
"��������  ��  ��  = >?> l 
"
"��@A��  @ P J Pull user information from the account settings of the local user account   A �BB �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t? CDC l 
"
"��������  ��  ��  D EFE r  
"
/GHG n  
"
+IJI 1  
'
+��
�� 
sisnJ l 
"
'K����K I 
"
'������
�� .sysosigtsirr   ��� null��  ��  ��  ��  H o      ���� 0 usershortname userShortNameF LML r  
0
=NON n  
0
9PQP 1  
5
9��
�� 
silnQ l 
0
5R����R I 
0
5��~�}
� .sysosigtsirr   ��� null�~  �}  ��  ��  O o      �|�| 0 userfullname userFullNameM STS l 
>
>�{�z�y�{  �z  �y  T UVU l 
>
>�xWX�x  W ? 9 first@domain.com and full name displays as "Last, First"   X �YY r   f i r s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "V Z[Z l 
>
>�w�v�u�w  �v  �u  [ \]\ r  
>
I^_^ m  
>
A`` �aa  ,  _ n     bcb 1  
D
H�t
�t 
txdlc 1  
A
D�s
�s 
ascr] ded r  
J
Tfgf n  
J
Rhih 4 
M
R�rj
�r 
citmj m  
P
Q�q�q��i o  
J
M�p�p 0 userfullname userFullNameg o      �o�o 0 userfirstname userFirstNamee klk r  
U
dmnm n  
U
bopo 4  
]
b�nq
�n 
cworq m  
`
a�m�m p n  
U
]rsr 4  
X
]�lt
�l 
citmt m  
[
\�k�k s o  
U
X�j�j 0 userfullname userFullNamen o      �i�i 0 userlastname userLastNamel uvu r  
e
pwxw m  
e
hyy �zz  x n     {|{ 1  
k
o�h
�h 
txdl| 1  
h
k�g
�g 
ascrv }~} r  
q
�� b  
q
|��� b  
q
v��� o  
q
r�f�f 0 userfirstname userFirstName� m  
r
u�� ���  @� o  
v
{�e�e 0 
domainname 
domainName� o      �d�d 0 emailaddress emailAddress~ ��c� l 
�
��b�a�`�b  �a  �`  �c  : ��� F  
�
���� = 
�
���� o  
�
��_�_ 0 emailformat emailFormat� m  
�
��^�^ � = 
�
���� o  
�
��]�] 0 displayname displayName� m  
�
��\�\ � ��� k  
�
��� ��� l 
�
��[�Z�Y�[  �Z  �Y  � ��� l 
�
��X���X  � P J Pull user information from the account settings of the local user account   � ��� �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t� ��� l 
�
��W�V�U�W  �V  �U  � ��� r  
�
���� n  
�
���� 1  
�
��T
�T 
sisn� l 
�
���S�R� I 
�
��Q�P�O
�Q .sysosigtsirr   ��� null�P  �O  �S  �R  � o      �N�N 0 usershortname userShortName� ��� r  
�
���� n  
�
���� 1  
�
��M
�M 
siln� l 
�
���L�K� I 
�
��J�I�H
�J .sysosigtsirr   ��� null�I  �H  �L  �K  � o      �G�G 0 userfullname userFullName� ��� l 
�
��F�E�D�F  �E  �D  � ��� l 
�
��C���C  � = 7 first@domain.com if full name displays as "First Last"   � ��� n   f i r s t @ d o m a i n . c o m   i f   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "� ��� l 
�
��B�A�@�B  �A  �@  � ��� r  
�
���� m  
�
��� ���   � n     ��� 1  
�
��?
�? 
txdl� 1  
�
��>
�> 
ascr� ��� r  
�
���� n  
�
���� 4  
�
��=�
�= 
cwor� m  
�
��<�< � n  
�
���� 4  
�
��;�
�; 
citm� m  
�
��:�: � o  
�
��9�9 0 userfullname userFullName� o      �8�8 0 userfirstname userFirstName� ��� r  
�
���� n  
�
���� 4 
�
��7�
�7 
citm� m  
�
��6�6��� o  
�
��5�5 0 userfullname userFullName� o      �4�4 0 userlastname userLastName� ��� r  
�
���� m  
�
��� ���  � n     ��� 1  
�
��3
�3 
txdl� 1  
�
��2
�2 
ascr� ��� r  
�
���� b  
�
���� b  
�
���� o  
�
��1�1 0 userfirstname userFirstName� m  
�
��� ���  @� o  
�
��0�0 0 
domainname 
domainName� o      �/�/ 0 emailaddress emailAddress� ��.� l 
�
��-�,�+�-  �,  �+  �.  � ��� F   ��� =  ��� o   �*�* 0 emailformat emailFormat� m  �)�) � = 
��� o  
�(�( 0 displayname displayName� m  �'�' � ��� k  �� ��� l �&�%�$�&  �%  �$  � ��� l �#���#  � P J Pull user information from the account settings of the local user account   � ��� �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t� ��� l �"�!� �"  �!  �   � ��� r  %��� n  !��� 1  !�
� 
sisn� l ���� I ���
� .sysosigtsirr   ��� null�  �  �  �  � o      �� 0 usershortname userShortName� ��� r  &3��� n  &/��� 1  +/�
� 
siln� l &+	 ��	  I &+���
� .sysosigtsirr   ��� null�  �  �  �  � o      �� 0 userfullname userFullName� 			 l 44����  �  �  	 			 l 44�		�  	 ? 9 flast@domain.com and full name displays as "Last, First"   	 �		 r   f l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "	 				 l 44����  �  �  		 	
		
 r  4?			 m  47		 �		  ,  	 n     			 1  :>�

�
 
txdl	 1  7:�	
�	 
ascr	 			 r  @J			 n  @H			 4 CH�	
� 
citm	 m  FG����	 o  @C�� 0 userfullname userFullName	 o      �� 0 userfirstname userFirstName	 			 r  KZ			 n  KX			 4  SX�	
� 
cwor	 m  VW�� 	 n  KS	 	!	  4  NS�	"
� 
citm	" m  QR�� 	! o  KN� �  0 userfullname userFullName	 o      ���� 0 userlastname userLastName	 	#	$	# r  [f	%	&	% m  [^	'	' �	(	(  	& n     	)	*	) 1  ae��
�� 
txdl	* 1  ^a��
�� 
ascr	$ 	+	,	+ r  g}	-	.	- b  gy	/	0	/ b  gs	1	2	1 b  go	3	4	3 l gm	5����	5 n  gm	6	7	6 4  hm��	8
�� 
cha 	8 m  kl���� 	7 o  gh���� 0 userfirstname userFirstName��  ��  	4 o  mn���� 0 userlastname userLastName	2 m  or	9	9 �	:	:  @	0 o  sx���� 0 
domainname 
domainName	. o      ���� 0 emailaddress emailAddress	, 	;��	; l ~~��������  ��  ��  ��  � 	<	=	< F  ��	>	?	> = ��	@	A	@ o  ������ 0 emailformat emailFormat	A m  ������ 	? = ��	B	C	B o  ������ 0 displayname displayName	C m  ������ 	= 	D	E	D k  �	F	F 	G	H	G l ����������  ��  ��  	H 	I	J	I l ����	K	L��  	K P J Pull user information from the account settings of the local user account   	L �	M	M �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t	J 	N	O	N l ����������  ��  ��  	O 	P	Q	P r  ��	R	S	R n  ��	T	U	T 1  ����
�� 
sisn	U l ��	V����	V I ��������
�� .sysosigtsirr   ��� null��  ��  ��  ��  	S o      ���� 0 usershortname userShortName	Q 	W	X	W r  ��	Y	Z	Y n  ��	[	\	[ 1  ����
�� 
siln	\ l ��	]����	] I ��������
�� .sysosigtsirr   ��� null��  ��  ��  ��  	Z o      ���� 0 userfullname userFullName	X 	^	_	^ l ����������  ��  ��  	_ 	`	a	` l ����	b	c��  	b > 8 flast@domain.com and full name displays as "First Last"   	c �	d	d p   f l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "	a 	e	f	e l ����������  ��  ��  	f 	g	h	g r  ��	i	j	i m  ��	k	k �	l	l   	j n     	m	n	m 1  ����
�� 
txdl	n 1  ����
�� 
ascr	h 	o	p	o r  ��	q	r	q n  ��	s	t	s 4  ����	u
�� 
cwor	u m  ������ 	t n  ��	v	w	v 4  ����	x
�� 
citm	x m  ������ 	w o  ������ 0 userfullname userFullName	r o      ���� 0 userfirstname userFirstName	p 	y	z	y r  ��	{	|	{ n  ��	}	~	} 4 ����	
�� 
citm	 m  ��������	~ o  ������ 0 userfullname userFullName	| o      ���� 0 userlastname userLastName	z 	�	�	� r  ��	�	�	� m  ��	�	� �	�	�  	� n     	�	�	� 1  ����
�� 
txdl	� 1  ����
�� 
ascr	� 	�	�	� r  ��	�	�	� l ��	�����	� b  ��	�	�	� b  ��	�	�	� b  ��	�	�	� n  ��	�	�	� 4  ����	�
�� 
cha 	� m  ������ 	� o  ������ 0 userfirstname userFirstName	� o  ������ 0 userlastname userLastName	� m  ��	�	� �	�	�  @	� o  ������ 0 
domainname 
domainName��  ��  	� o      ���� 0 emailaddress emailAddress	� 	���	� l   ��������  ��  ��  ��  	E 	�	�	� F  	�	�	� = 	�	�	� o  	���� 0 emailformat emailFormat	� m  	���� 	� = 	�	�	� o  ���� 0 displayname displayName	� m  ���� 	� 	�	�	� k  �	�	� 	�	�	� l ��������  ��  ��  	� 	�	�	� l ��	�	���  	� P J Pull user information from the account settings of the local user account   	� �	�	� �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t	� 	�	�	� l ��������  ��  ��  	� 	�	�	� r  +	�	�	� n  '	�	�	� 1  #'��
�� 
sisn	� l #	�����	� I #������
�� .sysosigtsirr   ��� null��  ��  ��  ��  	� o      ���� 0 usershortname userShortName	� 	�	�	� r  ,9	�	�	� n  ,5	�	�	� 1  15��
�� 
siln	� l ,1	�����	� I ,1������
�� .sysosigtsirr   ��� null��  ��  ��  ��  	� o      ���� 0 userfullname userFullName	� 	�	�	� l ::��������  ��  ��  	� 	�	�	� l ::��	�	���  	� C = shortName@domain.com and full name displays as "Last, First"   	� �	�	� z   s h o r t N a m e @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "	� 	�	�	� l ::��������  ��  ��  	� 	�	�	� r  :E	�	�	� m  :=	�	� �	�	�  ,  	� n     	�	�	� 1  @D��
�� 
txdl	� 1  =@��
�� 
ascr	� 	�	�	� r  FP	�	�	� n  FN	�	�	� 4 IN��	�
�� 
citm	� m  LM������	� o  FI���� 0 userfullname userFullName	� o      ���� 0 userfirstname userFirstName	� 	�	�	� r  Q`	�	�	� n  Q^	�	�	� 4  Y^��	�
�� 
cwor	� m  \]���� 	� n  QY	�	�	� 4  TY��	�
�� 
citm	� m  WX���� 	� o  QT���� 0 userfullname userFullName	� o      ���� 0 userlastname userLastName	� 	�	�	� r  al	�	�	� m  ad	�	� �	�	�  	� n     	�	�	� 1  gk��
�� 
txdl	� 1  dg��
�� 
ascr	� 	�	�	� r  m~	�	�	� b  mz	�	�	� b  mt	�	�	� o  mp���� 0 usershortname userShortName	� m  ps	�	� �	�	�  @	� o  ty���� 0 
domainname 
domainName	� o      ���� 0 emailaddress emailAddress	� 	���	� l ��������  ��  ��  ��  	� 	�	�	� F  ��	�	�	� = ��	�	�	� o  ������ 0 emailformat emailFormat	� m  ������ 	� = ��	�	�	� o  ���� 0 displayname displayName	� m  ���~�~ 	� 	��}	� k  ��	�	� 	�	�	� l ���|�{�z�|  �{  �z  	� 	�	�	� l ���y	�	��y  	� P J Pull user information from the account settings of the local user account   	� �
 
  �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t	� 


 l ���x�w�v�x  �w  �v  
 


 r  ��


 n  ��


 1  ���u
�u 
sisn
 l ��
	�t�s
	 I ���r�q�p
�r .sysosigtsirr   ��� null�q  �p  �t  �s  
 o      �o�o 0 usershortname userShortName
 




 r  ��


 n  ��


 1  ���n
�n 
siln
 l ��
�m�l
 I ���k�j�i
�k .sysosigtsirr   ��� null�j  �i  �m  �l  
 o      �h�h 0 userfullname userFullName
 


 l ���g�f�e�g  �f  �e  
 


 l ���d

�d  
 B < shortName@domain.com and full name displays as "First Last"   
 �

 x   s h o r t N a m e @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "
 


 l ���c�b�a�c  �b  �a  
 


 r  ��


 m  ��

 �

   
 n     
 
!
  1  ���`
�` 
txdl
! 1  ���_
�_ 
ascr
 
"
#
" r  ��
$
%
$ n  ��
&
'
& 4  ���^
(
�^ 
cwor
( m  ���]�] 
' n  ��
)
*
) 4  ���\
+
�\ 
citm
+ m  ���[�[ 
* o  ���Z�Z 0 userfullname userFullName
% o      �Y�Y 0 userfirstname userFirstName
# 
,
-
, r  ��
.
/
. n  ��
0
1
0 4 ���X
2
�X 
citm
2 m  ���W�W��
1 o  ���V�V 0 userfullname userFullName
/ o      �U�U 0 userlastname userLastName
- 
3
4
3 r  ��
5
6
5 m  ��
7
7 �
8
8  
6 n     
9
:
9 1  ���T
�T 
txdl
: 1  ���S
�S 
ascr
4 
;
<
; r  ��
=
>
= b  ��
?
@
? b  ��
A
B
A o  ���R�R 0 usershortname userShortName
B m  ��
C
C �
D
D  @
@ o  ���Q�Q 0 
domainname 
domainName
> o      �P�P 0 emailaddress emailAddress
< 
E�O
E l ���N�M�L�N  �M  �L  �O  �}  @ k  B
F
F 
G
H
G l �K�J�I�K  �J  �I  
H 
I
J
I l �H
K
L�H  
K   something went wrong   
L �
M
M *   s o m e t h i n g   w e n t   w r o n g
J 
N
O
N l �G�F�E�G  �F  �E  
O 
P
Q
P I 5�D
R
S
�D .sysodlogaskr        TEXT
R b  
T
U
T b  
V
W
V b  
X
Y
X o  �C�C 0 errormessage errorMessage
Y o  
�B
�B 
ret 
W o  �A
�A 
ret 
U m  
Z
Z �
[
[ x U n a b l e   t o   p a r s e   a c c o u n t   i n f o r m a t i o n   f r o m   l o c a l   O S   X   a c c o u n t .
S �@
\
]
�@ 
disp
\ m  �?
�? stic    
] �>
^
_
�> 
btns
^ J  !
`
` 
a�=
a m  
b
b �
c
c  O K�=  
_ �<
d
e
�< 
dflt
d J  $)
f
f 
g�;
g m  $'
h
h �
i
i  O K�;  
e �:
j�9
�: 
appr
j m  ,/
k
k �
l
l , O u t l o o k   E x c h a n g e   S e t u p�9  
Q 
m
n
m R  6@�8�7
o
�8 .ascrerr ****      � ****�7  
o �6
p�5
�6 
errn
p m  :=�4�4���5  
n 
q�3
q l AA�2�1�0�2  �1  �0  �3  �  �  ; 
r
s
r l     �/�.�-�/  �.  �-  
s 
t
u
t l     �,
v
w�,  
v 0 *------------------------------------------   
w �
x
x T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
u 
y
z
y l     �+
{
|�+  
{ &   End collecting user information   
| �
}
} @   E n d   c o l l e c t i n g   u s e r   i n f o r m a t i o n
z 
~

~ l     �*
�
��*  
� 0 *------------------------------------------   
� �
�
� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 
�
�
� l     �)�(�'�)  �(  �'  
� 
�
�
� l     �&
�
��&  
� 0 *------------------------------------------   
� �
�
� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
� 
�
�
� l     �%
�
��%  
�   Begin account setup   
� �
�
� (   B e g i n   a c c o u n t   s e t u p
� 
�
�
� l     �$
�
��$  
� 0 *------------------------------------------   
� �
�
� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
� 
�
�
� l     �#�"�!�#  �"  �!  
� 
�
�
� l CG
�� �
� O  CG
�
�
� k  IF
�
� 
�
�
� I IN���
� .miscactvnull��� ��� null�  �  
� 
�
�
� l OO����  �  �  
� 
�
�
� Q  Of
�
��
� r  R]
�
�
� o  RW�� 0 unifiedinbox unifiedInbox
� 1  W\�
� 
GrpF
� R      ���
� .ascrerr ****      � ****�  �  �  
� 
�
�
� l gg����  �  �  
� 
�
�
� Z  g�
�
���
� = gn
�
�
� o  gl�� (0 verifyemailaddress verifyEMailAddress
� m  lm�
� boovtrue
� k  q�
�
� 
�
�
� r  q�
�
�
� I q��
�
�
� .sysodlogaskr        TEXT
� m  qt
�
� �
�
� X P l e a s e   v e r i f y   y o u r   e m a i l   a d d r e s s   i s   c o r r e c t .
� �

�
�
�
 
dtxt
� o  wz�	�	 0 emailaddress emailAddress
� �
�
�
� 
disp
� m  }~�� 
� �
�
�
� 
appr
� m  ��
�
� �
�
� , O u t l o o k   E x c h a n g e   S e t u p
� �
�
�
� 
btns
� J  ��
�
� 
�
�
� m  ��
�
� �
�
�  C a n c e l
� 
��
� m  ��
�
� �
�
�  V e r i f y�  
� �
��
� 
dflt
� J  ��
�
� 
��
� m  ��
�
� �
�
�  V e r i f y�  �  
� o      � �  0 verifyemail verifyEmail
� 
���
� r  ��
�
�
� n  ��
�
�
� 1  ����
�� 
ttxt
� o  ������ 0 verifyemail verifyEmail
� o      ���� 0 emailaddress emailAddress��  �  �  
� 
�
�
� l ����������  ��  ��  
� 
�
�
� Z  � 
�
�����
� = ��
�
�
� o  ������ *0 verifyserveraddress verifyServerAddress
� m  ����
�� boovtrue
� k  ��
�
� 
�
�
� r  ��
�
�
� I ����
�
�
�� .sysodlogaskr        TEXT
� m  ��
�
� �
�
� f P l e a s e   v e r i f y   y o u r   E x c h a n g e   S e r v e r   n a m e   i s   c o r r e c t .
� ��
�
�
�� 
dtxt
� o  ������  0 exchangeserver ExchangeServer
� ��
�
�
�� 
disp
� m  ������ 
� ��
�
�
�� 
appr
� m  ��
�
� �
�
� , O u t l o o k   E x c h a n g e   S e t u p
� ��
�
�
�� 
btns
� J  ��
�
� 
�
�
� m  ��
�
� �
�
�  C a n c e l
� 
���
� m  ��
�
� �
�
�  V e r i f y��  
� ��
���
�� 
dflt
� J  ��
�
� 
���
� m  ��
�
� �
�
�  V e r i f y��  ��  
� o      ���� 0 verifyserver verifyServer
� 
���
� r  ��
�
�
� n  ��
�
�
� 1  ����
�� 
ttxt
� o  ������ 0 verifyserver verifyServer
� o      ����  0 exchangeserver ExchangeServer��  ��  ��  
�    l ��������  ��  ��    l ����   "  create the Exchange account    � 8   c r e a t e   t h e   E x c h a n g e   a c c o u n t  l ��������  ��  ��   	
	 Q  � r  � I �����
�� .corecrel****      � null��   ��
�� 
kocl m  ��
�� 
Eact ����
�� 
prdt l 	~���� K  ~ ��
�� 
pnam b   m   �  M a i l b o x   -   o  ���� 0 userfullname userFullName ��
�� 
unme o  ���� 0 usershortname userShortName ��
�� 
fnam o  !$���� 0 userfullname userFullName �� !
�� 
emad  o  '*���� 0 emailaddress emailAddress! ��"#
�� 
host" o  -2����  0 exchangeserver ExchangeServer# ��$%
�� 
usss$ o  5:���� 60 exchangeserverrequiresssl ExchangeServerRequiresSSL% ��&'
�� 
port& o  =B���� .0 exchangeserversslport ExchangeServerSSLPort' ��()
�� 
ExLS( o  EJ���� "0 directoryserver DirectoryServer) ��*+
�� 
LDAu* o  MR���� N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication+ ��,-
�� 
LDSL, o  UZ���� 80 directoryserverrequiresssl DirectoryServerRequiresSSL- ��./
�� 
LDMX. o  ]b���� >0 directoryservermaximumresults DirectoryServerMaximumResults/ ��01
�� 
LDSB0 o  ej���� 60 directoryserversearchbase DirectoryServerSearchBase1 ��23
�� 
ExPm2 o  mr���� *0 downloadheadersonly downloadHeadersOnly3 ��4��
�� 
pBAD4 o  uz���� *0 disableautodiscover disableAutodiscover��  ��  ��  ��   o      ���� (0 newexchangeaccount newExchangeAccount R      ������
�� .ascrerr ****      � ****��  ��   k  ��55 676 l ����������  ��  ��  7 898 l ����:;��  :   something went wrong   ; �<< *   s o m e t h i n g   w e n t   w r o n g9 =>= l ����������  ��  ��  > ?@? I ����AB
�� .sysodlogaskr        TEXTA b  ��CDC b  ��EFE b  ��GHG o  ������ 0 errormessage errorMessageH o  ����
�� 
ret F o  ����
�� 
ret D m  ��II �JJ D U n a b l e   t o   c r e a t e   E x c h a n g e   a c c o u n t .B ��KL
�� 
dispK m  ����
�� stic    L ��MN
�� 
btnsM J  ��OO P��P m  ��QQ �RR  O K��  N ��ST
�� 
dfltS J  ��UU V��V m  ��WW �XX  O K��  T ��Y��
�� 
apprY m  ��ZZ �[[ , O u t l o o k   E x c h a n g e   S e t u p��  @ \]\ R  ������^
�� .ascrerr ****      � ****��  ^ ��_��
�� 
errn_ m  ����������  ] `��` l ����������  ��  ��  ��  
 aba l ����������  ��  ��  b cdc l ����ef��  e e _ The following lines enable Kerberos support if the userKerberos property above is set to true.   f �gg �   T h e   f o l l o w i n g   l i n e s   e n a b l e   K e r b e r o s   s u p p o r t   i f   t h e   u s e r K e r b e r o s   p r o p e r t y   a b o v e   i s   s e t   t o   t r u e .d hih l ����������  ��  ��  i jkj Z  �Clm����l = ��non o  ������ 0 usekerberos useKerberoso m  ����
�� boovtruem Q  �?pqrp k  ��ss tut r  ��vwv o  ������ 0 usekerberos useKerberosw n      xyx 1  ����
�� 
Kerby o  ������ (0 newexchangeaccount newExchangeAccountu z��z r  ��{|{ o  ������ &0 userkerberosrealm userKerberosRealm| n      }~} 1  ����
�� 
ExGI~ o  ������ (0 newexchangeaccount newExchangeAccount��  q R      ������
�� .ascrerr ****      � ****��  ��  r k  �? ��� l ����������  ��  ��  � ��� l ��������  �   something went wrong   � ��� *   s o m e t h i n g   w e n t   w r o n g� ��� l ����~�}�  �~  �}  � ��� I �2�|��
�| .sysodlogaskr        TEXT� b  ���� b  ���� b  ���� o  ��{�{ 0 errormessage errorMessage� o  �z
�z 
ret � o  �y
�y 
ret � m  �� ��� ^ U n a b l e   t o   s e t   E x c h a n g e   a c c o u n t   t o   u s e   K e r b e r o s .� �x��
�x 
disp� m  �w
�w stic    � �v��
�v 
btns� J  �� ��u� m  �� ���  O K�u  � �t��
�t 
dflt� J  !&�� ��s� m  !$�� ���  O K�s  � �r��q
�r 
appr� m  ),�� ��� , O u t l o o k   E x c h a n g e   S e t u p�q  � ��� R  3=�p�o�
�p .ascrerr ****      � ****�o  � �n��m
�n 
errn� m  7:�l�l���m  � ��k� l >>�j�i�h�j  �i  �h  �k  ��  ��  k ��� l DD�g�f�e�g  �f  �e  � ��� l DD�d���d  � M G The Me Contact record is automatically created with the first account.   � ��� �   T h e   M e   C o n t a c t   r e c o r d   i s   a u t o m a t i c a l l y   c r e a t e d   w i t h   t h e   f i r s t   a c c o u n t .� ��� l DD�c���c  � a [ Set the first name, last name, email address and other information using Active Directory.   � ��� �   S e t   t h e   f i r s t   n a m e ,   l a s t   n a m e ,   e m a i l   a d d r e s s   a n d   o t h e r   i n f o r m a t i o n   u s i n g   A c t i v e   D i r e c t o r y .� ��� l DD�b�a�`�b  �a  �`  � ��� r  DO��� o  DE�_�_ 0 userfirstname userFirstName� n      ��� 1  JN�^
�^ 
pFrN� 1  EJ�]
�] 
meCn� ��� r  P[��� o  PQ�\�\ 0 userlastname userLastName� n      ��� 1  VZ�[
�[ 
pLsN� 1  QV�Z
�Z 
meCn� ��� r  \v��� K  \l�� �Y��
�Y 
radd� o  _b�X�X 0 emailaddress emailAddress� �W��V
�W 
type� m  eh�U
�U EATyeWrk�V  � n      ��� 1  qu�T
�T 
EmAd� 1  lq�S
�S 
meCn� ��� r  w���� o  wx�R�R  0 userdepartment userDepartment� n      ��� 1  }��Q
�Q 
Dptm� 1  x}�P
�P 
meCn� ��� r  ����� o  ���O�O 0 
useroffice 
userOffice� n      ��� 1  ���N
�N 
Ofic� 1  ���M
�M 
meCn� ��� r  ����� o  ���L�L 0 usercompany userCompany� n      ��� 1  ���K
�K 
Cmpy� 1  ���J
�J 
meCn� ��� r  ����� o  ���I�I 0 userworkphone userWorkPhone� n      ��� 1  ���H
�H 
bsNm� 1  ���G
�G 
meCn� ��� r  ����� o  ���F�F 0 
usermobile 
userMobile� n      ��� 1  ���E
�E 
mbNm� 1  ���D
�D 
meCn� ��� r  ����� o  ���C�C 0 userfax userFax� n      ��� 1  ���B
�B 
bFax� 1  ���A
�A 
meCn� ��� r  ����� o  ���@�@ 0 	usertitle 	userTitle� n      ��� 1  ���?
�? 
pTtl� 1  ���>
�> 
meCn� ��� r  ����� o  ���=�= 0 
userstreet 
userStreet� n      ��� 1  ���<
�< 
bStA� 1  ���;
�; 
meCn� � � r  �� o  ���:�: 0 usercity userCity n       1  ���9
�9 
bCty 1  ���8
�8 
meCn   r  �� o  ���7�7 0 	userstate 	userState n      	
	 1  ���6
�6 
bSta
 1  ���5
�5 
meCn  r  � o  ���4�4  0 userpostalcode userPostalCode n       1  ��3
�3 
bZip 1  ���2
�2 
meCn  r   o  �1�1 0 usercountry userCountry n       1  �0
�0 
bCou 1  �/
�/ 
meCn  r    o  �.�. 0 userwebpage userWebPage n       1  �-
�- 
bsWP 1  �,
�, 
meCn  l !!�+�*�)�+  �*  �)     l !!�(!"�(  !   We're done.   " �##    W e ' r e   d o n e .  $%$ l !!�'�&�%�'  �&  �%  % &'& I !D�$()
�$ .sysodlogaskr        TEXT( m  !$** �++ � O u t l o o k   i s   r e a d y   t o   u s e .   E n t e r   y o u r   e m a i l   p a s s w o r d   w h e n   p r o m p t e d .) �#,-
�# 
btns, J  ',.. /�"/ m  '*00 �11  O K�"  - �!23
�! 
dflt2 J  /444 5� 5 m  /266 �77  O K�   3 �89
� 
disp8 m  78�� 9 �:�
� 
appr: m  ;>;; �<< , O u t l o o k   E x c h a n g e   S e t u p�  ' =�= l EE����  �  �  �  
� m  CF>>�                                                                                  OPIM  alis    x  Macintosh HD               ����H+     �Microsoft Outlook.app                                          ��T�;~�        ����  	                Applications    ��Q�      �;��       �  0Macintosh HD:Applications: Microsoft Outlook.app  ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  "Applications/Microsoft Outlook.app  / ��  �   �  
� ?@? l     ����  �  �  @ ABA l HOC��C I HO�D�
� .sysoexecTEXT���     TEXTD m  HKEE �FF � r m   $ H O M E / L i b r a r y / L a u n c h A g e n t s / n e t . t a l k i n g m o o s e . O u t l o o k E x c h a n g e S e t u p 5 . 0 . p l i s t�  �  �  B GHG l PWI��I I PW�J�
� .sysoexecTEXT���     TEXTJ m  PSKK �LL r l a u n c h c t l   r e m o v e   n e t . t a l k i n g m o o s e . O u t l o o k E x c h a n g e S e t u p 5 . 0�  �  �  H MNM l     �OP�  O 0 *------------------------------------------   P �QQ T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -N RSR l     �TU�  T   End account setup   U �VV $   E n d   a c c o u n t   s e t u pS W�
W l     �	XY�	  X 0 *------------------------------------------   Y �ZZ T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -�
       �[� 8�� b���� ��  ����������������\�  [ �������������������������������������������� 0 usekerberos useKerberos��  0 exchangeserver ExchangeServer�� 60 exchangeserverrequiresssl ExchangeServerRequiresSSL�� .0 exchangeserversslport ExchangeServerSSLPort�� "0 directoryserver DirectoryServer�� N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication�� 80 directoryserverrequiresssl DirectoryServerRequiresSSL�� 00 directoryserversslport DirectoryServerSSLPort�� >0 directoryservermaximumresults DirectoryServerMaximumResults�� 60 directoryserversearchbase DirectoryServerSearchBase�� N0 %getuserinformationfromactivedirectory %getUserInformationFromActiveDirectory�� 0 
domainname 
domainName�� 0 emailformat emailFormat�� 0 displayname displayName�� (0 verifyemailaddress verifyEMailAddress�� *0 verifyserveraddress verifyServerAddress�� *0 downloadheadersonly downloadHeadersOnly�� 0 unifiedinbox unifiedInbox�� *0 disableautodiscover disableAutodiscover�� 0 errormessage errorMessage
�� .aevtoappnull  �   � ****
� boovtrue
� boovtrue��
� boovtrue
� boovtrue����
�  boovtrue�� �� 
�� boovfals
�� boovfals
�� boovfals
�� boovfals
�� boovfals\ ��]����^_��
�� .aevtoappnull  �   � ****] k    W`` �aa �bb �cc �dd �ee �ff �gg  hh ii jj kk ll #mm *nn 1oo :pp 
�qq Arr G����  ��  ��  ^ ���� 0 i  _ ������������������������������!��(��/��6��\����������r������z�����������������������������������������#0D_l������� ��4O\p������$?L`{������ /<Pkx��������$'��>J`hnq��������������,.`y����		'	9	k	�	���	�	�	�

7
C
Z
b
h
k>����
���
�
�
�
�������
�
�
�
�
�������������������������������������������IQWZ����������������������������������������������~*06;EK�� 0 userfirstname userFirstName�� 0 userlastname userLastName��  0 userdepartment userDepartment�� 0 
useroffice 
userOffice�� 0 usercompany userCompany�� 0 userworkphone userWorkPhone�� 0 
usermobile 
userMobile�� 0 userfax userFax�� 0 	usertitle 	userTitle�� 0 
userstreet 
userStreet�� 0 usercity userCity�� 0 	userstate 	userState��  0 userpostalcode userPostalCode�� 0 usercountry userCountry�� 0 userwebpage userWebPage
�� .sysoexecTEXT���     TEXT�� 0 netbiosdomain netbiosDomain��  ��  
�� 
ret 
�� 
disp
�� stic    
�� 
btns
�� 
dflt
�� 
appr�� 
�� .sysodlogaskr        TEXT
�� 
errn����
�� 
ascr
�� 
txdl�� "0 userinformation userInformation
�� 
cpar
�� .corecnte****       ****
�� 
citm�� 0 emailaddress emailAddress
�� 
cha 
�� 
TEXT�� 0 usershortname userShortName�� 0 userfullname userFullName�� &0 userkerberosrealm userKerberosRealm
�� 
bool
�� .sysosigtsirr   ��� null
�� 
sisn
�� 
siln
�� 
cwor�� 
�� .miscactvnull��� ��� null
�� 
GrpF
�� 
dtxt�� 
�� 0 verifyemail verifyEmail
�� 
ttxt�� 0 verifyserver verifyServer
�� 
kocl
�� 
Eact
�� 
prdt
�� 
pnam
�� 
unme
�� 
fnam
�� 
emad
�� 
host
�� 
usss
�� 
port
�� 
ExLS
�� 
LDAu
�� 
LDSL
�� 
LDMX
�� 
LDSB
�� 
ExPm
�� 
pBAD�� 
�� .corecrel****      � null�� (0 newexchangeaccount newExchangeAccount
�� 
Kerb
�� 
ExGI
�� 
meCn
�� 
pFrN
�� 
pLsN
�� 
radd
�� 
type
�� EATyeWrk
�� 
EmAd
�� 
Dptm
�� 
Ofic
�� 
Cmpy
�� 
bsNm
�� 
mbNm
�� 
bFax
�� 
pTtl
�� 
bStA
�� 
bCty
�� 
bSta
�� 
bZip
� 
bCou
�~ 
bsWP��X�E�O�E�O�E�O�E�O�E�O�E�O�E�O�E�Oa E` Oa E` Oa E` Oa E` Oa E` Oa E` Oa E` Ob  
e � a j E`  W EX ! "b  _ #%_ #%a $%a %a &a 'a (kva )a *kva +a ,a - .O)a /a 0lhO &a 1kv_ 2a 3,FOa 4_  %a 5%j E` 6W EX ! "b  _ #%_ #%a 7%a %a &a 'a 8kva )a 9kva +a :a - .O)a /a 0lhO[k_ 6a ;-j <kh  a =kv_ 2a 3,FO_ 6a ;�/a > L _ 6a ;�/a ?l/E` @W 2X ! "a Akv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E` @Y hOa Dkv_ 2a 3,FO_ 6a ;�/a E L _ 6a ;�/a ?l/E` W 2X ! "a Fkv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E` Y hOa Gkv_ 2a 3,FO_ 6a ;�/a H H _ 6a ;�/a ?l/E�W 0X ! "a Ikv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E�Y hOa Jkv_ 2a 3,FO_ 6a ;�/a K H _ 6a ;�/a ?l/E�W 0X ! "a Lkv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E�Y hOa Mkv_ 2a 3,FO_ 6a ;�/a N H _ 6a ;�/a ?l/E�W 0X ! "a Okv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E�Y hOa Pkv_ 2a 3,FO_ 6a ;�/a Q L _ 6a ;�/a ?l/E` RW 2X ! "a Skv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E` RY hOa Tkv_ 2a 3,FO_ 6a ;�/a U L _ 6a ;�/a ?l/E` W 2X ! "a Vkv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E` Y hOa Wkv_ 2a 3,FO_ 6a ;�/a X L _ 6a ;�/a ?l/E` W 2X ! "a Ykv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E` Y hOa Zkv_ 2a 3,FO_ 6a ;�/a [ H _ 6a ;�/a ?l/E�W 0X ! "a \kv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E�Y hOa ]kv_ 2a 3,FO_ 6a ;�/a ^ H _ 6a ;�/a ?l/E�W 0X ! "a _kv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E�Y hOa `kv_ 2a 3,FO_ 6a ;�/a a L _ 6a ;�/a ?l/E` W 2X ! "a bkv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E` Y hOa ckv_ 2a 3,FO_ 6a ;�/a d H _ 6a ;�/a ?l/E�W 0X ! "a ekv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E�Y hOa fkv_ 2a 3,FO_ 6a ;�/a g H _ 6a ;�/a ?l/E�W 0X ! "a hkv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E�Y hOa ikv_ 2a 3,FO_ 6a ;�/a j H _ 6a ;�/a ?l/E�W 0X ! "a kkv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E�Y hOa lkv_ 2a 3,FO_ 6a ;�/a m L _ 6a ;�/a ?l/E` W 2X ! "a nkv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E` Y hOa okv_ 2a 3,FO_ 6a ;�/a p L _ 6a ;�/a ?l/E` qW 2X ! "a rkv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E` qY hOa skv_ 2a 3,FO_ 6a ;�/a t L _ 6a ;�/a ?l/E` W 2X ! "a ukv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E` Y hOa vkv_ 2a 3,FO_ 6a ;�/a w L _ 6a ;�/a ?l/E` W 2X ! "a xkv_ 2a 3,FO_ 6a ;�k/[a B\[Zl\62a C&E` Y hOP[OY��Oa ya zlv_ 2a 3,FO _ 6a ?l/E` {W X ! "hOa |kv_ 2a 3,FO_ @a }  Cb  _ #%_ #%a ~%a %a &a 'a kva )a �kva +a �a - .O)a /a 0lhY hOPY<b  k 	 b  k a �& k*j �a �,E` RO*j �a �,E` qOa �_ 2a 3,FO_ qa ?i/E�O_ qa ?k/a �k/E�Oa �_ 2a 3,FO�a �%�%a �%b  %E` @OPY�b  k 	 b  l a �& k*j �a �,E` RO*j �a �,E` qOa �_ 2a 3,FO_ qa ?k/a �k/E�O_ qa ?i/E�Oa �_ 2a 3,FO�a �%�%a �%b  %E` @OPY:b  l 	 b  k a �& e*j �a �,E` RO*j �a �,E` qOa �_ 2a 3,FO_ qa ?i/E�O_ qa ?k/a �k/E�Oa �_ 2a 3,FO�a �%b  %E` @OPY�b  l 	 b  l a �& e*j �a �,E` RO*j �a �,E` qOa �_ 2a 3,FO_ qa ?k/a �k/E�O_ qa ?i/E�Oa �_ 2a 3,FO�a �%b  %E` @OPYDb  m 	 b  k a �& l*j �a �,E` RO*j �a �,E` qOa �_ 2a 3,FO_ qa ?i/E�O_ qa ?k/a �k/E�Oa �_ 2a 3,FO�a Bk/�%a �%b  %E` @OPY�b  m 	 b  l a �& l*j �a �,E` RO*j �a �,E` qOa �_ 2a 3,FO_ qa ?k/a �k/E�O_ qa ?i/E�Oa �_ 2a 3,FO�a Bk/�%a �%b  %E` @OPY@b  a � 	 b  k a �& g*j �a �,E` RO*j �a �,E` qOa �_ 2a 3,FO_ qa ?i/E�O_ qa ?k/a �k/E�Oa �_ 2a 3,FO_ Ra �%b  %E` @OPY �b  a � 	 b  l a �& g*j �a �,E` RO*j �a �,E` qOa �_ 2a 3,FO_ qa ?k/a �k/E�O_ qa ?i/E�Oa �_ 2a 3,FO_ Ra �%b  %E` @OPY Bb  _ #%_ #%a �%a %a &a 'a �kva )a �kva +a �a - .O)a /a 0lhOPOa ��*j �O b  *a �,FW X ! "hOb  e  Aa �a �_ @a %ka +a �a 'a �a �lva )a �kva � .E` �O_ �a �,E` @Y hOb  e  Ea �a �b  a %ka +a �a 'a �a �lva )a �kva � .E` �O_ �a �,Ec  Y hO �*a �a �a �a �a �_ q%a �_ Ra �_ qa �_ @a �b  a �b  a �b  a �b  a �b  a �b  a �b  a �b  	a �b  a �b  a �a � �E` �W GX ! "b  _ #%_ #%a �%a %a &a 'a �kva )a �kva +a �a - .O)a /a 0lhOPOb   e  i b   _ �a �,FO_ {_ �a �,FW GX ! "b  _ #%_ #%a �%a %a &a 'a �kva )a �kva +a �a - .O)a /a 0lhOPY hO�*a �,a �,FO�*a �,a �,FOa �_ @a �a �a �*a �,a �,FO�*a �,a �,FO�*a �,a �,FO�*a �,a �,FO�*a �,a �,FO�*a �,a �,FO�*a �,a �,FO_ *a �,a �,FO_ *a �,a �,FO_ *a �,a �,FO_ *a �,a �,FO_ *a �,a �,FO_ *a �,a �,FO_ *a �,a �,FOa �a 'a �kva )a �kva %ka +a �a - .OPUOa �j Oa �j  ascr  ��ޭ