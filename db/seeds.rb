# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require 'json'

admin = Admin.create({username: 'teste', password: '123456789'})
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
    name: 'Crash Team Racing',
    description: 'É o primeiro jogo de Crash Bandicoot no gênero de corrida. A história do jogo foca nos esforços de uma equipe de personagens da série Crash Bandicoot, que devem correr contra o Nitros Oxide para salvar seu planeta da destruição. No jogo, os jogadores podem assumir o controle de um dos quinze personagens da série Crash Bandicoot, embora apenas oito estão disponíveis em desde o início. Durante as corridas, itens de impulso pode ser usado para ganhar vantagem.',
    link: 'https://pt.wikipedia.org/wiki/Crash_Team_Racing',
    images: [File.open(Rails.root + "public/uploads/product/images/2/1.jpg"), File.open(Rails.root + "public/uploads/product/images/2/2.jpg"), File.open(Rails.root + "public/uploads/product/images/2/3.jpg")],
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
  },
  {
    name: 'Vinte Mil Léguas Submarinas - Júlio Verne',
    description: 'Vinte Mil Léguas Submarinas (no original, em francês: Vingt mille lieues sous les mers) é uma das obras literárias mais famosas (se não, a mais famosa) do escritor Júlio Verne, publicada pela primeira vez em 1870.',
    link: 'https://pt.wikipedia.org/wiki/Vinte_Mil_L%C3%A9guas_Submarinas',
    images: [File.open(Rails.root + "public/uploads/product/images/5/1.jpg"), File.open(Rails.root + "public/uploads/product/images/5/2.jpg"), File.open(Rails.root + "public/uploads/product/images/5/3.jpg"), File.open(Rails.root + "public/uploads/product/images/5/4.jpg")],
    category_id: 1
  }
])
