# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require 'json'

categories = Category.create([{name: 'categoria1' }, {name: 'categoria2' }])

products =
Product.create([
  {
    name: 'Nintendo Switch',
    description: 'A Nintendo anunciou nesta quinta-feira (20) o Nintendo Switch, seu novo videogame.
    Até então conhecido pelo codinome NX, o Switch é um aparelho modular e híbrido, e
    pode ser usado ligado a uma TV ou em uma versão portátil e sem fios. Ele chega ao mercado em março de 2017.',
    link: '',
    images: [File.open(Rails.root + "public/uploads/product/images/1/1.jpg"), File.open(Rails.root + "public/uploads/product/images/1/2.jpg"), File.open(Rails.root + "public/uploads/product/images/1/3.jpg")],
    category_id: 1
  },
  {
    name: 'Gato',
    description: 'O gato (Felis silvestris catus), também conhecido como gato caseiro, gato urbano ou gato doméstico[4], é um animal da Família dos felídeos, muito popular como animal de estimação. Ocupando o topo da cadeia alimentar, é um predador natural de diversos animais, como roedores, pássaros, lagartixas e alguns insetos.',
    link: '',
    images: [File.open(Rails.root + "public/uploads/product/images/3/1.jpg"), File.open(Rails.root + "public/uploads/product/images/3/2.jpg"), File.open(Rails.root + "public/uploads/product/images/3/3.jpg"), File.open(Rails.root + "public/uploads/product/images/3/4.jpg"), File.open(Rails.root + "public/uploads/product/images/3/5.jpg")],
    category_id: 2
  },
  {
    name: 'Ruby on Rails',
    description: 'Learning to build a modern web application is daunting. Ruby on Rails makes it much easier and more fun. It includes everything you need to build fantastic applications, and you can learn it with the support of our large, friendly community.',
    link: 'http://rubyonrails.org/',
    images: [File.open(Rails.root + "public/uploads/product/images/4/1.jpg"), File.open(Rails.root + "public/uploads/product/images/4/2.png"), File.open(Rails.root + "public/uploads/product/images/4/3.png")],
    category_id: 1
  }
])

admin = Admin.create({username: 'teste', password: '123456789'})
