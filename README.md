<h1 align="center">🏡 Real Estate Management API & Frontend</h1>

<p align="center">
Full-stack assignment built with <b>Laravel (API)</b> and <b>React + Vite + Tailwind</b>
</p>

<hr/>

<h2>📌 Project Overview</h2>

<p>
This project is a RESTful API and React frontend to manage Real Estate properties.
It supports full CRUD operations with validation, pagination, feature tests, and a simple UI.
</p>

<ul>
<li>Laravel REST API</li>
<li>React Frontend</li>
<li>Pagination</li>
<li>Soft delete</li>
<li>Feature tests</li>
<li>Clean architecture</li>
</ul>

<hr/>

<h2>🛠 Tech Stack</h2>

<h3>Backend</h3>
<ul>
<li>Laravel (latest)</li>
<li>MySQL</li>
<li>REST API</li>
<li>Feature Tests</li>
<li>Soft Deletes</li>
</ul>

<h3>Frontend</h3>
<ul>
<li>React (Vite)</li>
<li>Tailwind CSS</li>
<li>Axios</li>
<li>React Router</li>
</ul>

<hr/>

<h2>📁 Project Structure</h2>

<pre>
Backend Repo:
realestate-api/

Frontend Repo:
realestate-frontend/
</pre>

<hr/>

<h2>🚀 Backend Setup (Laravel API)</h2>

<pre>
git clone https://github.com/meanbyjit/realestate-api.git
cd realestate-api

composer install
cp .env.example .env
php artisan key:generate

# configure DB in .env

php artisan migrate --seed
php artisan serve
</pre>

<p>API will run at:</p>

<pre>
http://127.0.0.1:8000
</pre>

<hr/>

<h2>🚀 Frontend Setup (React)</h2>

<pre>
git clone https://github.com/meanbyjit/realestate-frontend.git
cd realestate-frontend

npm install
npm run dev
</pre>

<p>Frontend runs at:</p>

<pre>
http://localhost:5173
</pre>

<hr/>

<h2>📡 API Endpoints</h2>

<h3>List Properties</h3>
<pre>GET /api/v1/real-estates</pre>

<h3>Show Property</h3>
<pre>GET /api/v1/real-estates/{id}</pre>

<h3>Create</h3>
<pre>POST /api/v1/real-estates</pre>

<h3>Update</h3>
<pre>PUT /api/v1/real-estates/{id}</pre>

<h3>Delete</h3>
<pre>DELETE /api/v1/real-estates/{id}</pre>

<hr/>

<h2>🧪 Run Tests</h2>

<pre>
php artisan test
</pre>

<hr/>

<h2>📊 Pagination</h2>

<p>List API supports pagination:</p>

<pre>
GET /api/v1/real-estates?page=1&limit=10
</pre>

<hr/>

<h2>✨ Features Implemented</h2>

<ul>
<li>RESTful API</li>
<li>Validation</li>
<li>Soft Delete</li>
<li>Feature Tests</li>
<li>Pagination</li>
<li>React CRUD UI</li>
<li>Service layer architecture</li>
<li>Clean folder structure</li>
</ul>

<hr/>

<h2>👨‍💻 Author</h2>

<p>
Assignment completed as part of Laravel API Developer Challenge.
</p>

<hr/>

<h2>📬 Contact</h2>

<p>
If you have any questions, feel free to reach out.
</p>
