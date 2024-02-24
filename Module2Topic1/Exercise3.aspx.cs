using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs
        }
        protected void CalcClick(object sender, EventArgs e)
        {
            float percntGrade;
            bool floatTest = float.TryParse(percentageGrade.Text, out percntGrade);
            
            if (!floatTest || percntGrade > 100 || percntGrade < 0)
            {
                Response.Write($"<script>alert('Please enter a number between 0-100');</script>");
            }
            else
            {
                //Response.Write($"<script>alert('Success');</script>");
                if (percntGrade < 60)
                {
                    finalGrade.Text = "5.00";
                }
                else if (percntGrade >= 60.00 && percntGrade <= 64.50)
                {
                    finalGrade.Text = "3.00";
                }
                else if(percntGrade >= 64.51 && percntGrade <= 69.00)
                {
                    finalGrade.Text = "2.75";
                }
                else if (percntGrade >= 69.01 && percntGrade <= 73.50)
                {
                    finalGrade.Text = "2.50";
                }
                else if (percntGrade >= 73.51 && percntGrade <= 78.00)
                {
                    finalGrade.Text = "2.25";
                }
                else if (percntGrade >= 78.01 && percntGrade <= 82.50)
                {
                    finalGrade.Text = "2.00";
                }
                else if (percntGrade >= 82.51 && percntGrade <= 87.00)
                {
                    finalGrade.Text = "1.75";
                }
                else if (percntGrade >= 87.01 && percntGrade <= 91.50)
                {
                    finalGrade.Text = "1.50";
                }
                else if (percntGrade >= 91.51 && percntGrade <= 96.00)
                {
                    finalGrade.Text = "1.25";
                }
                else if (percntGrade > 96.00)
                {
                    finalGrade.Text = "1.00";
                    Response.Write($"<script>alert('Congratulations on getting 1.00!');</script>");
                }
            }
        }
    }
}