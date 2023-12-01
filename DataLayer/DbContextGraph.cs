using Microsoft.EntityFrameworkCore;
using WebModuleApp.Models;

namespace WebModuleApp.DataLayer
{
    public class DbContextGraph : DbContext
    {
        public DbContextGraph(DbContextOptions options) : base(options)
        {
            // Your code here
        }


        public DbSet<ModuleAppDEMO2Entities> GraphData { get; set;}
    }
}
