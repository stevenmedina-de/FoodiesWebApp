namespace FoodiesWebApp.Models
{
    public class RestaurantType
    {
        public int ID { get; set; }
        public int RestaurantID { get; set; }
        public string Type { get; set; }

        public Restaurant Restaurant { get; set; }
    }
}
