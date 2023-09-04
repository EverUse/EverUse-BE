<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<img src="" alt="Logo" width="200" height="200" margin="0">

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://everuse-fe-c2ebec288f10.herokuapp.com/">
    <img src="https://live.staticflickr.com/65535/53155716350_6f92c57155_b.jpg" alt="main page">
  </a>

<h3 align="center">EverUse</h3>

  <p align="center">
    Welcome to the back end repository for EverUse!
    EverUse is a web application built for the Turing School of Software and Design's Mod 4 Capstone project. Read more about project requirements:https://mod4.turing.edu/projects/capstone/
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#Back End Repository">Back End Repository</a></li>
        <li><a href="#Front End Repository">Front End Repository</a></li>
      </ul>
    </li>
    <li><a href="#testing">Testing</a></li>
    <li><a href="#DB Design">DB Design</a></li>
    <li><a href="#Endpoints">Endpoints</a></li>
    <li><a href="#Technical Solutions">Technical Solutions</a></li>
    <li><a href="#Roadmap">Roadmap</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#Project Contributor Contact Info">Project Contributor Contact Info</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Everuse is an ecommerce tool which ... *INSERT HERE*

The back end application is an API built with the Rails framework. It exposes 3 POST endpoints utilizing GraphQL and is responsible for receiving requests, querying the internal database, and formatting JSON responses to send data to the front end application.

