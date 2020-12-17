using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using BeneCoASP.Data;
using BeneCoASP.Models;

namespace BeneCoASP.Pages.Benefits
{
    public class IndexModel : PageModel
    {
        private readonly BeneCoASP.Data.BeneCoASPContext _context;

        public IndexModel(BeneCoASP.Data.BeneCoASPContext context)
        {
            _context = context;
        }

        public IList<Benefit> Benefit { get;set; }

        public async Task OnGetAsync()
        {
            Benefit = await _context.Benefit
                .Include(b => b.Plan)
                .Include(b => b.Staff).ToListAsync();
        }
    }
}
