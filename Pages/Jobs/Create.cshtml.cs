using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using BeneCoASP.Data;
using BeneCoASP.Models;

namespace BeneCoASP.Pages.Jobs
{
    public class CreateModel : PageModel
    {
        private readonly BeneCoASP.Data.BeneCoASPContext _context;

        public CreateModel(BeneCoASP.Data.BeneCoASPContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
        ViewData["StaffCode"] = new SelectList(_context.Set<Staff>(), "StaffCode", "StaffCode");
            return Page();
        }

        [BindProperty]
        public Job Job { get; set; }

        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Job.Add(Job);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
