// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
document.addEventListener("turbo:load", () => {
    console.log('============DOM LOADED==========')
    const modal = document.getElementById("modal");
    const signInButton = document.getElementById("sign_in_button");

    signInButton.addEventListener("click", () => {
        modal.classList.remove("hidden");
        console.log('click');
    });

    modal.addEventListener("click", (event) => {
        if (event.target === modal) {
            modal.classList.add("hidden");
        }
    });
});