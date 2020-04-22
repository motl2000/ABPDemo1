using System;
using System.ComponentModel;
namespace Acme.BookStore.Dtos
{
    public class CreateUpdateBookDto
    {
        [DisplayName("BookName")]
        public string Name { get; set; }

        [DisplayName("BookType")]
        public BookType Type { get; set; }

        [DisplayName("BookPublishDate")]
        public DateTime PublishDate { get; set; }

        [DisplayName("BookPrice")]
        public float Price { get; set; }
    }
}