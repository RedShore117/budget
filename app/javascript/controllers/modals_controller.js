import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {}
  close(e) {
    e.preventDefault();
    const modal = document.getElementById("login_frame");
    modal.innerHTML = "";
  }
}