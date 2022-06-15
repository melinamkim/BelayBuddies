import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static targets = ['messages']
  static values = { chatroomId: Number }

  connect() {
    console.log('HELLO');
    console.log(this.element.dataset.user)
    this.channel = createConsumer().subscriptions.create(
      { channel: 'ChatroomChannel', id: this.chatroomIdValue },
      {
        received: (message) => {
          console.log('HELLO')
          console.log(message)
          this.messagesTarget.insertAdjacentHTML('beforeend', message)
          if (this.messagesTarget.lastElementChild.dataset.user == this.element.dataset.user) {

            console.log("Same User")
            this.messagesTarget.lastElementChild.classList.add("justify-content-end")
            this.messagesTarget.lastElementChild.firstElementChild.classList.add("my-message")
            this.messagesTarget.lastElementChild.classList.remove("justify-content-start")
          } else {
            console.log("Other User")
            this.messagesTarget.lastElementChild.classList.add("justify-content-start")
            this.messagesTarget.lastElementChild.firstElementChild.classList.add("their-message")
            this.messagesTarget.lastElementChild.classList.remove("justify-content-end")
          }
          this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
        }
     }
    )
  }


}
