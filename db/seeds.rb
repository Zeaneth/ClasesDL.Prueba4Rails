# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.delete_all
Task.create([
    {
      name: 'Comer choripán',
      photo: 'https://ethnicfoodsrus.com/wp-content/uploads/2015/05/Choripan-con-Chimichurri-Public-Domain.jpg'
    },
    {
      name: 'Comer anticucho',
      photo: 'http://www.saborcitoperuano.com/recetas/wp-content/uploads/2016/04/anticuchos_saborcitoperuano_recetas-800x600.jpg'
    },
    {
      name: 'Hacer asado',
      photo: 'http://asadacho.com/wp-content/uploads/2015/01/asado-parrilla.jpg'
    },
    {
      name: 'Tomar chicha',
      photo: 'https://t2.kn3.net/taringa/5/2/8/3/6/3/QUIROOXZ/0ED.jpg'
    },
    {
      name: 'Tomar terremoto',
      photo: 'https://chocale.cl/wp-content/uploads/2018/09/terremoto-trago-chileno.jpg'
    },
    {
      name: 'Bailar cueca',
      photo: 'https://blog.airkeep.me/wp-content/uploads/2018/09/blog_airkeep_cueca_photo_by_radiozero.cl_.jpg'
    },
    {
      name: 'Jugar rayuela',
      photo: 'http://www.diarioelcentro.cl/imagenes/noticias/publico-disfruto-de-la-rayuela-en-fiesta-de-la-chilenidad.jpg'
    },
    {
      name: 'Comer empanadas de pino',
      photo: 'https://blogs.hope.edu/students/wp-content/uploads/sites/6/2016/10/Empanada-de-Pino.png'
    },
    {
      name: 'Disfrutar con los amigues',
      photo: 'http://www.utalca.cl/medios/utalca/prensa/galerias/galeria_11.jpg'
    }
])
