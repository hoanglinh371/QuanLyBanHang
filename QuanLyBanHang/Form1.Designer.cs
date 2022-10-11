namespace QuanLyBanHang
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.nvBtn = new System.Windows.Forms.Button();
            this.khBtn = new System.Windows.Forms.Button();
            this.nccBtn = new System.Windows.Forms.Button();
            this.spBtn = new System.Windows.Forms.Button();
            this.clBtn = new System.Windows.Forms.Button();
            this.sizeBtn = new System.Windows.Forms.Button();
            this.bstBtn = new System.Windows.Forms.Button();
            this.hdbBtn = new System.Windows.Forms.Button();
            this.hdnbtn = new System.Windows.Forms.Button();
            this.exitBtn = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI Semibold", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label1.Location = new System.Drawing.Point(233, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(334, 30);
            this.label1.TabIndex = 0;
            this.label1.Text = "PHẦN MỀM QUẢN LÝ BÁN HÀNG";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // nvBtn
            // 
            this.nvBtn.Location = new System.Drawing.Point(12, 75);
            this.nvBtn.Name = "nvBtn";
            this.nvBtn.Size = new System.Drawing.Size(195, 44);
            this.nvBtn.TabIndex = 1;
            this.nvBtn.Text = "Danh sách nhân viên";
            this.nvBtn.UseVisualStyleBackColor = true;
            this.nvBtn.Click += new System.EventHandler(this.nvBtn_Click);
            // 
            // khBtn
            // 
            this.khBtn.Location = new System.Drawing.Point(303, 75);
            this.khBtn.Name = "khBtn";
            this.khBtn.Size = new System.Drawing.Size(195, 44);
            this.khBtn.TabIndex = 2;
            this.khBtn.Text = "Danh sách khách hàng";
            this.khBtn.UseVisualStyleBackColor = true;
            this.khBtn.Click += new System.EventHandler(this.khBtn_Click);
            // 
            // nccBtn
            // 
            this.nccBtn.Location = new System.Drawing.Point(593, 75);
            this.nccBtn.Name = "nccBtn";
            this.nccBtn.Size = new System.Drawing.Size(195, 44);
            this.nccBtn.TabIndex = 3;
            this.nccBtn.Text = "Danh sách nhà cung cấp";
            this.nccBtn.UseVisualStyleBackColor = true;
            this.nccBtn.Click += new System.EventHandler(this.nccBtn_Click);
            // 
            // spBtn
            // 
            this.spBtn.Location = new System.Drawing.Point(12, 175);
            this.spBtn.Name = "spBtn";
            this.spBtn.Size = new System.Drawing.Size(195, 44);
            this.spBtn.TabIndex = 4;
            this.spBtn.Text = "Danh sách sản phẩm";
            this.spBtn.UseVisualStyleBackColor = true;
            this.spBtn.Click += new System.EventHandler(this.spBtn_Click);
            // 
            // clBtn
            // 
            this.clBtn.Location = new System.Drawing.Point(303, 175);
            this.clBtn.Name = "clBtn";
            this.clBtn.Size = new System.Drawing.Size(195, 44);
            this.clBtn.TabIndex = 5;
            this.clBtn.Text = "Danh sách chất liệu sản phẩm";
            this.clBtn.UseVisualStyleBackColor = true;
            this.clBtn.Click += new System.EventHandler(this.clBtn_Click);
            // 
            // sizeBtn
            // 
            this.sizeBtn.Location = new System.Drawing.Point(593, 175);
            this.sizeBtn.Name = "sizeBtn";
            this.sizeBtn.Size = new System.Drawing.Size(195, 44);
            this.sizeBtn.TabIndex = 6;
            this.sizeBtn.Text = "Danh sách size sản phẩm";
            this.sizeBtn.UseVisualStyleBackColor = true;
            this.sizeBtn.Click += new System.EventHandler(this.sizeBtn_Click);
            // 
            // bstBtn
            // 
            this.bstBtn.Location = new System.Drawing.Point(12, 274);
            this.bstBtn.Name = "bstBtn";
            this.bstBtn.Size = new System.Drawing.Size(195, 44);
            this.bstBtn.TabIndex = 7;
            this.bstBtn.Text = "Danh sách bộ sưu tập";
            this.bstBtn.UseVisualStyleBackColor = true;
            this.bstBtn.Click += new System.EventHandler(this.bstBtn_Click);
            // 
            // hdbBtn
            // 
            this.hdbBtn.Location = new System.Drawing.Point(303, 274);
            this.hdbBtn.Name = "hdbBtn";
            this.hdbBtn.Size = new System.Drawing.Size(195, 44);
            this.hdbBtn.TabIndex = 8;
            this.hdbBtn.Text = "Hóa đơn bán";
            this.hdbBtn.UseVisualStyleBackColor = true;
            this.hdbBtn.Click += new System.EventHandler(this.hdbBtn_Click);
            // 
            // hdnbtn
            // 
            this.hdnbtn.Location = new System.Drawing.Point(593, 274);
            this.hdnbtn.Name = "hdnbtn";
            this.hdnbtn.Size = new System.Drawing.Size(195, 44);
            this.hdnbtn.TabIndex = 9;
            this.hdnbtn.Text = "Hóa đơn nhập";
            this.hdnbtn.UseVisualStyleBackColor = true;
            this.hdnbtn.Click += new System.EventHandler(this.hdnbtn_Click);
            // 
            // exitBtn
            // 
            this.exitBtn.Location = new System.Drawing.Point(593, 394);
            this.exitBtn.Name = "exitBtn";
            this.exitBtn.Size = new System.Drawing.Size(195, 44);
            this.exitBtn.TabIndex = 10;
            this.exitBtn.Text = "Thoát";
            this.exitBtn.UseVisualStyleBackColor = true;
            this.exitBtn.Click += new System.EventHandler(this.exitBtn_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.exitBtn);
            this.Controls.Add(this.hdnbtn);
            this.Controls.Add(this.hdbBtn);
            this.Controls.Add(this.bstBtn);
            this.Controls.Add(this.sizeBtn);
            this.Controls.Add(this.clBtn);
            this.Controls.Add(this.spBtn);
            this.Controls.Add(this.nccBtn);
            this.Controls.Add(this.khBtn);
            this.Controls.Add(this.nvBtn);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Label label1;
        private Button nvBtn;
        private Button khBtn;
        private Button nccBtn;
        private Button spBtn;
        private Button clBtn;
        private Button sizeBtn;
        private Button bstBtn;
        private Button hdbBtn;
        private Button hdnbtn;
        private Button exitBtn;
    }
}