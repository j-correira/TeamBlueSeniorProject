﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeniorProject_1
{
    public partial class Class : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnViewAssigments_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentViewSubmitAssignment.aspx");
        }
    }
}