using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CashRegister.Core.Domain
{
    public class CreditCard
    {
        public string CardNumber { get; set; }
        public string ExpiryDate { get; set; }
        public string Cvc { get; set; }
    }
}
