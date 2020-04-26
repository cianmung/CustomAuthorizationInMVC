using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CustomAuthorizationInMVC.Startup))]
namespace CustomAuthorizationInMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
