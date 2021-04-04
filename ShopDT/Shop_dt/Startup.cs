using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Shop_dt.Startup))]
namespace Shop_dt
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
