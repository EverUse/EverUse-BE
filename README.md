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
![database design](<CVP BE schema.png>)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Endpoints -->
## Endpoints
<details>
<summary>POST get all products<code>/graphql'</code></summary>
<br>

    {

      }


</details>
<br>

<details>
<summary>POST get products by attribute <code>/graphql'</code></summary>
<br>

    {

      }


</details>
<br>

<details>
<summary>POST mutation to send email <code>/graphql'</code></summary>
<br>

    {

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

