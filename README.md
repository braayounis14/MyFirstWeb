# My First Website: A NewEgg-Inspired PC Parts Store

This repository holds the code for the very first website I ever built—a functional e-commerce platform for PC parts, created as a school project using ASP.NET Web Forms.

> **A Time Capsule of My Coding Journey:** This project represents my initial foray into web development, tackling everything from backend logic with C# to frontend design and database management.

## What I Learned Building This

This project was a massive learning experience. Here are some of the key takeaways:

*   **Full-Stack Fundamentals:** I connected a frontend (ASPX pages) to a backend (C# code-behind) and a database (MS Access).
*   **State Management:** Implemented sessions to manage user login state and shopping cart data.
*   **Database Design & CRUD:** Created tables and wrote C# code to Create, Read, Update, and Delete products and user information.
*   **Authentication & Authorization:** Built a login system and created different master pages for Guests, Users, and Administrators.
*   **Problem-Solving:** Debugged countless issues, which taught me perseverance and how to read error messages effectively.

## Highlights of the Code

*   **Structured for Different Users:** Uses separate Master Pages (`Site1.Master`, `Site1AfterSign.Master`, `SiteAdminPage.Master`) to provide tailored experiences.
*   **Extensive Feature Set:** The `/pages/` directory shows the scope—from `Login.aspx` and `MyCart.aspx` to a full `AdminDashboard.aspx`.
*   **Organized Product Catalog:** Separate pages for each PC component category (CPU, GPU, Memory, etc.).
*   **Admin Panel:** An early attempt at a backend system for managing the site's content and users.

## Technology Stack

*   **Framework:** ASP.NET Web Forms
*   **Language:** C#
*   **Database:** Microsoft Access
*   **Frontend:** HTML, CSS, JavaScript, ASP.NET Web Controls

## How to Run (For the Curious)

This project is a piece of history (and a school project), so the setup isn't as streamlined as modern apps.

1.  You'll need **Visual Studio** and the **.NET Framework**.
2.  Clone the repo and open `NewEgg.sln`.
3.  The database files are in `App_Data/`—you might need to check the connection strings in `Web.config`.
4.  Hit F5 and watch a 2010s-era .NET app come to life!

---

This project is a snapshot of my beginning as a developer. The code might not be perfect, but I'm proud of what I accomplished with it.

*Check out my more recent work to see how far I've come!*
