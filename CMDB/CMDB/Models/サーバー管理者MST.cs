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
    
    public partial class サーバー管理者MST
    {
        public サーバー管理者MST()
        {
            this.サーバーMST = new HashSet<サーバーMST>();
        }
    
        public int サーバー管理者ID { get; set; }
        public string サーバー管理者名 { get; set; }
        public System.DateTime 登録日時 { get; set; }
        public string 登録者 { get; set; }
    
        public virtual ICollection<サーバーMST> サーバーMST { get; set; }
    }
}
