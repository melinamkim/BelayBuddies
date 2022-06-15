import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static targets = ['messages']
  static values = { chatroomId: Number }

  connect() {
    console.log('HELLO');
    this.channel = createConsumer().subscriptions.create(
      { channel: 'ChatroomChannel', id: this.chatroomIdValue },
      {
        received: (message) => {
          console.log('HELLO')
          this.messagesTarget.insertAdjacentHTML('beforeend', message)
          this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
        }
     }
    )
  }
}
