using System.Threading.Tasks;

namespace Acme.BookStore.Web.Pages.Acme.BookStore.Book
{
    public class IndexModel : BookStorePageModel
    {
        public async Task OnGetAsync()
        {
            await Task.CompletedTask;
        }
    }
}
