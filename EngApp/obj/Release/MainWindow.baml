   M S B A M L   `   `   `  ���� A  =EngApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:EngAppEngApp  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem     EngApp.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    >d2http://schemas.microsoft.com/expression/blend/2008    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     &localclr-namespace:EngApp     6sys&clr-namespace:System;assembly=mscorlib     -     � Title$  
MainWindow��$	��700��$
��1200��$��1231.5�� � 	Resources    StyleHeaderButton �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers :� RoutedEvent P� Property	 P� Value
 N� EnterActions �� TargetProperty �� From	 �� To g� Duration g� AutoReverse  TheoryNavBar �� CornerRadius  BlueForeground �� BasedOn �� Triggers  BlueSelectedButton&   System.Windows.Controls.DataGrid)  #System.Windows.Controls.DataGridRow*  $System.Windows.Controls.DataGridCell �� Padding  MainLessonButton � RowDefinitions'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� RepeatBehavior �� 
TargetName8  2System.Windows.Media.Animation.EasingPointKeyFrame $� KeyTime $� Value J� Opacity ��Name �Name � ColumnDefinitions  ��Name! J� RenderTransformOrigin" �� ScaleY# �� ScaleX$ �� AngleY% �� AngleX& �� Angle' (� StretchDirection( J� SnapsToDevicePixels) �� 
TargetName  ResultButton  AnswerButtons��%"  &	        &	 �    &	 `    7   &	 �    7  '  �    &	 �    '� �	    &	 �    &	 i    7  �� " ��.���  � ��
 �������  � ��
 �������  � ��$ Center=���  � ��$ 	30,0,30,0q���  � �� �� " ��.R��� ._��� $��18(�$
��Bold"�#��z��#��z��#��z��#��z�� :� $ 
MouseEnter��P�  �@J�IsMouseOver	 . . ���  �@�Cursor$
 Hand��
 �� .���� .���� $1 +(Button.Foreground).(SolidColorBrush.Color)�$ 	LightGrayX�$
 GrayX�$ 0:0:0.1D� .  P�  �@J�IsMouseOver	 .  . ���  � ��
 ������� " ��.���  � ��$ 16(���  � ��$ 1q���  � ��$ 25����  � ��$ 30����  � ��$ 3q���  � �� �� " ��.R��� #��z��#��z��$��1q�$ 4��._��� #��z��#��z��$��Center=�$��Center=� P�  �@J�IsMouseOver	 .  . ���  � ��
 �������  � ��
 �������  � ��
 �����P�  �@J�IsMouseOver	 . . ���  �@�Cursor$
 Hand��
 �� .���� .���� $1 +(Button.Background).(SolidColorBrush.Color)�$ WhiteX�$ 	LightGrayX�$ 0:0:0.1D� .  �� $2 ,(Button.BorderBrush).(SolidColorBrush.Color)�$ 	LightGrayX�$
 GrayX�$ 0:0:0.1D� .  �� " ��8   .���  � �� �#1CB0F6 P�  �@J�IsMouseOver	 .  . ���  � �� �#1CB0F6�� " ��8   .���  � �� �#1CB0F6��  � ��
 �������  � �� �#0892fe P�  �@J�IsMouseOver	 .  . ���  � ��
 �������  � �� �#1CB0F6��  � ��$ 0q��� "  .���  � �� �#DDDDDD��   �@ HorizontalGridLinesBrush �#DDDDDD��  �@ VerticalGridLinesBrush �#DDDDDD��  �@ RowStyle �� "   P�  �@J�IsMouseOver	 . . ���  � ��
 �������  �@ 	CellStyle �� "   P�  �@ 
IsSelected	 . . ���  � �� �	#ff66ccff��  � ��
 ���� ��  � ��
 �   �P�  �@J�	IsFocused	 . . ���  � �� �	#ff66ccff��  � ��
 �   ���  � ��$ 1q���  � ��
 �   �.���  � ��$ 4,3,4,3q���  � ��
 ���� ��  � ��$ 1q���  � �� �� "  .R��� # z��#��z��#��z��#��z��._��� ��  �@�FocusVisualStyle �� " ��.���  � ��
 ���� �� " ��.���  � ��
 ���� ��  �@�Cursor$
 Hand����  � �� �� " ��.R��� #��z��$ 90��$��5q�._��� #��z�� P�  �@J�IsMouseOver	 . 
 �� .���� .���� $2 ,(Button.BorderBrush).(SolidColorBrush.Color)�$ 	LightGrayX�$
 GrayX�$ 0:0:0.1D� .  P�  �@J�IsMouseOver	 .  . ���  � ��
 ������� " �.���  �@�FocusVisualStyle Z� ��  �@J�SnapsToDevicePixels . ��  � ��$ 15����  � �� �#6fae5f��  � ��$ 10(���  � ��$	 5,0q���  � �� �� " �.R�� ���	#00000000 �� $
