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
    
    public partial class サーバーMST
    {
        public サーバーMST()
        {
            this.サーバー_ソフトウェアバージョンREL = new HashSet<サーバー_ソフトウェアバージョンREL>();
        }
    
        public int サーバーID { get; set; }
        public string サーバー名 { get; set; }
        public int サーバー管理者ID { get; set; }
        public System.DateTime 登録日時 { get; set; }
        public string 登録者 { get; set; }
    
        public virtual ICollection<サーバー_ソフトウェアバージョンREL> サーバー_ソフトウェアバージョンREL { get; set; }
        public virtual サーバー管理者MST サーバー管理者MST { get; set; }
    }
}
