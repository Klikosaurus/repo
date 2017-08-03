using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Linq.Expressions;

namespace Library
{
    public class Database
    {
        private static LibraryEntities context = new LibraryEntities();

        //private static DbSet<T> dbSet;
        
        public static void Insert<T>(T entityToInsert) where T : class
        {
            //DbSet<T> dbSet; // = new DbSet<T>();
            DbSet<T> dbSet = context.Set<T>();
            dbSet.Add(entityToInsert);

            //context.SaveChanges();
        }

        public static void Update<T>(T entityToUpdate) where T : class
        {
            //DbSet<T> dbSet;
            DbSet<T> dbSet = context.Set<T>();
            dbSet.Attach(entityToUpdate);
            context.Entry(entityToUpdate).State = EntityState.Modified;

            //context.SaveChanges();
        }

        public static void Delete<T>(T entityToDelete) where T : class
        {
            //DbSet<T> dbSet;
            DbSet<T> dbSet = context.Set<T>();

            if (context.Entry(entityToDelete).State == EntityState.Detached)
            {
                dbSet.Attach(entityToDelete);
            }

            dbSet.Remove(entityToDelete);

            //context.SaveChanges();
        }

        public static List<T> GetAll<T>() where T : class
        {
            //DbSet<T> dbSet;
            DbSet<T> dbSet = context.Set<T>();
            return dbSet.ToList<T>();
        }

        public static void SaveChanges()
        {
            context.SaveChanges();
        }
    }
}
