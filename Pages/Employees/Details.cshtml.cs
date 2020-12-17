using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using BeneCoASP.Data;
using BeneCoASP.Models;

namespace BeneCoASP.Pages.Employees
{
    public class DetailsModel : PageModel
    {
        private readonly BeneCoASP.Data.BeneCoASPContext _context;

        public DetailsModel(BeneCoASP.Data.BeneCoASPContext context)
        {
            _context = context;
        }

        public Staff Staff { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Staff = await _context.Staff.FirstOrDefaultAsync(m => m.StaffCode == id);

            if (Staff == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
