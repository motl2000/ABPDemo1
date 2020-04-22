using System;
using Volo.Abp.Application.Dtos;

namespace Acme.BookStore.Dtos
{
    public class BookDto : AuditedEntityDto<Guid>
    {
        public string Name { get; set; }

        public BookType Type { get; set; }

        public string TypeName
        {
            get
            {
                return Type.ToString ();
            }

        }
        public DateTime PublishDate { get; set; }

        public float Price { get; set; }
    }
}