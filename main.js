
import { main_$x_ } from "./js-out/reacher.app.main.js"

main_$x_()

if (import.meta.hot) {
  import.meta.hot.accept('./js-out/reacher.app.main.js', (main) => {
    main.reload_$x_()
  })
}
