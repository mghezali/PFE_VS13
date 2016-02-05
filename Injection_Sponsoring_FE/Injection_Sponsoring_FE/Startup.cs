using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Injection_Sponsoring_FE.Startup))]
namespace Injection_Sponsoring_FE
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
