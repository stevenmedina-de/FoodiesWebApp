using System.Collections.Generic;

namespace FoodiesWebApp.Models
{
    public class Restaurant
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public byte[] Brand { get; set; }

        public ICollection<Review> Reviews { get; set; }
        public ICollection<Patronage> Patrons { get; set; }
        public ICollection<MealAvailability> Availabilities { get; set; }
        public ICollection<RestaurantType> Types { get; set; }
    }
}
