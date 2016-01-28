using CashRegister.Core.Domain;
using CashRegister.Core.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PaymentKiosk
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            var customer = new Customer
            {
                name = textBoxCustomerName.Text,
                telephone = textBoxCustomerTelephone.Text
            };

            var creditCard = new CreditCard
            {
                CardNumber = textBoxCreditCardNumber.Text,
                Cvc = textBoxSecurityCode.Text,
                ExpiryDate = textBoxExpiryDate.Text
            };

            try
            {
                bool success = MoneyService.Charge(customer, creditCard, decimal.Parse(textBoxChargeAmount.Text));

                if (success)
                {
                    MessageBox.Show("Payment Successful");
                    Sms.SendSms(textBoxCustomerTelephone.Text, "Payment Successful");

                }
                else
                {
                    MessageBox.Show("Payment Not Successful");
                    Sms.SendSms(textBoxCustomerTelephone.Text, "Payment Not Successful");
                }
            }

            catch (Exception f)
            {
                MessageBox.Show(f.Message);
                Sms.SendSms(textBoxCustomerTelephone.Text, f.Message);
            }
        }
    }
}

