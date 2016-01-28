using CashRegister.Core.Domain;
using Stripe;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CashRegister.Core.Services
{
    public class MoneyService
    {
        private const string ApiKey = "sk_test_6OKXtQpwqPLqiww4oL5SvMTq";
        public static bool Charge(Customer customer, CreditCard creditcard, decimal amount)
        {
            var chargeDetails = new StripeChargeCreateOptions();
            chargeDetails.Amount = (int)amount * 100;
            chargeDetails.Currency = "usd";
            chargeDetails.Source = new StripeSourceOptions
            {
                Object = "card",
                Number = creditcard.CardNumber,
                ExpirationMonth = creditcard.ExpiryDate.Substring(0, 2),
                ExpirationYear = creditcard.ExpiryDate.Substring(3, 2),
                Cvc = creditcard.Cvc
            };//
            var ChargeService = new StripeChargeService(ApiKey);
            var response = ChargeService.Create(chargeDetails);

            if (response.Paid == false)
            {
                throw new Exception(response.FailureMessage);
            }
            return response.Paid;

        }
    }
}
