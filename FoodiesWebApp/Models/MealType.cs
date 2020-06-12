namespace FoodiesWebApp.Models
{
    public class MealType
    {
        public int ID { get; set; }
        public int MealID { get; set; }
        public string Type { get; set; }

        public Meal Meal { get; set; }
    }
}
