using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A3
{
    public partial class Product : System.Web.UI.Page
    {
        public string ProductId { get; set; }
        public string ProductSql { get; set; }

      

        protected void Page_Load(object sender, EventArgs e)
        {

            ProductId = Request.Url.Segments.Last();
            ProductSql = $"SELECT * FROM product WHERE id = &quot;{ProductId}&quot;";

            System.Diagnostics.Debug.WriteLine(ProductSql);
        }
    }
}