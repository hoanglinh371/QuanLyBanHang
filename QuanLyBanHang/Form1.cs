using QuanLyBanHang.Views;

namespace QuanLyBanHang
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void nvBtn_Click(object sender, EventArgs e)
        {
            NhanVien formNhanVien = new NhanVien();
            formNhanVien.Show();
        }

        private void khBtn_Click(object sender, EventArgs e)
        {
            KhachHang formKhachHang = new KhachHang();
            formKhachHang.Show();
        }

        private void nccBtn_Click(object sender, EventArgs e)
        {
            NhaCungCap formNCC = new NhaCungCap();
            formNCC.Show();
        }

        private void spBtn_Click(object sender, EventArgs e)
        {
            SanPham formSanPham = new SanPham();
            formSanPham.Show();
        }

        private void clBtn_Click(object sender, EventArgs e)
        {
            ChatLieu formChatLieu = new ChatLieu();
            formChatLieu.Show();
        }

        private void sizeBtn_Click(object sender, EventArgs e)
        {
            Views.Size formSize = new Views.Size();
            formSize.Show();
        }

        private void bstBtn_Click(object sender, EventArgs e)
        {
            BoSuuTap formBST = new BoSuuTap();
            formBST.Show();
        }

        private void hdbBtn_Click(object sender, EventArgs e)
        {
            HoaDonBan formHoaDonBan = new HoaDonBan();
            formHoaDonBan.Show();
        }

        private void hdnbtn_Click(object sender, EventArgs e)
        {
            HoaDonNhap formHoaDonNhap = new HoaDonNhap();
            formHoaDonNhap.Show();
        }

        private void exitBtn_Click(object sender, EventArgs e)
        {
            var result = MessageBox.Show("Bạn có muốn thoát không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                Environment.Exit(1);
            }
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            Environment.Exit(1);
        }
    }
}