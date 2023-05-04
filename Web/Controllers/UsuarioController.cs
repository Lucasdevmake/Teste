
namespace Web.Controllers
{

    public class UsuarioController : Controller
    {
        private readonly ApplicationDbContext _dbContext;


        public UsuarioController(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }



        public IActionResult Index()
        {
            var userList = _dbContext.Usuario.ToList();
            return View(userList);
        }



    }
}
