using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FoodiesWebApp.Models
{
    public class MealAvailability
    {
        public int ID { get; set; }
        public int MealID { get; set; }
        public int RestaurantID { get; set; }

        public Meal Meal { get; set; }
        public Restaurant Restaurant { get; set; }

    }
}
