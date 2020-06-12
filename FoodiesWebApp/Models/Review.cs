using System;

namespace FoodiesWebApp.Models
{
    public class Review
    {
        public int ID { get; set; }
        public int Rating { get; set; }
        public string Description { get; set; }
        public DateTime ReviewDateTime { get; set; }
        public int RestaurantID { get; set; }
        public int UserID { get; set; }

        public User User { get; set; }
        public Restaurant Restaurant { get; set; }
    }
}
