// import { battery } from "resource:///com/github/Aylur/ags/service/battery.js";

const battery = await Service.import("battery")
const audio = await Service.import("audio")

const date = Variable('', {
    poll: [1000, "date '+%a %d %B %Y - %H:%M:%S'"],
});

const lab = (n) => {
    return Widget.Label({
        hpack: "center",
        label: `wowzies${n}`
    })
}

const wid = Widget.Box({
    spacing: 8,
    children: [lab(0), lab(1), lab(2),]
})


const Battery = () => {
    const value = battery.bind("percent")
    const icon = battery.bind("percent").as(p => `battery-level-${Math.floor(p / 10) * 10}-symbolic`)

    return Widget.Box({
        class_name: "battery",
        visible: battery.bind("available"),
        spacing: 6,
        children: [
            Widget.Icon({ icon }),
            Widget.Label({ label: value.as(n => n.toString()), class_name: "indicator" })
        ]
    })
}

const Volume = () => {
    const icons = {
        101: "overamplified",
        67: "high",
        34: "medium",
        1: "low",
        0: "muted",
    }

    function getIcon() {
        const icon = audio.speaker.is_muted ? 0 : [101, 67, 34, 1, 0].find(
            threshold => threshold <= audio.speaker.volume * 100)

        return `audio-volume-${icons[icon]}-symbolic`
    }

    const icon = Widget.Icon({
        icon: Utils.watch(getIcon(), audio.speaker, getIcon),
    })

    const get_volume = Widget.Label().hook(audio.speaker, self => {
        self.label = `${Math.floor(audio.speaker.volume * 100)}`
        self.class_name = "indicator"
    }, "changed")

    return Widget.Box({
        spacing: 6,
        children: [icon, get_volume]
    })
}

const Date = () => {
    return Widget.Label({
        label: date.bind()
    })
}

const right_wid = Widget.Box({
    spacing: 12,
    hpack: "end",
    class_name: "right",
    children: [Volume(), Battery(), Date()]
})

const Bar = (monitor) => {
    return Widget.Window({
        monitor: monitor,
        name: "bar".concat(monitor),
        anchor: ['top', 'left', 'right'],
        exclusivity: 'exclusive',
        child: Widget.CenterBox({
            start_widget: wid,
            center_widget: Widget.Label({
                hpack: 'center',
                label: date.bind(),
            }),
            endWidget: right_wid
        }),
    });
};

export default Bar
