using System;

namespace FoodiesWebApp.Models
{
    public class Patronage
    {
        public int ID { get; set; }
        public string Feeling { get; set; }
        public DateTime PatronDateTime { get; set; }
        public int RestaurantID { get; set; }
        public int UserID { get; set; }
        public int MealID { get; set; }

        public User User { get; set; }
        public Meal Meal { get; set; }
        public Restaurant Restaurant { get; set; }
    }
}
