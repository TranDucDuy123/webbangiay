using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteBanHang.Models;

namespace WebsiteBanHang.Controllers
{
    [Authorize(Roles = "QuanLy,QuanTriWeb")]
    public class QuanLyLoaiController : Controller
    {
        QuanLyBanHangEntities db = new QuanLyBanHangEntities();
        // GET: QuanLyLoai
        public ActionResult Index()
        {
            return View(db.LoaiSanPhams.OrderBy(n=>n.MaLoaiSP));
        }

        [HttpGet]
        public ActionResult TaoMoi()
        {
            return View();
        }

        [HttpPost]
        public ActionResult TaoMoi(LoaiSanPham loai)
        {
            db.LoaiSanPhams.Add(loai);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult ChinhSua(int? id)
        {
            //lấy sp cần chỉnh sửa
            if (id == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            LoaiSanPham loaisp = db.LoaiSanPhams.SingleOrDefault(n => n.MaLoaiSP == id);
            if (loaisp == null)
            {
                return HttpNotFound();
            }
          
            return View(loaisp);
        }
        [HttpPost]
        public ActionResult ChinhSua(LoaiSanPham loai)
        {
            //if(ModelState.IsValid)
            db.Entry(loai).State = EntityState.Modified;
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Xoa(int? id)
        {
            //lấy sp cần chỉnh sửa
            if (id == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            LoaiSanPham loaisp = db.LoaiSanPhams.SingleOrDefault(n => n.MaLoaiSP == id);
            if (loaisp == null)
            {
                return HttpNotFound();
            }
            
            return View(loaisp);
        }

        [HttpPost]
        public ActionResult Xoa(int id)
        {
            // Kiểm tra xem id có hợp lệ không
            if (id == 0)
            {
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.BadRequest);
            }

            // Tìm loại sản phẩm cần xóa
            LoaiSanPham loaisp = db.LoaiSanPhams.SingleOrDefault(n => n.MaLoaiSP == id);
            if (loaisp == null)
            {
                return HttpNotFound();
            }

            // Kiểm tra xem có sản phẩm nào thuộc loại này không
            bool hasProducts = db.SanPhams.Any(sp => sp.MaLoaiSP == id);
            if (hasProducts)
            {
                // Nếu có sản phẩm đang thuộc loại này, trả về thông báo lỗi
                TempData["ErrorMessage"] = "Không thể xóa loại sản phẩm này vì có sản phẩm đang thuộc loại này!";
                return RedirectToAction("Xoa");
            }

            try
            {
                // Nếu không có sản phẩm thuộc loại này, tiến hành xóa
                TempData["ErrorMessage"] = null;
                db.LoaiSanPhams.Remove(loaisp);
                db.SaveChanges();

                // Quay lại trang danh sách
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                // Xử lý lỗi trong quá trình xóa
                TempData["ErrorMessage"] = "Xóa loại sản phẩm không thành công. Lỗi: " + ex.Message;
                return RedirectToAction("Xoa");
            }
        }




        //Giải phóng dung lượng biến db, để ở cuối controller
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (db != null)
                    db.Dispose();
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}