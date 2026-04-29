# Rails SaaS Starter

A production-style backend application built with Ruby on Rails.

## 🚀 Features

* User authentication (Devise)
* Role-based access (Admin/User)
* Expense management system
* Background jobs using Sidekiq
* Redis caching for performance
* Versioned API (/api/v1)

## 🧠 Architecture Highlights

* Service Object Pattern (`ExpenseCreator`)
* Async processing with Sidekiq
* Cache invalidation strategy
* Clean API structure

## 🛠 Tech Stack

* Ruby on Rails
* PostgreSQL
* Redis
* Sidekiq

## 📦 API Endpoints

### Create Expense

POST /api/v1/expenses

### List Expenses

GET /api/v1/expenses

## ⚙️ Setup

```bash
bundle install
rails db:create db:migrate db:seed
rails server
```

## ▶️ Run Sidekiq

```bash
bundle exec sidekiq
```

## 💡 Why this project?

Built to demonstrate real-world backend engineering practices including background jobs, caching, and scalable architecture.
