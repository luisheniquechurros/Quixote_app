
namespace quixoteapi.Model
{
    public class Usuario
    {
        public int id { get; set; }        
        [Required]
        [MaxLength(50)]
        public string usuario { get; set; }
        [Required]
        [MaxLength(20)]
        public string senha { get; set; }
        [Required]
        [MaxLength(30)]
        public string perfil { get; set; }
        [Required]
        [MaxLength(200)]
        public string nome_completo { get; set; }
        public string email { get; set; }
        public string telefone { get; set; }
    }
}
