import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actionable";

export default class extends Controller {
  static targets = ['messages']
  static values = { chatroomId: Number }

  connect() {
    this.channel = createConsumer().subscription.create(
      { channel: 'ChatroomChannel', id: this.chatroomIdValue },
      {
        received: (message) => {
          this.messagesTarget.insertAdjacentHTML('beforeend', message)
          this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
        }
     })
  }
}
