using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace BeneCoASP.Models
{
    public class Staff // staff entity
    {
        [Key]
        public int StaffCode { get; set; } // employee code primary key
        public string Name { get; set; } // name of employee
    
        [DataType(DataType.Date)]
        public DateTime Birth { get; set; } // birth of employee

        public IList<Job> Jobs { get; set; } // for FK reference
        public List<Benefit> Benefits { get; set; } // for list of benfits: making ref for FK
       
        public Staff()
        {
            Benefits = new List<Benefit>();// object creation
            Jobs = new List<Job>(); // object creation for list of all jobs 
        }
    }
}
