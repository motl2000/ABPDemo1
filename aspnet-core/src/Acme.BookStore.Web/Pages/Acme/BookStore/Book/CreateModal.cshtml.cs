using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Acme.BookStore;
using Acme.BookStore.Dtos;

namespace Acme.BookStore.Web.Pages.Acme.BookStore.Book
{
    public class CreateModalModel : BookStorePageModel
    {
        [BindProperty]
        public CreateUpdateBookDto Book { get; set; }

        private readonly IBookAppService _service;

        public CreateModalModel(IBookAppService service)
        {
            _service = service;
        }

        public async Task<IActionResult> OnPostAsync()
        {
            await _service.CreateAsync(Book);
            return NoContent();
        }
    }
}