# SpaceTraders Marketplace 🚀

[![Ruby on Rails](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)](https://rubyonrails.org/)
[![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)](https://www.ruby-lang.org/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)](https://getbootstrap.com/)

An online marketplace built with Ruby on Rails where space enthusiasts can buy and sell intergalactic vehicles, such as starships, droids, and more.

## 📖 Overview
This project is a full-featured web application that simulates an e-commerce platform. Users can register, list their own products (spaceships), browse listings from others, add items to a shopping cart, and complete a purchase. The application was built following Ruby on Rails best practices, featuring a secure authentication system, relational database management, and a reactive user interface.

## ✨ Key Features
- **User Authentication**: A complete user registration and login system using the `Devise` gem.
- **Product Management (CRUD)**: Authenticated users can create, read, update, and delete their own vehicle listings.
- **Multiple Image Uploads**: Integration with `Cloudinary` and `Active Storage` to allow multiple photos per product.
- **Product Search and Filtering**: Functionality to search for products by name and filter by category, enhancing the Browse experience.
- **Shopping Cart**: A session-based shopping cart system, allowing users to add and remove items before checkout.
- **Checkout Flow**: A checkout page where users can review their order, enter shipping information, and confirm their purchase.
- **Security and Authorization**: The system ensures that users can only manage the products they have created.

## 🛠️ Tech Stack
- **Backend**: Ruby `3.3.5`, Ruby on Rails `7.1.5`
- **Database**: PostgreSQL
- **Frontend**: Hotwire (Turbo and Stimulus), Importmap, Bootstrap 5, SASS, Font Awesome
- **Authentication**: Devise
- **File Uploads**: Cloudinary & Active Storage
- **Web Server**: Puma

## ☝️ Getting Started
To run this project locally, follow the steps below.

### Prerequisites

- Ruby `3.3.5`
- Bundler `2.x`
- PostgreSQL
- Node.js (for the asset pipeline)
- A [Cloudinary](https://cloudinary.com/) account

### 📁 Installation
1.  **Clone the repository:**
    ```sh
    git clone https://github.com/henriqueamotta/spacetraders.git
    cd spacetraders
    ```

2.  **Install dependencies:**
    ```sh
    bundle install
    ```

3.  **Set up environment variables:**
    Create a file named `.env` in the project root. You can copy `.env.example` if it exists or add the following keys:
    ```env
    CLOUDINARY_URL="cloudinary://API_KEY:API_SECRET@CLOUD_NAME"
    ```
    Replace the placeholders with your Cloudinary credentials.

4.  **Set up the database:**
    ```sh
    rails db:create
    rails db:migrate
    ```
    Optionally, if you have a `seeds.rb` file to populate the database with initial data:
    ```sh
    rails db:seed
    ```

5.  **Start the local server:**
    ```sh
    rails server
    ```

You can now access the application at [http://localhost:3000](http://localhost:3000).

## 👨‍💻 Authors

- **Beatriz Zonaro** - [GitHub](https://github.com/bezoc)
- **Douglas Teixeira** - [GitHub](https://github.com/DouglasTpo)
- **Henrique Motta** - [GitHub](https://github.com/henriqueamotta)
- **Yan Britto** - [GitHub](https://github.com/Yanbritto94)

---
<p align="center">
  Rails app generated with <a href="https://github.com/lewagon/rails-templates">lewagon/rails-templates</a>, created by the <a href="https://www.lewagon.com">Le Wagon coding bootcamp</a> team.
</p>
