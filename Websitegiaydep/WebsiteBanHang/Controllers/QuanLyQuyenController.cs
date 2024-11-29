using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using WebsiteBanHang.Models;

namespace WebsiteBanHang.Controllers
{
    [Authorize(Roles = "QuanTriWeb")]
    public class QuanLyQuyenController : Controller
    {
        QuanLyBanHangEntities db = new QuanLyBanHangEntities();
        // GET: QuanLyQuyen
        public ActionResult Index()
        {
            return View(db.Quyens.OrderBy(n => n.TenQuyen));
        }

        [HttpGet]
        public ActionResult TaoMoi()
        {
            return View();
        }

        [HttpPost]
        public ActionResult TaoMoi(Quyen quyen)
        {
            db.Quyens.Add(quyen);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult ChinhSua(string id)
        {
            if (id == "")
            {
                Response.StatusCode = 404;
                return null;
            }
            Quyen quyen = db.Quyens.SingleOrDefault(n => n.MaQuyen == id);
            if(quyen == null)
            {
                return HttpNotFound();
            }

            return View(quyen);
        }
        [HttpPost]
        public ActionResult ChinhSua([Bind(Include = "MaQuyen,TenQuyyen")] Quyen quyen)
        {
            //if (ModelState.IsValid)
            Quyen q =  db.Quyens.Find(quyen.MaQuyen);
            TryUpdateModel(q, new string[] { "MaQuyen", "TenQuyen"});       //ko dc phep doi ma quyen
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Xoa(string id)
        {
            if (id == "")
            {
                Response.StatusCode = 404;
                return null;
            }
            Quyen quyen = db.Quyens.SingleOrDefault(n => n.MaQuyen == id);

            if(quyen == null)
            {
                return HttpNotFound();
            }

            return View(quyen);
        }

        [HttpPost, ActionName("Xoa")]
        public ActionResult XacNhanXoa(string id)
        {
            // Kiểm tra xem id có hợp lệ không
            if (string.IsNullOrEmpty(id))
            {
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.BadRequest);
            }

            // Tìm quyền cần xóa
            Quyen quyen = db.Quyens.SingleOrDefault(n => n.MaQuyen == id);
            if (quyen == null)
            {
                return HttpNotFound();
            }

            try
            {
                // Kiểm tra xem quyền có đang được sử dụng trong bảng LoaiThanhVien_Quyen không
                bool isRoleInUse = db.LoaiThanhVien_Quyen.Any(l => l.MaQuyen == id);

                if (isRoleInUse)
                {
                    // Nếu quyền đang được sử dụng trong bảng LoaiThanhVien_Quyen, trả về thông báo lỗi
                    TempData["ErrorMessage"] = "Không thể xóa quyền này vì quyền này đang được gán cho loại thành viên!";
                    return RedirectToAction("Xoa", new { id = id });
                }

                // Nếu quyền không được sử dụng, thực hiện xóa quyền
                db.Quyens.Remove(quyen);
                db.SaveChanges();
                TempData["ErrorMessage"] = null;
                // Quay lại trang danh sách quyền nếu xóa thành công
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                // Nếu có lỗi xảy ra trong quá trình xóa quyền, thông báo lỗi
                TempData["ErrorMessage"] = "Xóa quyền không thành công! Lỗi: " + ex.Message;
                return RedirectToAction("Xoa", new { id = id });
            }
        }



    }
}