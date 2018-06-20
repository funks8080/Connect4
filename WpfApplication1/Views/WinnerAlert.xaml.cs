using System;
using System.Collections.Generic;
using System.ComponentModel;
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
using System.Windows.Shapes;
using WpfApplication1.ViewModels;

namespace WpfApplication1.Views
{
    /// <summary>
    /// Interaction logic for WinnerAlert.xaml
    /// </summary>
    public partial class WinnerAlert : Window
    {
        
        public WinnerAlert(string winner)
        {
            InitializeComponent();
            DataContext = new WinnerAlertViewModel(winner);
        }

        private void OKButton_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            DialogResult = true;
            this.Close();
        }
        

    }
}
