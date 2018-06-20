using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
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
using WpfApplication1.ViewModels;

namespace WpfApplication1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window //, INotifyPropertyChanged
    {
        //private string[,] Grid = new string[7,6];
        //private bool ActivePlayer = true; //True = player 1; False = player 2
        //private int _player1Score = 0;
        //public int Player1Score
        //{
        //    get { return _player1Score; }
        //    set
        //    {
        //        _player1Score = value;
        //        OnPropertyChanged("Player1Score");
        //    }
        //}
        //private int _player2Score = 0;
        //public int Player2Score
        //{
        //    get { return _player2Score; }
        //    set
        //    {
        //        _player2Score = value;
        //        OnPropertyChanged("Player2Score");
        //    }
        //}

        //public event PropertyChangedEventHandler PropertyChanged;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void GameViewControl_Loaded(object sender, RoutedEventArgs e)
        {
            GameViewModel GameViewModelObject = new GameViewModel();


            GameViewControl.DataContext = GameViewModelObject;
        }

        //public void DropPieceClicked(object sender, RoutedEventArgs e)
        //{
        //    var button = sender as Button;
        //    var column = Convert.ToInt32(button.Tag.ToString());
        //    var piece = ActivePlayer ? "X" : "O";
        //    var winner = false;
        //    for(int row = 5; row >= 0; row--)
        //    {
        //        if (!string.IsNullOrEmpty(Grid[column, row]))
        //            continue;
        //        Grid[column, row] = piece;
        //        Image location = (Image)this.FindName(string.Format("Spot{0}{1}", row, column));

        //        if (ActivePlayer)
        //            location.Source = new BitmapImage(new Uri(@"/WpfApplication1;component/Pictures/player1.fw.png", UriKind.Relative));
        //        else
        //            location.Source = new BitmapImage(new Uri(@"/WpfApplication1;component/Pictures/player2.fw.png", UriKind.Relative));

                

        //        winner = CheckWinner(piece, column, row);
        //        break;
        //    }
            
        //    if (winner)
        //    {
        //        var playerwin = "";
        //        if (ActivePlayer) {
        //            playerwin = "Player 1";
        //            Player1Score++;
        //        }
        //        else {
        //            playerwin = "Player 2";
        //            Player2Score++;
        //        }
        //        Console.WriteLine("WINNER " + playerwin + " !!!!!");
        //        ResetGame();
        //    }
        //    else
        //        ActivePlayer = !ActivePlayer;
        //}

        //public bool CheckWinner(string piece, int column, int row)
        //{
        //    int count = 0;
        //    //downward angle
        //    for(int i = -3; i < 4; i++)
        //    {
        //        if (column + i < 0 || row + i < 0 || column + i > 6 || row + i > 5)
        //            continue;
        //        if (Grid[column + i, row + i] == piece)
        //            count++;
        //        else
        //            count = 0;
        //        if (count == 4)
        //            break;
        //    }
        //    if (count == 4)
        //        return true;
        //    count = 0;
        //    //upward angle
        //    for (int i = -3; i < 4; i++)
        //    {
        //        if (column + i < 0 || row - i < 0 || column + i > 6 || row - i > 5)
        //            continue;
        //        if (Grid[column + i, row - i] == piece)
        //            count++;
        //        else
        //            count = 0;
        //        if (count == 4)
        //            break;
        //    }
        //    if (count == 4)
        //        return true;
        //    count = 0;
        //    //horizontal
        //    for (int i = -3; i < 4; i++)
        //    {
        //        if (column + i < 0 || column + i > 6)
        //            continue;
        //        if (Grid[column + i, row] == piece)
        //            count++;
        //        else
        //            count = 0;
        //        if (count == 4)
        //            break;
        //    }
        //    if (count == 4)
        //        return true;
        //    count = 0;
        //    //vertical
        //    for (int i = -3; i < 4; i++)
        //    {
        //        if (row + i < 0 || row + i > 5)
        //            continue;
        //        if (Grid[column, row + i] == piece)
        //            count++;
        //        else
        //            count = 0;
        //        if (count == 4)
        //            break;
        //    }
        //    if (count == 4)
        //        return true;
        //    return false;
        //}

        //public void ResetGameClicked(object sender, RoutedEventArgs e)
        //{
        //    ResetGame();
        //}

        //public void ResetGame()
        //{
        //    for (int column = 0; column < 7; column++)
        //    {
        //        for (int row = 0; row < 6; row++)
        //        {
        //            Image location = (Image)this.FindName(string.Format("Spot{0}{1}", row, column));
        //            location.Source = new BitmapImage(new Uri(@"/WpfApplication1;component/Pictures/square.fw.png", UriKind.Relative));
        //        }
        //    }

        //    Grid = new string[7, 6];
        //    ActivePlayer = true;
        //}

        //protected void OnPropertyChanged([CallerMemberName]string propertyName = null)
        //{
        //    PropertyChangedEventHandler handler = this.PropertyChanged;
        //    if (handler != null)
        //    {
        //        var e = new PropertyChangedEventArgs(propertyName);
        //        handler(this, e);
        //    }
        //}
        //protected void OnPropertyChanged(string propertyName)
        //{
        //    PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        //}

    }
}
