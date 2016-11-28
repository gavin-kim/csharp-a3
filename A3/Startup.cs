using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(A3.Startup))]
namespace A3
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
