   M S B A M L   `   `   `  ����G  CPaymentKiosk, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:PaymentKioskPaymentKiosk  5   	       PaymentKiosk.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:PaymentKiosk     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)   .��5	      � .+�5
   
   �� -   5         ��Name$ labelCustomerName��5
      $��Customer Name��6+   $
��Left=�6C   $��	26,10,0,0q�6^   $	��Top=�6q   �� 5   
   -   5        $ labelCustomerTelephone��5      $��Customer Telephone��60   $
��Left=�6M   $��
246,10,0,0q�6h   $	��Top=�6|   �� 5   
   -   5         ��Name$ textBoxCustomerName��5      $
��Left=�6/   $��23��6J   $��	26,41,0,0q�6V    �� TextWrapping$
 Wrap=�6i   $��
John Smith��6}   $	��Top=�6�   $	��120��6�   �� 5   
   -   5        $ textBoxCustomerTelephone��5      $
��Left=�64   $��23��6O   $��
246,41,0,0q�6[   $
 Wrap=�6o   $��+18609226167��6�   $	��Top=�6�   $	��120��6�   �� 5   
   -   5        $ labelPaymentInformation��5      $��Payment Information��61   $
��Left=�6O   $��
26,100,0,0q�6j   $	��Top=�6~   $	��133��6�   �� 5   
   -   5        $ labelChargeAmount��5      $��Charge Amount ($)��6+   $
��Left=�6G   $��
26,131,0,0q�6b   $	��Top=�6v   �� 5   
   -   5        $ textBoxChargeAmount��5      $
��Left=�6/   $��23��6J   $��
26,162,0,0q�6V   $
 Wrap=�6j   $��50.00��6~   $	��Top=�6�   $	��120��6�   �� 5   
   -   5        $ labelCCNumber��5      $��CreditCard Number��6'   $
��Left=�6C   $��
26,204,0,0q�6^   $	��Top=�6r    J� RenderTransformOrigin$ 0.503,0.057&�6�   �� 5   
   -	   5        $ textBoxCreditCardNumber��5      $
��Left=�63   $��23��6N   $��
26,230,0,0q�6Z   $
 Wrap=�6n   $��4242424242424242��6�   $	��Top=�6�   $	��120��6�   �� 5   
   -
   5        $ labelExpiryDate��5      $��Expiry Date (MM/YY)��6)   $
��Left=�6G   $��195,204,0,0q�6b   $	��Top=�6w   $ 0.382,0.694&�6�   �� 5   
   -   5        $ textBoxExpiryDate��5      $
��Left=�6-   $��23��6H   $��195,230,0,0q�6T   $
 Wrap=�6i   $��02/17��6}   $	��Top=�6�   $	��120��6�   �� 5   
   -   5        $ labelSecurityCode��5      $��Security Code��6+   $
��Left=�6C   $��379,204,0,0q�6^   $	��Top=�6s   �� 5   
   -   5        $ textBoxSecurityCode��5      $
��Left=�6/   $��23��6J   $��366,230,0,0q�6V   $
 Wrap=�6k   $	��321��6   $	��Top=�6�   $	��120��6�   �� 5   
   -   5         ��Name$ button��5      $��Complete Transaction��6!   $
��Left=�6@   $��195,275,0,0q�6[   $	��Top=�6p   $	��120��6�   6�   5      5      