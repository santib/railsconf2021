import { Controller } from "stimulus";

export default class extends Controller {
  injectHeaders() {
    const injectHeaders = (event) => {
      const { headers } = event.detail.fetchOptions || {};
      if (headers) {
        headers.Accept = `text/vnd.turbo-stream.html, ${headers.Accept}`;
      }
    }
    addEventListener("turbo:before-fetch-request", injectHeaders, { once: true });
  }
}
