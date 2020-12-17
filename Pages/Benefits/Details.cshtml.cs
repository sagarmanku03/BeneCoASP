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
    public class DetailsModel : PageModel
    {
        private readonly BeneCoASP.Data.BeneCoASPContext _context;

        public DetailsModel(BeneCoASP.Data.BeneCoASPContext context)
        {
            _context = context;
        }

        public Benefit Benefit { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Benefit = await _context.Benefit
                .Include(b => b.Plan)
                .Include(b => b.Staff).FirstOrDefaultAsync(m => m.Id == id);

            if (Benefit == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
