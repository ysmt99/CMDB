//------------------------------------------------------------------------------
// <auto-generated>
//     このコードはテンプレートから生成されました。
//
//     このファイルを手動で変更すると、アプリケーションで予期しない動作が発生する可能性があります。
//     このファイルに対する手動の変更は、コードが再生成されると上書きされます。
// </auto-generated>
//------------------------------------------------------------------------------

namespace CMDB.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class JOB_担当者REL
    {
        public int JOBID { get; set; }
        public int 担当者ID { get; set; }
        public System.DateTime 登録日時 { get; set; }
        public string 登録者 { get; set; }
    
        public virtual JOBMST JOBMST { get; set; }
        public virtual 担当者MST 担当者MST { get; set; }
    }
}
