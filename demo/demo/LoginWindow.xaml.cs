using demo.Modules;
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
using System.Windows.Shapes;

namespace demo
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
            DataContext = this;
        }

        private void LoginBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                User auth = DemoEntities1.GetContext().User.FirstOrDefault(u => u.Login == LoginTb.Text && u.Password == PassPb.Password);
                if (auth != null)
                {
                    MainWindow mainUser = new MainWindow();
                    mainUser.Show();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Неправильные данные, пожалуйста, попробуйте еще раз");
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
