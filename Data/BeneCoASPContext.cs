using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using BeneCoASP.Models;

namespace BeneCoASP.Data
{
    public class BeneCoASPContext : DbContext
    {
        public BeneCoASPContext (DbContextOptions<BeneCoASPContext> options)
            : base(options)
        {
        }

        public DbSet<BeneCoASP.Models.Job> Job { get; set; }

        public DbSet<BeneCoASP.Models.Staff> Staff { get; set; }

        public DbSet<BeneCoASP.Models.Plan> Plan { get; set; }

        public DbSet<BeneCoASP.Models.Benefit> Benefit { get; set; }
    }
}
