using Cw1Plan.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Cw1Plan.UserControl1
{
    /// <summary>
    /// Interaction logic for ControlBarBaseUC.xaml
    /// </summary>
    public partial class ControlBarBaseUC : UserControl
    {
        public ControlBarViewModel Viewmodel { get; set; }

        public ControlBarBaseUC()
        {
            InitializeComponent();
            this.DataContext = Viewmodel = new ControlBarViewModel();
        }
    }
}
