using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZoomLa.Sns.QCC;
using ZoomLa.SQLDAL;

namespace ZoomLaCMS.FX
{
    public partial class LawInfo : System.Web.UI.Page
    {
        public string MType { get { return DataConvert.CStr(Request["Type"]); } }
        public string Mid { get { return DataConvert.CStr(Request["ID"]); } }
        public QCCResult result = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                switch (MType)
                {
                    case "CourtNotice":
                        result = QCCAPI.Law_GetCourtNoticeInfo(Mid);
                        break;
                    case "JudgmentDoc":
                        result = QCCAPI.Law_GetJudgementDetail(Mid);
                        break;
                    default:
                        throw new Exception("[" + MType + "]错误");
                }
            }
        }
    }
}