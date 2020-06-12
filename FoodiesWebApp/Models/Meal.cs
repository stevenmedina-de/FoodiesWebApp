using System.Collections.Generic;

namespace FoodiesWebApp.Models
{
    public class Meal
    {
        public int ID { get; set; }
        public string Name { get; set; }

        public ICollection<MealPhoto> Photos { get; set; }
        public ICollection<Patronage> Patronages { get; set; }
        public ICollection<MealAvailability> Availabilities { get; set; }
        public ICollection<MealType> Types { get; set; }
    }
}