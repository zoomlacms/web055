using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZoomLa.Sns.QCC;

namespace ZoomLaCMS.FX
{
    public partial class Law : System.Web.UI.Page
    {
        public string cname = "北京小桔科技有限公司";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                {
                    QCCResult result = QCCAPI.Law_SearchCourtNotice(cname);
                    CourtNotice_RPT.DataSource = result.ModelDT;
                    CourtNotice_RPT.DataBind();
                }
                {
                    QCCResult result = QCCAPI.Law_SearchCourtAnnouncement(cname);
                    CourtAnnouncent_RPT.DataSource = result.ModelDT;
                    CourtAnnouncent_RPT.DataBind();
                }
                {
                    QCCResult result = QCCAPI.Law_SearchJudgmentDoc(cname);
                    JudgmentDoc_RPT.DataSource = result.ModelDT;
                    JudgmentDoc_RPT.DataBind();
                }
                {
                    QCCResult result = QCCAPI.Law_SearchShiXin("河南亚华安全玻璃有限公司");
                    ShiXin_RPT.DataSource = result.ModelDT;
                    ShiXin_RPT.DataBind();
                }
                {
                    QCCResult result = QCCAPI.Law_SearchZhiXing("河南亚华安全玻璃有限公司");
                    ZhiXing_RPT.DataSource = result.ModelDT;
                    ZhiXing_RPT.DataBind();
                }
            }
        }
    }
}