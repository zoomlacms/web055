using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZoomLa.BLL;
using ZoomLa.Sns.QCC;
using ZoomLa.SQLDAL;

namespace ZoomLaCMS.FX
{
    public partial class company : System.Web.UI.Page
    {
        public string cname = "杭州阿里创业投资有限公司";
        public QCCResult Company = null, Stock = null;
        public DataTable stockDT = null;//股权表
        public DataTable changeDT = null;//公司事务变更表
        protected void Page_Load(object sender, EventArgs e)
        {
            //JObject jobj = QCCAPI.Bus_GetDetailsByName("杭州阿里创业投资有限公司").Model;
            //throw new Exception(jobj["Industry"]["Industry"].ToString());
            //throw new Exception(QCCAPI.Bus_GetDetailsByName("杭州阿里创业投资有限公司").ResultStr);
            //throw new Exception(QCCAPI.Bus_GetCompanyEquityShareMap("b92ed34f1eee4ef806397552cdb4ecd5").ResultStr);

            if (!IsPostBack)
            {
                Company = QCCAPI.Bus_GetDetailsByName(cname);
                Stock = QCCAPI.Bus_GetCompanyEquityShareMap(Company.Model["KeyNo"].ToString());
                stockDT = Stock.GetDT(Stock.Model["Children"]);
                changeDT = Company.GetDT(Company.Model["ChangeRecords"]);
            }
    }
    public string ShowDate(object date)
    {
        return Convert.ToDateTime(date.ToString()).ToString("yyyy-MM-dd");
    }
}
}