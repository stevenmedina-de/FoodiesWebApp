namespace FoodiesWebApp.Models
{
	public class MealPhoto
    {
        public int ID { get; set; }
        public byte[] Photo { get; set; }
        public string Description { get; set; }
        public int UserID { get; set; }
        public int MealID { get; set; }

        public User User { get; set; }
        public Meal Meal { get; set; }
    }
}