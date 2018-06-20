using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApplication1.ViewModels
{
    public class WinnerAlertViewModel: INotifyPropertyChanged
    {
        private string _winner = "Person";
        public string Winner
        {
            get { return _winner; }
            set
            {
                _winner = value;
                NotifyPropertyChanged("Winner");
            }
        }
        public WinnerAlertViewModel(string winner)
        {
            Winner = winner;
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void NotifyPropertyChanged(String info)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(info));
            }
        }
    }
}
