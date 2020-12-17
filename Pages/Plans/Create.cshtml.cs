using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using BeneCoASP.Data;
using BeneCoASP.Models;

namespace BeneCoASP.Pages.Plans
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
            return Page();
        }

        [BindProperty]
        public Plan Plan { get; set; }

        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Plan.Add(Plan);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
