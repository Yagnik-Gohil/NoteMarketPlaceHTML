//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NotesMarketPlace.Context
{
    using System;
    using System.Collections.Generic;
    
    public partial class AdminTable
    {
        public int ID { get; set; }
        public int UID { get; set; }
        public string SecondaryEmail { get; set; }
        public string CountryCode { get; set; }
        public string PhoneNumber { get; set; }
        public string ProfilePicture { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public bool IsActive { get; set; }
    
        public virtual UserTable UserTable { get; set; }
    }
}
