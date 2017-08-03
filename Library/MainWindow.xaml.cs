using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
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

namespace Library
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        private List<BorrowerRule> borrowerList;
        public List<BorrowerRule> BorrowerList
        {
            get
            {
                return borrowerList;
            }
            set
            {
                borrowerList = value;
                OnPropertyChanged(nameof(BorrowerList));
            }
        }


        private BorrowerRule probni;
        public BorrowerRule Probni
        {
            get
            {
                return probni;
            }
            set
            {
                probni = value;
                OnPropertyChanged(nameof(Probni));

                if(probni != null)
                Console.WriteLine(probni.Name);
            }
        }

        public MainWindow()
        {
            Console.WriteLine("Before Initializing components...");
            InitializeComponent();
            Console.WriteLine("After initializing components");
            //br = new List<BorrowerRule>();
            //br.Add(new BorrowerRule { BorrowerRule_PK = 1, Name = "Aco1", Designation = "Klisa1" });
            //br.Add(new BorrowerRule { BorrowerRule_PK = 2, Name = "Aco2", Designation = "Klisa2" });
            //br.Add(new BorrowerRule { BorrowerRule_PK = 3, Name = "Aco3", Designation = "Klisa3" });
            //br.Add(new BorrowerRule { BorrowerRule_PK = 4, Name = "Aco4", Designation = "Klisa4" });
            Console.WriteLine("Before data context...");
            dataGridNew.DataContext = this;
            Console.WriteLine("After data context...");
            klisa.DataContext = this;
            BorrowerList = Database.GetAll<BorrowerRule>();
            MessageBox.Show("Ending...");
            //DataContext = this;
            //List<Author> authors = Database.GetAll<Author>();

            //Book myBook = new Book();

            //myBook.Title = "Sanda Marija Dela Salute";
            //myBook.PublishingYear = 1947;
            //myBook.Description = "Opis knjige Santa Marija Dela salute NEW ";
            //myBook.Author_FK = authors[1].Author_PK;

            //Database.Insert<Book>(myBook);

            //List<BorrowerRule> borrowerRules = Database.GetAll<BorrowerRule>();

            ////BorrowerRule_Book brb; // = new BorrowerRule_Book();


            //foreach (var brbTemp in borrowerRules)
            //{
            //    BorrowerRule_Book brb = new BorrowerRule_Book();

            //    brb.BorrowerRule_FK = brbTemp.BorrowerRule_PK;
            //    brb.Book_FK = myBook.Book_PK;
            //    Database.Insert<BorrowerRule_Book>(brb);
            //}

            //Database.SaveChanges();

            //List<BorrowerRule_Book> brbu = Database.GetAll<BorrowerRule_Book>();

            //foreach (var x in brbu)
            //{
            //    Database.Delete<BorrowerRule_Book>(x);
            //}

            //Database.SaveChanges();

            //int i = 0;
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string name)
        {
            PropertyChangedEventHandler handler = PropertyChanged;
            if (handler != null)
            {
                handler(this, new PropertyChangedEventArgs(name));
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            Library.LibraryDataSet libraryDataSet = ((Library.LibraryDataSet)(this.FindResource("libraryDataSet")));
            // Load data into the table BorrowerRule. You can modify this code as needed.
            Library.LibraryDataSetTableAdapters.BorrowerRuleTableAdapter libraryDataSetBorrowerRuleTableAdapter = new Library.LibraryDataSetTableAdapters.BorrowerRuleTableAdapter();
            libraryDataSetBorrowerRuleTableAdapter.Fill(libraryDataSet.BorrowerRule);
            System.Windows.Data.CollectionViewSource borrowerRuleViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("borrowerRuleViewSource")));
            borrowerRuleViewSource.View.MoveCurrentToFirst();
        }

        private void btnInsertBorrowerRuleAndRefresh_Click(object sender, RoutedEventArgs e)
        {
            //BorrowerList = Database.GetAll<BorrowerRule>();

            BorrowerRule br = new BorrowerRule();
            br.Name = radWatermarkTextBoxName.Text;
            br.Designation = radWatermarkTextBoxDesignation.Text;

            Database.Insert<BorrowerRule>(br);

            Database.SaveChanges();

            BorrowerList = Database.GetAll<BorrowerRule>();

            int i = 0;
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            if (Probni != null)
            {
                Database.Delete<BorrowerRule>(Probni);
                Database.SaveChanges();
            }

            BorrowerList = Database.GetAll<BorrowerRule>();
        }
    }
}
