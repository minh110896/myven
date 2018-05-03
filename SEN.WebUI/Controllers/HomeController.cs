﻿using System.Web.Mvc;
using SEN.WebUI.Code;
using SEN.WebUI.Models;
using SEN.Entities;
using SEN.Data;
using System.Web.Security;

namespace SEN.WebUI.Controllers
{
    public class HomeController : BaseController
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";
            return View();
        }

        public ActionResult DangNhap()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DangNhap(LoginModel model)
        {   
            if (!ModelState.IsValid)
            {
                ModelState.AddModelError("", "Thiếu tên đăng nhập hoặc mật khẩu chưa đúng");
                return View(model);
            }


            //Login
            var result = new ThanhVienModel().Login(model.Email, model.Password);

            if (result != null)
            {
                Session["user_login"] = result;
                return RedirectToAction("Index", "Home");
            } else {
                ModelState.AddModelError("", "Tên đăng nhập hoặc mật khẩu chưa đúng");
            }

            //Check login and redirect to page.
            //if (result)
            //{
            //    SessionHelper.SetEmailSession(model.Email);
            //    return RedirectToAction("Index", "Home");
            //}
            //else
            //{
            //    ModelState.AddModelError("", "Tên đăng nhập hoặc mật khẩu chưa đúng");
            //}
            return View(model);
        }

        public ActionResult DangKy()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DangKy(ThanhVien thanhVien)
        {
            if (ModelState.IsValid)
            {
                VenEntities db = new VenEntities();
                db.ThanhViens.Add(thanhVien);
                db.SaveChanges();
                return View(thanhVien);
            }
            return RedirectToAction("DangKy");

        }
        
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("DangNhap", "Home");
        }
    }
}
