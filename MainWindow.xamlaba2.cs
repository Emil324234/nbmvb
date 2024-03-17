using System;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Windows;
using prct2labbd.DS3DataSetTableAdapters;

namespace prct2labbd
{
    /// <summary>   
    /// Логика взаимодействия для MainWindow.xaml   
    /// </summary>   
    public partial class MainWindow : Window
    {
        private WeaponsTableAdapter weapons = new WeaponsTableAdapter();

        public MainWindow()
        {
            InitializeComponent();
            bratishkaGrid.ItemsSource = weapons.GetData().ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            object id = (bratishkaGrid.SelectedItem as DataRowView).Row[0];
            weapons.DeleteQuery(ClassWeapon.Text, Convert.ToInt32(id));
        }
    }
}