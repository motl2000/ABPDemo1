using System;
using System.Threading.Tasks;
using Acme.BookStore;
using Volo.Abp.Domain.Repositories;
using Xunit;

namespace Acme.BookStore.EntityFrameworkCore.Acme.BookStore
{
    public class BookRepositoryTests : BookStoreEntityFrameworkCoreTestBase
    {
        private readonly IRepository<Book, Guid> _bookRepository;

        public BookRepositoryTests()
        {
            _bookRepository = GetRequiredService<IRepository<Book, Guid>>();
        }

        [Fact]
        public async Task Test1()
        {
            await WithUnitOfWorkAsync(async () =>
            {
                // Arrange

                // Act

                //Assert
            });
        }
    }
}
