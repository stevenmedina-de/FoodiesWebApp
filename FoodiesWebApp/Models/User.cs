using System.Collections.Generic;
using System.Data.Entity.Spatial;

namespace FoodiesWebApp.Models
{
    public class User
    {
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public byte[] ProfilePicture { get; set; }
        public string UserName { get; set; }
        public DbGeography HomeLocation { get; set; }

        public ICollection<MealPhoto> MealPhotos { get; set; }
        public ICollection<Patronage> Patronages { get; set; }
        public ICollection<Review> Reviews { get; set; }
    }
}