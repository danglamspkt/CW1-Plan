using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows;
using Cw1Plan.Model;
using System.Collections.ObjectModel;

namespace Cw1Plan.ViewModel
{
    public class LoginViewModel : BaseViewModel
    {

        public bool IsLogin { get; set; }

        private string _Username;
        public string Username { get => _Username; set { _Username = value; OnPropertyChanged(); } }

        private string _Password;
        public string Password { get => _Password; set { _Password = value; OnPropertyChanged(); } }


        private bool _checkbox;
        public bool checkbox { get => _checkbox; set { _checkbox = value; OnPropertyChanged(); } }

        public ICommand LoginCommand { get; set; }
        public ICommand PasswordChangedCommand { get; set; }
        public ICommand langchanged { get; set; }


        // mọi thứ xử lý sẽ nằm trong này
        public LoginViewModel()
        {            
            IsLogin = false;
            Password = "";
            Username = Cw1Plan.Properties.Settings.Default.UserName;
            checkbox = Cw1Plan.Properties.Settings.Default.check;
            Cw1Plan.Properties.Settings.Default.account = null;
            
            LoginCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {

                Login(p);
            }
            );
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) =>
            {
                Password = p.Password;
            });

        }

        void Login(Window p)
        {
            if (p == null)
                return;
            string passEncode = MD5Hash(Base64Encode(Password));

            var account = DataProvider.Ins.DB.Users.Where(y => y.UserName == Username && y.Password == passEncode).Count();
            if (account > 0)
            {
                IsLogin = true;
                if (checkbox)
                {
                    Cw1Plan.Properties.Settings.Default.UserName = Username;
                    Cw1Plan.Properties.Settings.Default.check = true;
                    Cw1Plan.Properties.Settings.Default.UserLevel = DataProvider.Ins.DB.Users.Where(x => x.UserName == Username).First().IdRole;
                    Cw1Plan.Properties.Settings.Default.account = Username;
                    Cw1Plan.Properties.Settings.Default.Save();

                }
                else
                {
                    Cw1Plan.Properties.Settings.Default.UserName = null;
                    Cw1Plan.Properties.Settings.Default.check = false;
                    Cw1Plan.Properties.Settings.Default.UserLevel = DataProvider.Ins.DB.Users.Where(x => x.UserName == Username).First().IdRole;
                    Cw1Plan.Properties.Settings.Default.account = Username;
                    Cw1Plan.Properties.Settings.Default.Save();
                }
                p.Close();

            }
            else
            {
                IsLogin = false;
                MessageBox.Show("Sai tài khoản hoặc mật khẩu!");
            }

        }

        public static string Base64Encode(string plainText)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
            return System.Convert.ToBase64String(plainTextBytes);
        }



        public static string MD5Hash(string input)
        {
            StringBuilder hash = new StringBuilder();
            MD5CryptoServiceProvider md5provider = new MD5CryptoServiceProvider();
            byte[] bytes = md5provider.ComputeHash(new UTF8Encoding().GetBytes(input));

            for (int i = 0; i < bytes.Length; i++)
            {
                hash.Append(bytes[i].ToString("x2"));
            }
            return hash.ToString();
        }

    }
}
