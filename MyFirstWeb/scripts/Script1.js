﻿const body = document.querySelector("body"),
    modeToggle = body.querySelector(".mode-toggle");
sidebar = body.querySelector("nav");
sidebarToggle = body.querySelector(".sidebar-toggle");

let getMode = localStorage.getItem("mode");
if (getMode && getMode === "dark") {
    body.classList.toggle("dark");
}

let getStatus = localStorage.getItem("status");
if (getStatus && getStatus === "close") {
    sidebar.classList.toggle("close");
}

modeToggle.addEventListener("click", () => {
    body.classList.toggle("dark");
    if (body.classList.contains("dark")) {
        localStorage.setItem("mode", "dark");
    } else {
        localStorage.setItem("mode", "light");
    }
});

sidebarToggle.addEventListener("click", () => {
    sidebar.classList.toggle("close");
    if (sidebar.classList.contains("close")) {
        localStorage.setItem("status", "close");
    } else {
        localStorage.setItem("status", "open");
    }
})

// Assuming you have a reference to the form group label element
const formGroupLabel = document.querySelector('.form-group label');

// Function to update label color based on dark mode status
function updateLabelColor() {
    const isDarkModeEnabled = body.classList.contains('dark');
    formGroupLabel.style.color = isDarkModeEnabled ? 'white' : 'black';
}

// Initial update on page load
updateLabelColor();

// Event listener for changes in dark mode
modeToggle.addEventListener('click', () => {
    body.classList.toggle('dark');
    updateLabelColor();

    // Rest of your existing code...
});

