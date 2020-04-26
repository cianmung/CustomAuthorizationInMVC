using CustomAuthorizationInMVC.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CustomAuthorizationInMVC.Models
{
    public class Repository
    {
        public USER GetUserDetails(string UserName, string Password)
        {
            USER user = new USER();
            using (UserDBContext db = new UserDBContext())
            {
                user = db.USERS.Where(u => u.UserName.ToLower() == UserName.ToLower() &&
                                      u.Password == Password).FirstOrDefault();
            }
            return user;
        }
    }
}