��Auto �   CommonStates��.   Determinate��  Indeterminate��. �� $ Forever��.��*� $ 	Animation��$' !(UIElement.RenderTransformOrigin)�.'�  $ 0:0:0��$ 0.5,0.5&�  $ 0:0:1.5��$ 1.95,0.5&�  $ 0:0:3��$ 0.5,0.5&�.+�� #��z��.+��� ���#000000$	 7.5��$
 0.05Q��� ���#000000$��1q�$	 7.5��$	 0.1Q�� #��z��.+��� $ 
PART_Track��� $ PART_Indicator��}�. $
��Left=� �� $  width1���� $  width2��$��0 �.+�� $ 	Animation��$! 0.5,0.5&�z�V� .~��� $" -1Q�$# 1Q��� $$ 0Q�$% 0Q��� $	& 180Q�T� .+��� #��z��$	 7.5��._�(� $
��Left=�$' DownOnly=�#��z��( . .���� ���#ffffff( . #��z��$��Center=�z�V� .~��� $" 1Q�$# -1Q��� $$ 0Q�$% 0Q��� $& 0Q�T� �� ���#000000$��1q�$	 7.5��$	 0.1Q� P�  � {�	 .  . ���  � �� �#c5c5c5P�  �@�IsIndeterminate	 . . ��� $) width1�� � ��$ 0.25* ��� $) width2�� � ��$ 0.725* ��� " ��.���  � �� �� " ��.R��� #��z��#��z��#��z��$ 10��._��� #��z��$��Center=�$��Center=�
�������$
��Bold"�$��16(� P�  �@J�IsMouseOver	 .  . ���  � ��
 �������  � ��
 �������  � ��$ 0,0,0,2q�P�  �@J�IsMouseOver	 . . ���  � ��$ 0,0,0,2q�P�  � ��	 . . ���  � ��$ 0q��� " ��8   .���  � ��$ 50����  � ��$ 30����  � ��$ 5q�.���  �� $
