import Bar from "./widgets/bar.js"

// hotreload of css
Utils.monitorFile(
    `${App.configDir}/styles`,

    function() {
        const css = `./styles/styles.css`
        App.resetCss()
        App.applyCss(css)
    },
)

// for pywal
Utils.monitorFile(
    `~/.cache/wal`,
    function() {
        const css = `./styles/styles.css`

        App.resetCss()
        App.applyCss(css)
    },
)

App.config({
    windows: [Bar(1)],
    style: "./styles/styles.css",
})
