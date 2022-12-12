import { Controller } from "@hotwired/stimulus"
import DailyIframe from '@daily-co/daily-js'

// Connects to data-controller="videoroom"
export default class extends Controller {
  static targets = ["videoContainer"]
  connect() {
    console.log(this.iframe);
    // callFrame = DailyIframe.createFrame({
    //   showLeaveButton: true,
    //   iframeStyle: {
    //     position: 'fixed',
    //     top: '0',
    //     left: '0',
    //     width: '100%',
    //     height: '100%',
    //   },
    // });

  }

  joinVideoroom() {
    this.callFrame = DailyIframe.createFrame(this.videoContainerTarget, {
      showLeaveButton: true,
      iframeStyle: {
        position: 'fixed',
        top: '0',
        left: '0',
        width: '100%',
        height: '100%',
      },
    });

    this.callFrame.join({ url: 'https://media-hq.daily.co/videoconference' })
  }
}
