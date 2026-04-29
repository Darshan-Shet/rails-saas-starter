# Rails SaaS Starter

A production-style SaaS backend application built with Ruby on Rails.

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

Ruby on Rails • PostgreSQL • Redis • Sidekiq • Docker

## 📦 API Endpoints

### Create Expense

POST /api/v1/expenses

### List Expenses

GET /api/v1/expenses

---

## 🐳 Run with Docker

### 1. Build & start services

```bash
docker-compose up --build
```

### 2. Setup database (first time only)

```bash
docker-compose exec web rails db:create db:migrate db:seed
```

### 3. Access app

http://localhost:3000

---

## ⚙️ Run Locally (without Docker)

```bash
bundle install
rails db:create db:migrate db:seed
rails server
```

---

## 💡 Why this project?

Built to demonstrate real-world backend engineering practices including background jobs, caching, API versioning, and containerized deployment.