Our Production Site is available [here](https://everuse-fe-c2ebec288f10.herokuapp.com/)

Github repositories:
* Front End: [![Github][Github]][project-fe-gh-url]
* Back End:  [![Github][Github]][project-be-gh-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

* [![Ruby][Ruby]][Ruby-url]
* [![Rails][Rails]][Rails-url]
* [![Postgres][Postgres]][Postgres-url]
* [![Heroku][Heroku]][Heroku-url]
* [![Circleci][Circleci]][CircleCI-url]
* [![Graphql][GraphQL]][GraphQL-url]
* [![Twilio-Sendgrid][Twilio-Sendgrid]][Sendgrid-url]


EverUse uses these integrations:
* [Sendgrid](https://docs.sendgrid.com/for-developers/sending-email/rubyonrails)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To demo EverUse on your local machine, follow these steps:

### Back End Repository
1. Get a free SendGrid API key [here](https://signup.sendgrid.com/)
1. Clone this repo `git@github.com:EverUse/EverUse-BE.git`
1. Navigate to the local repository: `cd EverUse-BE`
1. Run: `bundle install`
1. Run: `rails db:{create,migrate}`
1. Add `SENDGRID API_KEY` to rails application
1. Run: `rails s` to start Rails server
1. Visit: http://localhost:3000/

### Front End Repository
1. Clone the front end [here](https://github.com/EverUse/EverUse-FE)
1. Follow instuctions in the front end repo `README`


### Prerequisites

* ruby 3.2.2
* Rails Version 7.0.6

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Testing -->
# Testing

`bundle exec rspec` will run the entire test suite. *All tests passing at time of writing.*
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DB Design -->
# DB Design
![database design](<everuse_schema.png>)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Endpoints -->
## Endpoints
<details>
<summary>POST get all products<code>/graphql'</code></summary>
<br>

    {
        "data": {
            "products": [
                {
                    "category": "Jewelry",
                    "color": "moss",
                    "description": "Elevate your style with a touch of adventure and sustainability. Our upcycled climbing rope bracelets are not just accessories, but a statement of your commitment to the environment. Each bracelet we craft carries a piece of climbing history, woven into a unique design that captures the spirit of exploration. With a blend of colors and patterns, no two bracelets are alike. Please select from our rotating selection of available patterns.",
                    "id": "65",
                    "image": "https://live.staticflickr.com/65535/53141436793_15e6a62821.jpg",
                    "name": "bracelet",
                    "price": 15,
                    "quantity": 10,
                    "size": "small"
                },
                {
                    "category": "Jewelry",
                    "color": "moss",
                    "description": "Elevate your style with a touch of adventure and sustainability. Our upcycled climbing rope bracelets are not just accessories, but a statement of your commitment to the environment. Each bracelet we craft carries a piece of climbing history, woven into a unique design that captures the spirit of exploration. With a blend of colors and patterns, no two bracelets are alike. Please select from our rotating selection of available patterns.",
                    "id": "66",
                    "image": "https://live.staticflickr.com/65535/53141436793_15e6a62821.jpg",
                    "name": "bracelet",
                    "price": 15,
                    "quantity": 10,
                    "size": "medium"
                },
                {
                    "category": "Jewelry",
                    "color": "moss",
                    "description": "Elevate your style with a touch of adventure and sustainability. Our upcycled climbing rope bracelets are not just accessories, but a statement of your commitment to the environment. Each bracelet we craft carries a piece of climbing history, woven into a unique design that captures the spirit of exploration. With a blend of colors and patterns, no two bracelets are alike. Please select from our rotating selection of available patterns.",
                    "id": "67",
                    "image": "https://live.staticflickr.com/65535/53141436793_15e6a62821.jpg",
                    "name": "bracelet",
                    "price": 15,
                    "quantity": 10,
                    "size": "large"
                },
                {
                    "category": "Jewelry",
                    "color": "orangePlaid",
                    "description": "Elevate your style with a touch of adventure and sustainability. Our upcycled climbing rope bracelets are not just accessories, but a statement of your commitment to the environment. Each bracelet we craft carries a piece of climbing history, woven into a unique design that captures the spirit of exploration. With a blend of colors and patterns, no two bracelets are alike. Please select from our rotating selection of available patterns.",
                    "id": "68",
                    "image": "https://live.staticflickr.com/65535/53141436793_15e6a62821.jpg",
                    "name": "bracelet",
                    "price": 15,
                    "quantity": 10,
                    "size": "small"
                },
                {
                    "category": "Jewelry",
                    "color": "orangePlaid",
                    "description": "Elevate your style with a touch of adventure and sustainability. Our upcycled climbing rope bracelets are not just accessories, but a statement of your commitment to the environment. Each bracelet we craft carries a piece of climbing history, woven into a unique design that captures the spirit of exploration. With a blend of colors and patterns, no two bracelets are alike. Please select from our rotating selection of available patterns.",
                    "id": "69",
                    "image": "https://live.staticflickr.com/65535/53141436793_15e6a62821.jpg",
                    "name": "bracelet",
                    "price": 15,
                    "quantity": 10,
                    "size": "medium"
                },
                {
                    "category": "Jewelry",
                    "color": "lime",
                    "description": "Elevate your style with a touch of adventure and sustainability. Our upcycled climbing rope bracelets are not just accessories, but a statement of your commitment to the environment. Each bracelet we craft carries a piece of climbing history, woven into a unique design that captures the spirit of exploration. With a blend of colors and patterns, no two bracelets are alike. Please select from our rotating selection of available patterns.",
                    "id": "74",
                    "image": "https://live.staticflickr.com/65535/53141436793_15e6a62821.jpg",
                    "name": "bracelet",
                    "price": 15,
                    "quantity": 10,
                    "size": "small"
                },
                {
                    "category": "Jewelry",
                    "color": "lime",
                    "description": "Elevate your style with a touch of adventure and sustainability. Our upcycled climbing rope bracelets are not just accessories, but a statement of your commitment to the environment. Each bracelet we craft carries a piece of climbing history, woven into a unique design that captures the spirit of exploration. With a blend of colors and patterns, no two bracelets are alike. Please select from our rotating selection of available patterns.",
                    "id": "75",
                    "image": "https://live.staticflickr.com/65535/53141436793_15e6a62821.jpg",
                    "name": "bracelet",
                    "price": 15,
                    "quantity": 10,
                    "size": "medium"
                },
                {
                    "category": "Jewelry",
                    "color": "lime",
                    "description": "Elevate your style with a touch of adventure and sustainability. Our upcycled climbing rope bracelets are not just accessories, but a statement of your commitment to the environment. Each bracelet we craft carries a piece of climbing history, woven into a unique design that captures the spirit of exploration. With a blend of colors and patterns, no two bracelets are alike. Please select from our rotating selection of available patterns.",
                    "id": "76",
                    "image": "https://live.staticflickr.com/65535/53141436793_15e6a62821.jpg",
                    "name": "bracelet",
                    "price": 15,
                    "quantity": 10,
                    "size": "large"
                },
                {
                    "category": "Jewelry",
                    "color": "moss",
                    "description": "An EverUse keychain showcases love for climbing as well as a movement towards a greener future. Crafted from repurposed climbing rope, each keychain carries the legacy of countless climbs and adventures. Whether you're scaling new heights or exploring everyday paths, clip your keys to something you can trust – just like your climbing gear.",
                    "id": "77",
                    "image": "https://live.staticflickr.com/65535/53141442333_7cff3f30a6.jpg",
                    "name": "keychain",
                    "price": 10,
                    "quantity": 10,
                    "size": "onesize"
                },
                {
                    "category": "Soft Goods",
                    "color": "moss",
                    "description": "Keep your brews cool with our upcycled climbing rope beer koozies. Designed for outdoor enthusiasts who appreciate quality and sustainability, these koozies wrap your beverage in a snug embrace of climbing history.",
                    "id": "81",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "normal"
                },
                {
                    "category": "Soft Goods",
                    "color": "moss",
                    "description": "Keep your brews cool with our upcycled climbing rope beer koozies. Designed for outdoor enthusiasts who appreciate quality and sustainability, these koozies wrap your beverage in a snug embrace of climbing history.",
                    "id": "82",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "slim"
                },
                {
                    "category": "Soft Goods",
                    "color": "orangePlaid",
                    "description": "Keep your brews cool with our upcycled climbing rope beer koozies. Designed for outdoor enthusiasts who appreciate quality and sustainability, these koozies wrap your beverage in a snug embrace of climbing history.",
                    "id": "83",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "normal"
                },
                {
                    "category": "Soft Goods",
                    "color": "orangePlaid",
                    "description": "Keep your brews cool with our upcycled climbing rope beer koozies. Designed for outdoor enthusiasts who appreciate quality and sustainability, these koozies wrap your beverage in a snug embrace of climbing history.",
                    "id": "84",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "slim"
                },
                {
                    "category": "Soft Goods",
                    "color": "bluePlaid",
                    "description": "Keep your brews cool with our upcycled climbing rope beer koozies. Designed for outdoor enthusiasts who appreciate quality and sustainability, these koozies wrap your beverage in a snug embrace of climbing history.",
                    "id": "85",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "normal"
                },
                {
                    "category": "Soft Goods",
                    "color": "bluePlaid",
                    "description": "Keep your brews cool with our upcycled climbing rope beer koozies. Designed for outdoor enthusiasts who appreciate quality and sustainability, these koozies wrap your beverage in a snug embrace of climbing history.",
                    "id": "86",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "slim"
                },
                {
                    "category": "Soft Goods",
                    "color": "lime",
                    "description": "Keep your brews cool with our upcycled climbing rope beer koozies. Designed for outdoor enthusiasts who appreciate quality and sustainability, these koozies wrap your beverage in a snug embrace of climbing history.",
                    "id": "87",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "normal"
                },
                {
                    "category": "Soft Goods",
                    "color": "lime",
                    "description": "Keep your brews cool with our upcycled climbing rope beer koozies. Designed for outdoor enthusiasts who appreciate quality and sustainability, these koozies wrap your beverage in a snug embrace of climbing history.",
                    "id": "88",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "slim"
                },
                {
                    "category": "Soft Goods",
                    "color": "moss",
                    "description": "Embrace the versatility of upcycled climbing rope with our handwoven baskets. Each basket is a testament to the craftsmanship of repurposing, transforming retired climbing ropes into functional art. Whether you're organizing gear, storing essentials, or seeking a unique decorative piece, our baskets add character and purpose to any space.",
                    "id": "89",
                    "image": "https://live.staticflickr.com/65535/53141442328_c4bd1e96f5.jpg",
                    "name": "basket",
                    "price": 30,
                    "quantity": 10,
                    "size": "onesize"
                },
                {
                    "category": "Soft Goods",
                    "color": "orangePlaid",
                    "description": "Embrace the versatility of upcycled climbing rope with our handwoven baskets. Each basket is a testament to the craftsmanship of repurposing, transforming retired climbing ropes into functional art. Whether you're organizing gear, storing essentials, or seeking a unique decorative piece, our baskets add character and purpose to any space.",
                    "id": "90",
                    "image": "https://live.staticflickr.com/65535/53141442328_c4bd1e96f5.jpg",
                    "name": "basket",
                    "price": 30,
                    "quantity": 10,
                    "size": "onesize"
                },
                {
                    "category": "Soft Goods",
                    "color": "bluePlaid",
                    "description": "Embrace the versatility of upcycled climbing rope with our handwoven baskets. Each basket is a testament to the craftsmanship of repurposing, transforming retired climbing ropes into functional art. Whether you're organizing gear, storing essentials, or seeking a unique decorative piece, our baskets add character and purpose to any space.",
                    "id": "91",
                    "image": "https://live.staticflickr.com/65535/53141442328_c4bd1e96f5.jpg",
                    "name": "basket",
                    "price": 30,
                    "quantity": 10,
                    "size": "onesize"
                },
                {
                    "category": "Soft Goods",
                    "color": "lime",
                    "description": "Embrace the versatility of upcycled climbing rope with our handwoven baskets. Each basket is a testament to the craftsmanship of repurposing, transforming retired climbing ropes into functional art. Whether you're organizing gear, storing essentials, or seeking a unique decorative piece, our baskets add character and purpose to any space.",
                    "id": "92",
                    "image": "https://live.staticflickr.com/65535/53141442328_c4bd1e96f5.jpg",
                    "name": "basket",
                    "price": 30,
                    "quantity": 10,
                    "size": "onesize"
                },
                {
                    "category": "Soft Goods",
                    "color": "moss",
                    "description": "Give your furry companion the ultimate adventure accessory – an upcycled climbing rope dog leash! Each leash is a blend of durability, style, and environmental responsibility. From city strolls to mountain hikes, it's a leash that stands up to the rigors of outdoor life while supporting your commitment to responsible consumption and conservation.",
                    "id": "93",
                    "image": "https://live.staticflickr.com/65535/53141442338_6cc0cceeed.jpg",
                    "name": "dogLeash",
                    "price": 30,
                    "quantity": 10,
                    "size": "onesize"
                },
                {
                    "category": "Soft Goods",
                    "color": "orangePlaid",
                    "description": "Give your furry companion the ultimate adventure accessory – an upcycled climbing rope dog leash! Each leash is a blend of durability, style, and environmental responsibility. From city strolls to mountain hikes, it's a leash that stands up to the rigors of outdoor life while supporting your commitment to responsible consumption and conservation.",
                    "id": "94",
                    "image": "https://live.staticflickr.com/65535/53141442338_6cc0cceeed.jpg",
                    "name": "dogLeash",
                    "price": 30,
                    "quantity": 10,
                    "size": "onesize"
                },
                {
                    "category": "Soft Goods",
                    "color": "bluePlaid",
                    "description": "Give your furry companion the ultimate adventure accessory – an upcycled climbing rope dog leash! Each leash is a blend of durability, style, and environmental responsibility. From city strolls to mountain hikes, it's a leash that stands up to the rigors of outdoor life while supporting your commitment to responsible consumption and conservation.",
                    "id": "95",
                    "image": "https://live.staticflickr.com/65535/53141442338_6cc0cceeed.jpg",
                    "name": "dogLeash",
                    "price": 30,
                    "quantity": 10,
                    "size": "onesize"
                },
                {
                    "category": "Soft Goods",
                    "color": "lime",
                    "description": "Give your furry companion the ultimate adventure accessory – an upcycled climbing rope dog leash! Each leash is a blend of durability, style, and environmental responsibility. From city strolls to mountain hikes, it's a leash that stands up to the rigors of outdoor life while supporting your commitment to responsible consumption and conservation.",
                    "id": "96",
                    "image": "https://live.staticflickr.com/65535/53141442338_6cc0cceeed.jpg",
                    "name": "dogLeash",
                    "price": 30,
                    "quantity": 10,
                    "size": "onesize"
                }
            ]
        }
    }


</details>
<br>

<details>
<summary>POST get products by attribute <code>/graphql'</code></summary>
<br>

    {
        "data": {
            "product": [
                {
                    "category": "Soft Goods",
                    "color": "moss",
                    "description": "EverUse collects and upcycles used climbing rope into high-quality crafts and products. As two fellow rock climbers, we are passionate about both the sport and planet.",
                    "id": "17",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "normal"
                },
                {
                    "category": "Soft Goods",
                    "color": "moss",
                    "description": "EverUse collects and upcycles used climbing rope into high-quality crafts and products. As two fellow rock climbers, we are passionate about both the sport and planet.",
                    "id": "18",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "slim"
                },
                {
                    "category": "Soft Goods",
                    "color": "orangePlaid",
                    "description": "EverUse collects and upcycles used climbing rope into high-quality crafts and products. As two fellow rock climbers, we are passionate about both the sport and planet.",
                    "id": "19",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "normal"
                },
                {
                    "category": "Soft Goods",
                    "color": "orangePlaid",
                    "description": "EverUse collects and upcycles used climbing rope into high-quality crafts and products. As two fellow rock climbers, we are passionate about both the sport and planet.",
                    "id": "20",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "slim"
                },
                {
                    "category": "Soft Goods",
                    "color": "bluePlaid",
                    "description": "EverUse collects and upcycles used climbing rope into high-quality crafts and products. As two fellow rock climbers, we are passionate about both the sport and planet.",
                    "id": "21",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "normal"
                },
                {
                    "category": "Soft Goods",
                    "color": "bluePlaid",
                    "description": "EverUse collects and upcycles used climbing rope into high-quality crafts and products. As two fellow rock climbers, we are passionate about both the sport and planet.",
                    "id": "22",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "slim"
                },
                {
                    "category": "Soft Goods",
                    "color": "lime",
                    "description": "EverUse collects and upcycles used climbing rope into high-quality crafts and products. As two fellow rock climbers, we are passionate about both the sport and planet.",
                    "id": "23",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "normal"
                },
                {
                    "category": "Soft Goods",
                    "color": "lime",
                    "description": "EverUse collects and upcycles used climbing rope into high-quality crafts and products. As two fellow rock climbers, we are passionate about both the sport and planet.",
                    "id": "24",
                    "image": "https://live.staticflickr.com/65535/53141175634_e2fc6ee6ee.jpg",
                    "name": "beerKoozie",
                    "price": 25,
                    "quantity": 10,
                    "size": "slim"
                }
            ]
        }
    }


</details>
<br>

<details>
<summary>POST mutation to send email <code>/graphql'</code></summary>
<br>

    {
        "data": {
            "createOrderForm": {
                "message": "submission successful"
            }
        }
    }


</details>
<br>


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Technical Solutions -->
## Technical Solutions:
As part of the Capstone project requirements, the EverUse backend team challenged ourselves to stretch technologies during the 14-day design and development process. We selected the following based on the challenges we anticipated facing while building out our MVP, and adjusted our choices to reflect our individual and team learning goals as well as blockers that came up during the course of working on the project.

### technical solutions
* Challenge: insert
* Solution: insert

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Roadmap -->
## Roadmap
Additional features, functionality, and potential refactors:
  * insert here

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Project Contributor Contact Info
* Ashley Plasket: [![Linkedin][Linkedin-shield]][ashley-li-url] [![Github][Github]][ashley-gh-url]
* Jimmy Jurado [![Linkedin][Linkedin-shield]][jimmy-li-url] [![Github][Github]][jimmy-gh-url]
* Alex Kiselich [![Linkedin][Linkedin-shield]][alex-li-url] [![Github][Github]][alex-gh-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* []()

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/jcjurado3/civic_voice_plus_be.svg?style=for-the-badge
[contributors-url]: https://github.com/jcjurado3/civic_voice_plus_be/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/jcjurado3/civic_voice_plus_be.svg?style=for-the-badge
[forks-url]: https://github.com/jcjurado3/civic_voice_plus_be/network/members
[stars-shield]: https://img.shields.io/github/stars/jcjurado3/civic_voice_plus_be.svg?style=for-the-badge
[stars-url]: https://github.com/jcjurado3/civic_voice_plus_be/stargazers
[issues-shield]: https://img.shields.io/github/issues/jcjurado3/civic_voice_plus_be.svg?style=for-the-badge
[issues-url]: https://github.com/jcjurado3/civic_voice_plus_be/issues
[license-shield]: https://img.shields.io/github/license/jcjurado3/civic_voice_plus_be.svg?style=for-the-badge
[license-url]: https://github.com/jcjurado3/civic_voice_plus_be/blob/main/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white
[ashley-li-url]: https://www.linkedin.com/in/ashley-plasket/
[jeff-li-url]: https://www.linkedin.com/in/jredish/
[jimmy-li-url]: https://www.linkedin.com/in/jimmy-jurado-093568131/
[alex-li-url]: https://www.linkedin.com/in/alexanderkiselich/
[Github]: https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white
[project-fe-gh-url]: https://github.com/EverUse/EverUse-FE
[project-be-gh-url]: https://github.com/EverUse/EverUse-BE
[ashley-gh-url]: https://github.com/aplasket
[jimmy-gh-url]: https://github.com/jcjurado3
[alex-gh-url]: https://github.com/AlexKiselich
[Ruby]: https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[Ruby-url]: https://www.ruby-lang.org/en/
[Rails]: https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white
[Rails-url]: https://rubyonrails.org/
[Postgres]: https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white
[Postgres-url]: https://www.postgresql.org/
[Heroku]: https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white
[Heroku-url]: https://devcenter.heroku.com/articles/getting-started-with-rails7
[CircleCI]: https://img.shields.io/badge/circleci-343434?style=for-the-badge&logo=circleci&logoColor=white
[CircleCI-url]: https://circleci.com/
[GraphQL]: https://graphql.org/
[GraphQL-url]: https://img.shields.io/badge/Graphql-E10098?style=for-the-badge&logo=graphql&logoColor=white
[Twilio-Sendgrid]: https://docs.sendgrid.com/for-developers/sending-email/rubyonrails
[Sendgrid-url]: https://img.shields.io/badge/twilio%2Fsendgrid-F22F46?style=for-the-badge&logo=twilio&logoColor=white

