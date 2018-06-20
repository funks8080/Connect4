using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Media.Imaging;
using WpfApplication1.Properties;
using WpfApplication1.Utilities;
using WpfApplication1.Views;

namespace WpfApplication1.ViewModels
{
    public class GameViewModel: INotifyPropertyChanged
    {
        public GameViewModel()
        {
            ResetGame();
        }
        private ICommand _dropCommand;
        public ICommand DropCommand
        {
            get
            {
                return _dropCommand ?? (_dropCommand = new RelayCommand((param) => DropButtonCommand(param)));
            }
        }
        private ICommand _resetCommand;
        public ICommand ResetCommand
        {
            get
            {
                return _resetCommand ?? (_resetCommand = new CommandHandler(() => ResetButtonCommand(), true));
            }
        }
        private BitmapImage EmprtyLocation = new BitmapImage(new Uri(@"/WpfApplication1;component/Pictures/square.fw.png", UriKind.Relative));
        private BitmapImage Player1Piece = new BitmapImage(new Uri(@"/WpfApplication1;component/Pictures/player1.fw.png", UriKind.Relative));
        private BitmapImage Player2Piece = new BitmapImage(new Uri(@"/WpfApplication1;component/Pictures/player2.fw.png", UriKind.Relative));
        private BitmapImage[,] _gameBoard = new BitmapImage[7, 6];
        public BitmapImage[,] GameBoard
        {
            get { return _gameBoard; }
            set
            {
                _gameBoard = value;
                NotifyPropertyChanged("GameBoard");
            }
        }
        private bool Player1Active = true; //True = player 1; False = player 2
        private int _player1Score = 0;
        public int Player1Score
        {
            get { return _player1Score; }
            set
            {
                _player1Score = value;
                OnPropertyChanged("Player1Score");
            }
        }
        private int _player2Score = 0;
        public int Player2Score
        {
            get { return _player2Score; }
            set
            {
                _player2Score = value;
                OnPropertyChanged("Player2Score");
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        public void DropButtonCommand(object param)
        {
            var column = Convert.ToInt32(param);
            var piece = Player1Active ? Player1Piece : Player2Piece;
            var winner = false;
            for (int row = 5; row >= 0; row--)
            {
                if (GameBoard[column, row] != EmprtyLocation)
                    continue;
                GameBoard[column, row] = piece;

                winner = CheckWinner(piece, column, row);
                break;
            }

            GameBoard = GameBoard;
            if (winner)
            {
                var playerwin = "";
                if (Player1Active)
                {
                    playerwin = "Player 1";
                    Player1Score++;
                }
                else
                {
                    playerwin = "Player 2";
                    Player2Score++;
                }

                var winnerDialog = new WinnerAlert(playerwin);
                winnerDialog.Show();

                ResetGame();
            }
            else
                Player1Active = !Player1Active;
        }

        public bool CheckWinner(BitmapImage piece, int column, int row)
        {
            int count = 0;
            //downward angle
            for (int i = -3; i < 4; i++)
            {
                if (column + i < 0 || row + i < 0 || column + i > 6 || row + i > 5)
                    continue;
                if (GameBoard[column + i, row + i] == piece)
                    count++;
                else
                    count = 0;
                if (count == 4)
                    break;
            }
            if (count == 4)
                return true;
            count = 0;
            //upward angle
            for (int i = -3; i < 4; i++)
            {
                if (column + i < 0 || row - i < 0 || column + i > 6 || row - i > 5)
                    continue;
                if (GameBoard[column + i, row - i] == piece)
                    count++;
                else
                    count = 0;
                if (count == 4)
                    break;
            }
            if (count == 4)
                return true;
            count = 0;
            //horizontal
            for (int i = -3; i < 4; i++)
            {
                if (column + i < 0 || column + i > 6)
                    continue;
                if (GameBoard[column + i, row] == piece)
                    count++;
                else
                    count = 0;
                if (count == 4)
                    break;
            }
            if (count == 4)
                return true;
            count = 0;
            //vertical
            for (int i = -3; i < 4; i++)
            {
                if (row + i < 0 || row + i > 5)
                    continue;
                if (GameBoard[column, row + i] == piece)
                    count++;
                else
                    count = 0;
                if (count == 4)
                    break;
            }
            if (count == 4)
                return true;
            return false;
        }

        public void ResetButtonCommand()
        {
            ResetGame();
        }

        public void ResetGame()
        {
            for (int col = 0; col < GameBoard.GetLength(0); col++)
            {
                for (int row = 0; row < GameBoard.GetLength(1); row++)
                {
                    GameBoard[col, row] = EmprtyLocation;
                }
            }

            Player1Active = true;

            GameBoard = GameBoard;
        }

        //protected void OnPropertyChanged([CallerMemberName]string propertyName = null)
        //{
        //    PropertyChangedEventHandler handler = this.PropertyChanged;
        //    if (handler != null)
        //    {
        //        var e = new PropertyChangedEventArgs(propertyName);
        //        handler(this, e);
        //    }
        //}
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }
        protected void NotifyPropertyChanged(String info)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(info));
            }
        }

    }
}
