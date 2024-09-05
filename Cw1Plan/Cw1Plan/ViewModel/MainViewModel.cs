using Cw1Plan.Model;
using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace Cw1Plan.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        public bool Isloaded { get; set; }
        public ICommand LoadedWindowCommand { get; set; }
        public ICommand reloginCommand { get; set; }
        public ICommand Thoat { get; set; }


        private Grid _UCMain;
        public Grid UCMain { get => _UCMain; set { _UCMain = value; OnPropertyChanged(); } }

        public UserControl uc { get; set; }
        public UserControl ucmainmain { get; set; }
        public UserControl uctitle { get; set; }
        public UserControl uccontrol { get; set; }

        private string _txbTitle;
        public string txbTitle { get => _txbTitle; set { _txbTitle = value; OnPropertyChanged(); } }

        private bool _menuchecked;
        public bool menuchecked { get => _menuchecked; set { _menuchecked = value; OnPropertyChanged(); } }

        private bool _leftstace;
        public bool leftstace { get => _leftstace; set { _leftstace = value; OnPropertyChanged(); } }

        private string _Userlogin;
        public string Userlogin { get => _Userlogin; set { _Userlogin = value; OnPropertyChanged(); } }

        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }

        private string _ChucVu;
        public string ChucVu { get => _ChucVu; set { _ChucVu = value; OnPropertyChanged(); } }

        private int _Userlevel;
        public int Userlevel { get => _Userlevel; set { _Userlevel = value; OnPropertyChanged(); } }

        private int _SelectedIndex;
        public int SelectedIndex { get => _SelectedIndex; set { _SelectedIndex = value; OnPropertyChanged(); } }

        public MainViewModel() 
        {
            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {

                Isloaded = true;
                if (p == null)
                    return;

                p.Hide();
                LoginWindow loginWindow = new LoginWindow();
                loginWindow.ShowDialog();

                if (loginWindow.DataContext == null)
                    return;

                var loginVM = loginWindow.DataContext as LoginViewModel;

                if (loginVM.IsLogin)
                {
                    p.Show();                    
                }
                else
                {
                    p.Close();
                }
                if (leftstace == false) menuchecked = false;
            });

            reloginCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                Application.Current.Shutdown();
                System.Windows.Forms.Application.Restart();
            });
        }
    }
}