��auto ��� $
��auto �.+�� -   $��Lesson��$��0��$y�	Collapsed=� �� $��2* ��� .+�� $��0�� �� �� �� .+��� $��0��$��50��$��0,50,0,0q�.+�� -   $��progressBar��$��Center=�$��Center=�$	��800��* � Minimum$* 0Q�+ � Maximum$	+ 100Q��� -   $��PanelQuestion��$��Center=�$��1��$
��Left=�$��350,0,350,0q�.+��� $��0,0,0,50q�$��28(����#333$
��Bold"�$
��Wrap=�$��Перекладіть :)���� -   $��ImageContent��, �� Orientation$, 
Horizontal=�.+��� -   $��ImageQuestion��$y�Visible=�$	��100��$��Images/man.png���� $��18(�$��10,0,0,0q�$��Center=�
������ .���� 
������ $ 15��$��1q�
�������._��� -   $��QuestionLabel��- �� Padding$- 10q�$��16(��� $��350,0,350,0q�$��2��$	��220��.+��� -   $��ButtonAnswer��$y�	Collapsed=�.+��� $��50�����#777$��0,0.3,0,0.3q�._��� -	   $��AnswerLabel��$��5q�
������ $��0q��� -
   $��
TextAnswer��$y�Visible=�.+��� $	��150�����#777$ 10��$	��0.3q�._��� -   $��	AnswerBox��$��10q�$��16(�
������ $��0q�.���� � -   $��FooterQuestion��$��1��$	��160��.+��� .+��� $��0,1,0,0q�
�������._��� $
��1000��$, 
Horizontal=�.+��� -   $��footerLabel��$y�Hidden=�$��	100,0,0,0q�$��Center=�$��Center=�$	��140��$	��700��$, 
Horizontal=�.+��� -   $��footerImage��$��50��$��Images/cancel.png���� $��10q�$, Vertical=�.+��� -   $��footerLabelResult��$��24(�$
��Bold"�.��Правильно�� -   $��footerLabelAnswer��$��16(�.��(&Правильна відповідь:�� $��Center=�$��Center=�.+��� -   $��resultButton��. � Cursor$
. Hand��#��[ $	��140��$��40��$��Перевірити���� -   $��
nextButton��$y�	Collapsed=�$
. Hand��#��[ $	��140��$��40��$��Наступне��� -   $��MainContent��$��1��$y�Visible=� �� $��50 ��� $��* ��� $��20 �.+�� -   $��Header��$��0�� �� $��* ��� $
��0.6* �.+��� $��2��
�������$��0,0,0,1q��� $, 
Horizontal=�$��Center=�.+��� -   $��HeaderMainButton��#��[  $��ГОЛОВНА��$��30��$��30���� -   $��HeaderVocabularyButton��#��[  $��СЛОВНИК���� -   $��HeaderTheoryticalButton��#��[  $��ТЕОРІЯ��� -   $��Content��$��1�� �� $
��auto ��� $
��auto ��� $
��auto �.+�� -   $��MainPage��$��0��$y�Visible=� �� $��* ��� $
��0.6* �.+�� $��0�� �� $
��auto ��� .+��� $��0��$��15q�$��Center=�.+��� $
��Bold"�$��18(�
�������$��Оберіть урок���� $��
50,10,50,0q�$��1��$��Hidden=�.��� $��Center=�$��1��.+��� $��	0,0,20,40q�$, 
Horizontal=�.+��� $��Center=�$��Center=�.+��� -   $��Lesson1Button��#��[ .���� $��-5q����#1CB0F6$��10q�$ 90��._��� $��10q�$��50��$��Images/lvl1.png���� $��15(�$
��Bold"�$��Center=����#3c3c3c$��Основи���� $��Center=�$��Center=�$, 
Horizontal=�.+��� $��0,0,0,1q�
�������._��� $, 
Horizontal=�.+��� -   $��0q�
������ $
. Hand��$	��100��$��20,0,0,0q�$
��Bold"�$��18(�$��35��$��Теорія���� -   $��label1content��$y�Hidden=�
��� � �$
��Bold"�$��Right=�$��Bottom=�$��35��$	��120��$��20(�
�������$	��0/3���� $��	0,0,20,40q�$, 
Horizontal=�.+��� $��Center=�$��Center=�.+��� -   $��Lesson2Button��#��[ .���� $��-5q����#1CB0F6$��10q�$ 90��._��� $��10q�$��50��$��Images/lvl2.png���� $��15(�$
��Bold"�$��Center=����#3c3c3c$��Їжа���� $��Center=�$��Center=�$, 
Horizontal=�.+��� $��0,0,0,1q�
�������._��� $, 
Horizontal=�.+��� -   $y�Hidden=�$��0q�
������ $
. Hand��$	��100��$��20,0,0,0q�$
��Bold"�$��18(�$��35��$��Теорія���� -   $��label2content��$y�Hidden=�
��� � �$
��Bold"�$��Right=�$��Bottom=�$��35��$	��120��$��20(�
�������$	��0/3���� $��	0,0,20,40q�$, 
Horizontal=�.+��� $��Center=�$��Center=�.+��� -    $��Lesson3Button��#��[ .���� $��-5q����#1CB0F6$��10q�$ 90��._��� $��10q�$��50��$��Images/lvl3.png���� $��15(�$
��Bold"�$��Center=����#3c3c3c$��Тварини���� $��Center=�$��Center=�$, 
Horizontal=�.+��� $��0,0,0,1q�
�������._��� $, 
Horizontal=�.+��� -!   $y�Hidden=�$��0q�
������ $
. Hand��$	��100��$��20,0,0,0q�$
��Bold"�$��18(�$��35��$��Теорія���� -"   $��label3content��$y�Hidden=�
��� � �$
��Bold"�$��Right=�$��Bottom=�$��35��$	��120��$��20(�
�������$	��0/3���� $��	0,0,20,40q�$, 
Horizontal=�.+��� $��Center=�$��Center=�.+��� -#   $��Lesson4Button��#��[ .���� $��-5q����#1CB0F6$��10q�$ 90��._��� $��10q�$��50��$��Images/lvl4.png���� $��15(�$
��Bold"�$��Center=����#3c3c3c$��
Фрази���� $��Center=�$��Center=�$, 
Horizontal=�.+��� $��0,0,0,1q�
�������._��� $, 
Horizontal=�.+��� -$   $y�Hidden=�$��0q�
������ $
. Hand��$	��100��$��20,0,0,0q�$
��Bold"�$��18(�$��35��$��Теорія���� -%   $��label4content��$y�Hidden=�
��� � �$
��Bold"�$��Right=�$��Bottom=�$��35��$	��120��$��20(�
�������$	��0/3���� $��	0,0,20,40q�$, 
Horizontal=�.+��� $��Center=�$��Center=�.+��� -&   $��Lesson5Button��#��[ .���� $��-5q����#1CB0F6$��10q�$ 90��._��� $��10q�$��50��$��Images/lvl5.png���� $��15(�$
��Bold"�$��Center=����#3c3c3c$��Множина���� $��Center=�$��Center=�$, 
Horizontal=�.+��� $��0,0,0,1q�
�������._��� $, 
Horizontal=�.+��� -'   $��0q�
������ $
. Hand��$	��100��$��20,0,0,0q�$
��Bold"�$��18(�$��35��$��Теорія���� -(   $��label5content��$y�Hidden=�
��� � �$
��Bold"�$��Right=�$��Bottom=�$��35��$	��120��$��20(�
�������$	��0/3��� $��1��$��30, 30, 30, 0q�.+��� ���#ffc368$��0,0,0,3q�$ 25�����#ff9942$	��500��._��� .+��� $��Images\owl.png��$��90��$��0,40,0,0q��� $��10,20,10,15q�$��24(�$
��Bold"�
�������/ �� TextAlignment$/ Center=�Головна�� $, 
Horizontal=�$��Center=�.+�A� 
�������$��6��$��6��$��3,0,3,0q�A� 
�������$��6��$��6��$��3,0,3,0q�A� 
�������$��6��$��6��$��3,0,3,0q��� $��
10,15,10,0q�$/ Center=�$��18(�$
��Wrap=����#fafaff��Головна сторінка. На цій сторінці ви можете обрати урок на якому зупинилися та прочитати теорію за темою урока. Якщо ви не читали теорії, рекомендуємо зробити це у першу чергу. Удачі!�� $��0,30,0,0q�$��2��0 �� RadiusX$0 2��1 �� RadiusY$1 2��$	��120��
�������� -)   $��VocabularyPage��$��1��$y�	Collapsed=� �� $��* ��� $
��0.6* �.+�� $��0�� �� $
��auto ��� .+��� $��10q�$��Center=�$��0��$, 
Horizontal=�.+��� $��16(�$
��Bold"�
�������$��Пошук слова:���� ���#777$ 7��$��1q�._��� -*   $��TextVocabulary��$��Center=�$��Center=�$��5q�$��0q�$	��100��  -+   2  Name$2 VocabularyGrid��3   CanUserAddRows3 .  4   CanUserResizeColumns4 .  5   CanUserResizeRows5 .  6   SelectionMode$6 Single=�$��16(�$��1��7   AutoGenerateColumns7 .  $��Center=�8   
IsReadOnly8 . $	��480��$9   HorizontalScrollBarVisibility$9 Disabled=�":   VerticalScrollBarVisibility$: Hidden=�$	��Top=�;   Columns; 0  *System.Windows.Controls.DataGridTextColumn  <   
Foreground
< �����,	  &System.Windows.Controls.DataGridColumn= 	  Width5
  /System.Windows.Controls.DataGridLengthConverter$	= 300
 > 	  Header$> Англійською��1  +System.Windows.Controls.DataGridBoundColumn?   Binding? �� *	EngWord+  
< �����$	= 300
 $> Украінською��? �� *UaWord+� $��1��$��30, 30, 30, 0q�.+��� ���#1fca25$��0,0,0,3q�$ 25�����#1fa225$	��500��._��� .+��� $��Images\dictionary.png��$��90��$��0,40,0,0q��� $��10,20,10,15q�$��24(�$
��Bold"�
�������$/ Center=�Словник�� $, 
Horizontal=�$��Center=�.+�A� 
�������$��6��$��6��$��3,0,3,0q�A� 
�������$��6��$��6��$��3,0,3,0q�A� 
�������$��6��$��6��$��3,0,3,0q��� $��
10,15,10,0q�$/ Center=�$��18(�$
��Wrap=����#fafaff�� $��0,30,0,0q�$��2��$0 2��$1 2��$	��120��
�������� -,   $��TheoryticalPage��$��2��$y�	Collapsed=� �� $��* ��� $
��0.6* �.+�� $��0�� �� $
��auto ��� .+�� $��0��$��Center=�$��15q�.+��� --   #��[ .��1�� -.   #��[ .��2�� -/   #��[ .��3�� -0   #��[ .��4�� -1   #��[ .��5�� -2   #��[ .��6�� -3   #��[ .��7�� -4   #��[ .��8�� -5   #��[ .��9�� -6   #��[ .��10�� -7   $	��sp1��$��50,0,0,0q�$��1��$	��500��$y�	Collapsed=�.+��� $ 5��$ 20,0,0,0q�._��� .+��� $��20(�$
��Bold"����#3c3c3c$��0,0,0,15q�Про артикль�� $
��Auto=�$	��460��.���� $��15(�$
��Wrap=�sqАртикль — це частина мови, яке визначає особливості іменника.�� �� ��В англійській мові існує два види артиклів: означений the, і неозначений a (перед приголосними) / an (перед голосними).�� �� ��Артикль a/an вживається перед злічуваними іменниками в однині 1) при першому згадуванні в даній ситуації, 2) в значенні «один», 3) в значенні "один із класу", 4) в деякий стійких словосполученнях�� �� ��Артикль the вживається, коли ми говоримо про щось, про що ми вже згадували в цьому контексті, або якщо співбесідник у курсі, про який саме предмет іде мова. В таких ситуаціях можливий переклад the як цей/ця.�� �� ��Як приклад, коли людина каже I have a book, то має на увазі книжку, про яку співбесідник, мабуть, нічого не знає. Українською - "Я маю книжку".�� �� ��Якщо ж ми чуємо I have the book, то ми розуміємо, що мається на увазі книжка, що вже була згадана у цьому діалозі, або співбесідник знає, про яку книжку мова. Українською - "Я маю цю книжку (про яку йдеться)". Або те саме значення можна виразити порядком слів. Порівняйте:�� �� -+I have a book - У мене є книжка�� �� -+I have the book - Книжка у мене!�� �� ��Англійською порядок слів більш-менш фіксований, тому артиклі часто виражають те, що ми можемо виразити за допомогою інших мовних засобів.�� �� ��Артикль the також вживається з іменниками які є єдиними у свому роді (the sun, the moon, the Eiffel Tower). З назвами: кінотеатрів, музеїв, театрів, готелів, ресторанів, газет, журналів, кораблів, закладів, річок, морів, океанів, каналів, гірських хребтів, груп островів, пустель; з назвами або іменниками з of (the Tower of London, the Statue of Liberty). Коли в реченні є додаткова конкретизація, тобто, означення, яке конкретно визначає іменник (The summer of 2010. This is the book I told you about). Перед порядковими числівниками (the first, the second) та прикметниками у найвищому ступені порівняння (This is the best restaurant in New York).�� -8   $	��sp2��$��50,0,0,0q�$��1��$	��500��$y�	Collapsed=�.+��� $ 5��$ 20,0,0,0q�._��� .+��� $��20(�$
��Bold"����#3c3c3c$��0,0,0,15q�Про множину.�� $
��Auto=�$	��460��.���� $��15(�$
��Wrap=�usІменники в англійській мові мають дві форми: однину та множину.�� �� )'A boy – хлопець/хлопчик�� An apple – яблуко�� �� ��Зазвичай, для утворення множини необхідно просто додати закінчення -s (-es):�� �� )'Many boys - багато хлопців�� &$Six apples – шість яблук�� �� ��Проте, деякі іменники є винятком з правила: їхня множина утворюється не за допомогою додавання закінчення, а за допомогою зміни всередині слова або додавання спеціального закінчення. Ці іменники треба запам’ятати:�� �� 31A man (чоловік) – men (чоловіки)�� -+A woman (жінка) – women (жінки)�� 0.A child (дитина) – children (діти)�� -9   $	��sp3��$��50,0,0,0q�$��1��$	��500��$y�	Collapsed=�.+��� $ 5��$ 20,0,0,0q�._��� .+��� $��20(�$
��Bold"����#3c3c3c$��0,0,0,15q�%#Про теперішній час.�� $
��Auto=�$	��460��.���� $��15(�$
��Wrap=���Щоб сказати щось у Простому Теперішньому Часі Present Simple, треба використати дієслово у першій його формі (як воно пишеться у словнику) без частки to. Наприклад:�� �� To read - читати�� �� 1/I read a newspaper - Я читаю газету�� 86We read a newspaper - Ми читаємо газету�� �� ��При цьому варто мати на увазі, що при утворенні Present Simple з займенниками he (він), she (вона), it (воно) до дієслова потрібно додавати закінчення -s. Наприклад:�� �� 86He reads the menu - Він читає (це) меню.�� 64She reads a book - Вона читає книжку.�� �� ��Дієслово to have (мати) у Простому Теперішньому Часі Present Simple має дві форми:�� �� ECHave, що вживається з особами I, we, you, they.�� b`Has, що вживається лише з третьою особою однини he, she, it.�� �� 0.I have an apple - У мене є яблуко.�� 20You have bread - У вас/тебе є хліб.�� *(They have water - У них є вода.�� -+She has a book - У неї є книжка.�� 1/He has a child - У нього є дитина.�� -:   $	��sp4��$��50,0,0,0q�$��1��$	��500��$y�	Collapsed=�.+��� $ 5��$ 20,0,0,0q�._��� .+��� $��20(�$
��Bold"����#3c3c3c$��0,0,0,15q�(&Ще трохи про артиклі.�� $
��Auto=�$	��460��.���� $��15(�$
��Wrap=���Слова-іменники можна поділити на злічувані та незлічувані. Незлічувані – це ті, які неможливо порахувати, вони не мають множини. Наприклад – цукор (не скажемо три цукри), сіль, м’ясо, їжа.�� �� ��Так ось, із незлічуваними іменниками НІКОЛИ не використовується неозначений артикль a/an. Незлічувані іменники використовуються або з означеним артиклем the, або взагалі без артикля. Наприклад - I eat beef, he eats pork (Я їм яловичину, він їсть свинину).�� �� ��Щодо злічуваних іменників, неозначений артикль використовується перед такими словами, що означають речі чи явища, які з'являються в розмові вперше, а коли вже відомо, про що йде мова, використовується означений артикль. Наприклад - I had an orange and an egg for breakfast yesterday. The orange was very tasty. (Я їв/їла апельсин і яйце на сніданок вчора. Апельсин був дуже смачний).�� �� ��Коли ми хочемо назвати предмет чи особу, які відомі з контексту або додатково уточнити якусь деталь, ми використовуємо означений артикль the. Перекласти артикль в такому випадку іноді можна як вказівний займенник цей/ця. Наприклад – Pass me the salt, please (Передайте мені сіль. будь ласка, (сіль, яка зараз на столі, за яким ми сидимо)). The cheese is really tasty! (Сир справді смачний/Цей сир справді смачний! (сир, який ми зараз їмо чи про який почали говорити)).�� �� ��Останній випадок взятий як основа за замовчуванням на Дуолінго. Оскільки дані тут речення знаходяться поза контекстом і щоб уникнути плутанини, правильним перекладом речень типу The children eat pasta буде Ці діти їдять макарони�� -;   $	��sp5��$��50,0,0,0q�$��1��$	��500��$y�	Collapsed=�.+��� $ 5��$ 20,0,0,0q�._��� .+��� $��20(�$
��Bold"����#3c3c3c$��0,0,0,15q�Про множину.�� $
��Auto=�$	��460��.���� $��15(�$
��Wrap=���В англійській мові для утворення множини більшості іменників додається закінчення –s:�� �� =;Cats (коти), dogs (собаки), books (книжки).�� �� ��До іменників, що закінчуються на -s, -ss, -x, -sh, -ch, -tch додається закінчення -es:�� �� /-Sandwich - sandwiches (бутерброди).�� -<   $	��sp6��$��50,0,0,0q�$��1��$	��500��$y�	Collapsed=�.+��� $ 5��$ 20,0,0,0q�._��� .+��� $��20(�$
��Bold"����#3c3c3c$��0,0,0,15q�-+Про «нульовий» артикль.�� $
��Auto=�$	��460��.���� $��15(�$
��Wrap=���«Нульовим» артиклем в англійській мові називаються випадки, коли не використовується жоден з артиклів: ні неозначений a/an, ні означений the. Це трапляється перед незлічуваними (water, rice, sugar), множинними або абстрактними іменниками, що позначають невизначені поняття, або поняття взагалі.�� �� �~I drink juice (Я п’ю сік. Тобто, просто ЯКИЙСЬ сік, або ж я ВЗАГАЛІ його п’ю).�� �� �~They have books (Вони мають книжки. Тобто, у них є ЯКІСЬ книжки, або ВЗАГАЛІ є)�� �� ��He likes music.(Йому подобається музика. Тобто, йому ВЗАГАЛІ подобається слухати музику).�� -=   $	��sp7��$��50,0,0,0q�$��1��$	��500��$y�	Collapsed=�.+��� $ 5��$ 20,0,0,0q�._��� .+��� $��20(�$
��Bold"����#3c3c3c$��0,0,0,15q�'%Про присвійну форму.�� $
��Auto=�$	��460��.���� $��15(�$
��Wrap=���Є дві форми англійських присвійних займенників – звичайна та абсолютна.�� �� ��Звичайні присвійні займенники (їх ще називають притягальними) ЗАВЖДИ використовуються тільки разом з відповідним іменником і ставляться перед іменником.�� �� hfНаприклад – This is my book (Це моя книга). It is her cat (Це її кішка).�� �� ��Також Присвійні займенники в англійській мові часто використовуються там, де в українській їх не кажуть, але мають на увазі. Перед іменником, що означає частини тіла, предмети, одяг, родинні відносини, вони не перекладаються. Наприклад – He puts his hat on (Він одягає шапку). I told my sister about it (Я розповів сестрі про це).�� �� TRАбсолютна форма – це займенник без іменника.�� �� ��Абсолютні присвійні займенники у реченні виконують функції підмета, додатка, предикатива або означення. Наприклад – The book is mine (Ця книга моя). They are not yours (Вони не твої). -Where are all our books? -Mine are here. (- Де всі наші книжки? –Мої тут).�� �� ��Отже, займенники звичайної форми (займенник + іменник) – my, his, her, its, our, your, their. Займенники абсолютної форми (займенник без іменника) – mine, his, hers, its, ours, yours, theirs.�� �� ��ЗВЕРНІТЬ УВАГУ: присвійний займенник its (його, її, свій – про тварин і речі) пишеться без апострофа, тому не плутайте його з it’s - скороченою формою словосполучення it is.�� �� ��Є в англійській і присвійний відмінок. Він виражає належність предмету до чогось або когось. Для утворення присвійного відмінка потрібно додати апостроф та літеру s в кінці. Наприклад – The student‘s book (Книга цього студента). The girl’s cat (Кіт цієї дівчини).�� ->   $	��sp8��$��50,0,0,0q�$��1��$	��500��$y�	Collapsed=�.+��� $ 5��$ 20,0,0,0q�._��� .+��� $��20(�$
��Bold"����#3c3c3c$��0,0,0,15q�*(Про множину іменників�� $
��Auto=�$	��460��.���� $��15(�$
��Wrap=���Як ви вже знаєте, множина іменників в англійській мові утворюється додаванням закінчення –s(-es):�� �� ,*shirt - shirts (сорочки/блузи)�� %#skirt – skirts (спідниці)��  dress – dresses (сукні)�� �� NLДеякі іменники вживаються лише у множині:�� �� +)pants – (штани/панталони)�� clothes – (одяг)�� �� ��Не забувайте, що у Простому Теперішньому Часі (Present Simple) у реченнях із займенниками he (він), she (вона), it (воно) до дієслова потрібно додавати закінчення -s. Наприклад:�� �� HFI wear an orange dress (Я ношу помаранчеву сукню)�� USShe wears an orange dress (Вона носить помаранчеву сукню)�� 97They wear shirts (Вони носять сорочки)�� 64He wears shirts (Він носить сорочки)�� -?   $	��sp9��$��50,0,0,0q�$��1��$	��500��$y�	Collapsed=�.+��� $ 5��$ 20,0,0,0q�._��� .+��� $��20(�$
��Bold"����#3c3c3c$��0,0,0,15q�Запитання�� $
��Auto=�$	��460��.���� $��15(�$
��Wrap=���ЗАГАЛЬНЕ ЗАПИТАННЯ є найпростішим. Це питання передбачає як відповідь або “так“, або “ні“.�� �� ywФормула: допоміжне дієслово + підмет + смислове дієслово + додаток�� �� ��Do you have children? (Ви маєте дітей?) Does she read this book? (Вона читає цю книгу?) (“does” вживається в теперішньому часі з “he/she”)�� �� ��СПЕЦІАЛЬНЕ ЗАПИТАННЯ – це запитання для отримання додаткової інформації. Це питання завжди розпочинається з питального слова («що», «де», «коли», «чому», «як», «чий»), а далі вже йде допоміжне дієслово.�� �� ��Where are they? (Де вони?) What do you like? (Що вам подобається?) How does he cook borsch? (Як він готує борщ?)�� �� ��“What” може перекладатись не тільки як “що”, а також “який/яка/яке/які”. В останньому випадку після «what» слідує іменник.�� �� ��What dress does she wear? (Яке плаття вона носить?) What color is the skirt? (Який колір цієї спідниці? / Якого кольору ця спідниця?) What books do you read? (Які книги ви читаєте?)�� -@   $
��sp10��$��50,0,0,0q�$��1��$	��500��$y�	Collapsed=�.+��� $ 5��$ 20,0,0,0q�._��� .+��� $��20(�$
��Bold"����#3c3c3c$��0,0,0,15q�Прийменники�� $
��Auto=�$	��460��.���� $��15(�$
��Wrap=���IN здебільшого позначає розташування чогось/когось У приміщенні/місті/країні, або ВСЕРЕДИНІ чогось.�� �� A?ON позначає розташування НА чомусь.�� �� ��AT вживають тоді, коли мають на увазі подію, на якій хтось перебуває або щось відбувається.�� �� ��ПРИКЛАДИ: They are in the kitchen (Вони в/на кухні) She is in New York (Вона в Нью-Йорку) My cat sleeps in this box (Мій кіт спить у цій коробці) Apples are on the plate (Яблука на тарілці) My cat is on the roof (Мій кіт на даху) They are at lunch (Вони на обіді) He is at a meeting (Він на зустрічі)�� �� <:УСТАЛЕНІ СЛОВОСПОЛУЧЕННЯ З «AT»:�� �� ��at the station/airport (на вокзалі/в аеропорту) at home/work/school (вдома/на роботі/у школі)�� �� ��FOR має значення ДЛЯ (I have something for you - У мене є щось для тебе), а також може перекладатися як «за» у таких виразах:�� �� omthank for (дякувати за…) pay for (платити за…) vote for (голосувати за...)�� �� ��EXCEPT (FOR) (крім, окрім, за винятком) Якщо речення починається з EXCEPT, то вживаємо його разом з FOR (Except for the weather nothing changed - Окрім погоди нічого не змінилось). Перед прийменниками та сполучниками вживаємо лише EXCEPT (I can sleep everywhere except on a bus - Я можу спати будь-де, крім, хіба що, автобусів. He is a nice person except when he is hungry - Він приємна людина, крім випадків, коли він голодний). В решті ситуацій можна вживати обидва варіанти — з FOR і без FOR.�� �� ��DURING (протягом/під час) і AS (в той час як) мають схоже значення. Прийменник during використовується з іменниками during lunch (під час обіду), during the meal (під час їжі). Прийменник as використовується щоб додати речення: You read as I write (Ви читаєте в той час, як я пишу) He plays as I work. (Він грає в той час, як я працюю).�� �� ��BY і NEAR мають майже однакове значення (біля, коло), проте прийменник by використовується, коли щось знаходиться у безпосередній близькості, а near, коли щось знаходиться відносно недалеко.�� �� ��ПРИКЛАДИ: The book is by the newspaper.(Ця книга біля цієї газети) She walks by me. (Вона ходить біля мене) The girl sleeps near the cat. (Ця дівчина спить біля цього кота).�� -A   $��
EmptySpace��$��30q�$��1��$��Center=�$y�Visible=�$	��440��.+��� $	��200��$��Images/lens.png���� ���#3c3c3c$
��Bold"�$��24(�$"Оберіть сторінку...� $��1��$��30, 30, 30, 0q�.+��� ���#0892fe$��0,0,0,3q�$ 25�����#1CB0F6$	��500��._��� .+��� $��Images\books.png��$��90��$��0,40,0,0q��� $��10,20,10,15q�$��24(�$
��Bold"�
�������$/ Center=�Теорія�� $, 
Horizontal=�$��Center=�.+�A� 
�������$��6��$��6��$��3,0,3,0q�A� 
�������$��6��$��6��$��3,0,3,0q�A� 
�������$��6��$��6��$��3,0,3,0q��� $��
10,15,10,0q�$/ Center=�$��18(�$
��Wrap=����#fafaff��На даній сторінці ви знайдете необхідні дані для вивчення та закріплення знань з англійської мови. Рекомендується перед проходженням тестів.�� $��0,30,0,0q�$��2��$0 2��$1 2��$	��120��
�������� -B   $��Footer��$��2��$y�	Collapsed=