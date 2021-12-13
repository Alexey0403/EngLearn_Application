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
using System.ComponentModel;
using System.Globalization;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace EngApp
{

    public partial class MainWindow : Window
    {
        private SqlConnection sqlConnection = null;
        SqlCommand command;
        Random rand;
        Uri resourceUri;

        public MainWindow()
        {
            InitializeComponent();
            SwitchStyleHeader();
            temp = new Temps();
            
        }


        class Temps
        {
            public string perm;
            public object temp1 = 0;
            public string temp2;
            public string temp3;
        }

        Temps temp;


        private void HeaderMainButton_Click(object sender, RoutedEventArgs e)
        {
            
            
            VocabularyPage.Visibility = Visibility.Collapsed;
            TheoryticalPage.Visibility = Visibility.Collapsed;
            MainPage.Visibility = Visibility.Visible;
            SwitchStyleHeader();
        }

        private void HeaderVocabularyButton_Click(object sender, RoutedEventArgs e)
        {
            LoadDataGrid();
            MainPage.Visibility = Visibility.Collapsed;
            VocabularyPage.Visibility = Visibility.Visible;
            TheoryticalPage.Visibility = Visibility.Collapsed;
            SwitchStyleHeader();

        }

        private void HeaderTheoryticalButton_Click(object sender, RoutedEventArgs e)
        {

            MainPage.Visibility = Visibility.Collapsed;
            VocabularyPage.Visibility = Visibility.Collapsed;
            TheoryticalPage.Visibility = Visibility.Visible;
            SwitchStyleHeader();
        }

        private void SwitchStyleHeader()
        {
            if (MainPage.Visibility == Visibility.Visible)
            {
                HeaderMainButton.Style = this.Resources["BlueForeground"] as Style;
                HeaderMainButton.IsEnabled = false;
                HeaderVocabularyButton.Style = this.Resources["StyleHeaderButton"] as Style;
                HeaderVocabularyButton.IsEnabled = true;
                HeaderTheoryticalButton.Style = this.Resources["StyleHeaderButton"] as Style;
                HeaderTheoryticalButton.IsEnabled = true;
                
            } else if (VocabularyPage.Visibility == Visibility.Visible)
            {
                HeaderVocabularyButton.Style = this.Resources["BlueForeground"] as Style;
                HeaderVocabularyButton.IsEnabled = false;
                HeaderMainButton.Style = this.Resources["StyleHeaderButton"] as Style;
                HeaderMainButton.IsEnabled = true;
                HeaderTheoryticalButton.Style = this.Resources["StyleHeaderButton"] as Style;
                HeaderTheoryticalButton.IsEnabled = true;
            } else
            {
                HeaderVocabularyButton.Style = this.Resources["StyleHeaderButton"] as Style;
                HeaderVocabularyButton.IsEnabled = true;
                HeaderMainButton.Style = this.Resources["StyleHeaderButton"] as Style;
                HeaderMainButton.IsEnabled = true;
                HeaderTheoryticalButton.Style = this.Resources["BlueForeground"] as Style;
                HeaderTheoryticalButton.IsEnabled = false;
            }
        }

        private void NavBarTheoryClick(object sender, RoutedEventArgs e)
        {
            (sender as Button).Style = this.Resources["BlueSelectedButton"] as Style;
            (sender as Button).IsEnabled = false;
            SwitchPageTheory(sender, e);
            

            if (temp.temp1.ToString() != "0" && (temp.temp1 as Button) != (sender as Button)) 
            {
                (temp.temp1 as Button).Style = this.Resources["TheoryNavBar"] as Style;
                (temp.temp1 as Button).IsEnabled = true;
            }
            EmptySpace.Visibility = Visibility.Collapsed;
            temp.temp1 = (sender as Button);

        }

        private void SwitchPageTheory(object sender, RoutedEventArgs e)
        {
            StackPanel[] arr = new StackPanel[10];
            arr[0] = sp1;
            arr[1] = sp2;
            arr[2] = sp3;
            arr[3] = sp4;
            arr[4] = sp5;
            arr[5] = sp6;
            arr[6] = sp7;
            arr[7] = sp8;
            arr[8] = sp9;
            arr[9] = sp10;

            arr[0].Visibility = Visibility.Visible;

            for (int i = 0; i < 10; i++)
            {
                arr[i].Visibility = Visibility.Collapsed;
            }

            arr[Convert.ToInt32((sender as Button).Content)-1].Visibility = Visibility.Visible;

           
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        }

        private void LoadDataGrid()
        {

            sqlConnection.Open();
            SqlCommand command = new SqlCommand("SELECT EngWord, UaWord FROM [Vocabulary]", sqlConnection);
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable("EngWord");
            da.Fill(dt);

            VocabularyGrid.ItemsSource = dt.DefaultView;
            sqlConnection.Close();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            TextVocabulary.Text.ToLower();
            if (TextVocabulary.Text != "") { 
                if (TextVocabulary.Text[0] >= 'а' && TextVocabulary.Text[0] <= 'я') SortUa();
                else SortEng();
            } else
            {
                LoadDataGrid();
            }
        }

        private void SortUa()
        {
            sqlConnection.Open();
            SqlCommand command = new SqlCommand($"SELECT EngWord, UaWord FROM [Vocabulary] WHERE UaWord LIKE N'{TextVocabulary.Text}%'", sqlConnection);
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable("EngWord");
            da.Fill(dt);

            VocabularyGrid.ItemsSource = dt.DefaultView;
            sqlConnection.Close();
        }


        private void SortEng()
        {
            sqlConnection.Open();
            SqlCommand command = new SqlCommand($"SELECT EngWord, UaWord FROM [Vocabulary] WHERE EngWord LIKE '{TextVocabulary.Text}%'", sqlConnection);
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable("EngWord");
            da.Fill(dt);

            VocabularyGrid.ItemsSource = dt.DefaultView;
            sqlConnection.Close();
        }

        private void LessonSelect(object sender, RoutedEventArgs e)
        {
            temp = new Temps();
            MainContent.Visibility = Visibility.Collapsed;
            Lesson.Visibility = Visibility.Visible;
            temp.perm = (sender as Button).Name[6].ToString();
            switch (temp.perm)
            {
                case "1": Lesson1(); break;
                case "2": Lesson2(); break;
                case "3": Lesson3(); break;
                case "4": Lesson4(); break;
                case "5": Lesson5(); break;

            }
            
        }


        private void ResultClick(object sender, RoutedEventArgs e)
        {
            switch (temp.temp2) {
                case "1":
                    sqlConnection.Open();
                    command = new SqlCommand($"SELECT TrueAnswer FROM Question WHERE Questions = '{QuestionLabel.Text}'", sqlConnection);
                    temp.temp3 = command.ExecuteScalar().ToString();
                    if (AnswerBox.Text.ToLower() == temp.temp3.ToLower())
                    {
                        FooterQuestion.Background = (SolidColorBrush)(new BrushConverter().ConvertFrom("#D7FFB8"));
                        footerLabel.Visibility = Visibility.Visible;

                        resourceUri = new Uri("Images/checkmark.png", UriKind.Relative);
                        footerImage.Source = new BitmapImage(resourceUri);
                        footerLabelResult.Content = "Вірно";
                        footerLabelAnswer.Content = $"Правильна відповідь: {temp.temp3}";
                        progressBar.Value += 50;
                    } else {
                        FooterQuestion.Background = (SolidColorBrush)(new BrushConverter().ConvertFrom("#FFDFE0"));
                        footerLabel.Visibility = Visibility.Visible;

                        resourceUri = new Uri("Images/cancel.png", UriKind.Relative);
                        footerImage.Source = new BitmapImage(resourceUri);
                        footerLabelResult.Content = "Не вірно";
                        footerLabelAnswer.Content = $"Правильна відповідь: {temp.temp3}";
                    }
                    AnswerBox.Clear();
                    sqlConnection.Close();
                    nextButton.Visibility = Visibility.Visible;
                    resultButton.Visibility = Visibility.Collapsed;
                    break;
                case "2":
                    sqlConnection.Open();
                    command = new SqlCommand($"SELECT Questions FROM Question WHERE TrueAnswer = N'{QuestionLabel.Text}'", sqlConnection);

                    temp.temp3 = command.ExecuteScalar().ToString();
                    if (AnswerBox.Text.ToLower() == temp.temp3.ToLower())
                    {
                        FooterQuestion.Background = (SolidColorBrush)(new BrushConverter().ConvertFrom("#D7FFB8"));
                        footerLabel.Visibility = Visibility.Visible;

                        resourceUri = new Uri("Images/checkmark.png", UriKind.Relative);
                        footerImage.Source = new BitmapImage(resourceUri);
                        footerLabelResult.Content = "Вірно";
                        footerLabelAnswer.Content = $"Правильна відповідь: {temp.temp3}";
                        progressBar.Value += 50;
                    }
                    else
                    {
                        FooterQuestion.Background = (SolidColorBrush)(new BrushConverter().ConvertFrom("#FFDFE0"));
                        footerLabel.Visibility = Visibility.Visible;

                        resourceUri = new Uri("Images/cancel.png", UriKind.Relative);
                        footerImage.Source = new BitmapImage(resourceUri);
                        footerLabelResult.Content = "Не вірно";
                        footerLabelAnswer.Content = $"Правильна відповідь: {temp.temp3}";
                    }
                    AnswerBox.Clear();
                    sqlConnection.Close();
                    nextButton.Visibility = Visibility.Visible;
                    resultButton.Visibility = Visibility.Collapsed;
                    break;
        }
        }

        private void NextClick(object sender, RoutedEventArgs e)
        {
            footerLabel.Visibility = Visibility.Hidden;
            nextButton.Visibility = Visibility.Collapsed;
            resultButton.Visibility = Visibility.Visible;
            FooterQuestion.Background = new SolidColorBrush(Colors.White);
            if(progressBar.Value == 100)
            {
                progressBar.Value = 0;
                MainContent.Visibility = Visibility.Visible;
                Lesson.Visibility = Visibility.Collapsed;
                
            }
            switch (temp.perm)
            {
                case "1": Lesson1(); break;
                case "2": Lesson2(); break;
                case "3": Lesson3(); break;
                case "4": Lesson4(); break;
                case "5": Lesson5(); break;

            }
        }

       
        private void Lesson1()
        {
            rand = new Random();
            temp.temp2 = rand.Next(1, 3).ToString();
            switch (temp.temp2)
            {
                case "1":
                    rand = new Random();
                    sqlConnection.Open();
                    command = new SqlCommand($"SELECT Questions FROM Question WHERE Id = {rand.Next(1, 14).ToString()}", sqlConnection);

                    QuestionLabel.Text = command.ExecuteScalar().ToString();
                    sqlConnection.Close();
                    break;
                case "2":
                    rand = new Random();
                    sqlConnection.Open();
                    command = new SqlCommand($"SELECT TrueAnswer FROM Question WHERE Id = {rand.Next(1, 14).ToString()}", sqlConnection);

                    QuestionLabel.Text = command.ExecuteScalar().ToString();
                    sqlConnection.Close();
                    break;    

            }

        }

        private void Lesson2()
        {
            rand = new Random();
            temp.temp2 = rand.Next(1, 3).ToString();
            switch (temp.temp2)
            {
                case "1":
                    rand = new Random();
                    sqlConnection.Open();
                    command = new SqlCommand($"SELECT Questions FROM Question WHERE Id = {rand.Next(14, 24).ToString()}", sqlConnection);

                    QuestionLabel.Text = command.ExecuteScalar().ToString();
                    sqlConnection.Close();
                    break;
                case "2":
                    rand = new Random();
                    sqlConnection.Open();
                    command = new SqlCommand($"SELECT TrueAnswer FROM Question WHERE Id = {rand.Next(14, 24).ToString()}", sqlConnection);

                    QuestionLabel.Text = command.ExecuteScalar().ToString();
                    sqlConnection.Close();
                    break;

            }
        }
        private void Lesson3()
        {
            rand = new Random();
            temp.temp2 = rand.Next(1, 3).ToString();
            switch (temp.temp2)
            {
                case "1":
                    rand = new Random();
                    sqlConnection.Open();
                    command = new SqlCommand($"SELECT Questions FROM Question WHERE Id = {rand.Next(24, 38).ToString()}", sqlConnection);

                    QuestionLabel.Text = command.ExecuteScalar().ToString();
                    sqlConnection.Close();
                    break;
                case "2":
                    rand = new Random();
                    sqlConnection.Open();
                    command = new SqlCommand($"SELECT TrueAnswer FROM Question WHERE Id = {rand.Next(24, 38).ToString()}", sqlConnection);

                    QuestionLabel.Text = command.ExecuteScalar().ToString();
                    sqlConnection.Close();
                    break;

            }
        }
        private void Lesson4()
        {
            rand = new Random();
            temp.temp2 = rand.Next(1, 3).ToString();
            switch (temp.temp2)
            {
                case "1":
                    rand = new Random();
                    sqlConnection.Open();
                    command = new SqlCommand($"SELECT Questions FROM Question WHERE Id = {rand.Next(38, 59).ToString()}", sqlConnection);

                    QuestionLabel.Text = command.ExecuteScalar().ToString();
                    sqlConnection.Close();
                    break;
                case "2":
                    rand = new Random();
                    sqlConnection.Open();
                    command = new SqlCommand($"SELECT TrueAnswer FROM Question WHERE Id = {rand.Next(38, 59).ToString()}", sqlConnection);

                    QuestionLabel.Text = command.ExecuteScalar().ToString();
                    sqlConnection.Close();
                    break;
            }
        }

        private void Lesson5()
        {
            rand = new Random();
            temp.temp2 = rand.Next(1, 3).ToString();
            switch (temp.temp2)
            {
                case "1":
                    rand = new Random();
                    sqlConnection.Open();
                    command = new SqlCommand($"SELECT Questions FROM Question WHERE Id = {rand.Next(59, 75).ToString()}", sqlConnection);

                    QuestionLabel.Text = command.ExecuteScalar().ToString();
                    sqlConnection.Close();
                    break;
                case "2":
                    rand = new Random();
                    sqlConnection.Open();
                    command = new SqlCommand($"SELECT TrueAnswer FROM Question WHERE Id = {rand.Next(59, 75).ToString()}", sqlConnection);

                    QuestionLabel.Text = command.ExecuteScalar().ToString();
                    sqlConnection.Close();
                    break;
            }
        }
    }
}
