﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using BeneCoASP.Data;
using BeneCoASP.Models;

namespace BeneCoASP.Pages.Plans
{
    public class DetailsModel : PageModel
    {
        private readonly BeneCoASP.Data.BeneCoASPContext _context;

        public DetailsModel(BeneCoASP.Data.BeneCoASPContext context)
        {
            _context = context;
        }

        public Plan Plan { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Plan = await _context.Plan.FirstOrDefaultAsync(m => m.PlanCode == id);

            if (Plan == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
