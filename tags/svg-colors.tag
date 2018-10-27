<svg-colors>
    <div class="bg">
        <div each="{ bg in palette }" class="{ active: bg == this.b }" onclick="{ setBg }">
            <div class="color" style="background: {bg}"></div>
        </div>
    </div>
    <div class="fg">
        <div each="{ fg in palette }" class="{ active: fg == this.f }" onclick="{ setFg }">
            <div class="color" style="background: {fg}"></div>
        </div>
    </div>
    <script>
        this.palette = [
            '#000000', '#102853', '#7e2553', '#008751',
            '#AB523B', '#5f574f', '#c2c3c7', '#fff1e8',
            '#ff004d', '#ffa300', '#ffec27', '#00e43b',
            '#29adff', '#83769c', '#ff77A8', '#ffccaa',
        ];

        this.on('mount', () => {
            riot.trigger('setFg', this.palette[0]);
            riot.trigger('setBg', this.palette[1]);
        });

        this.setFg = (e) => {
            riot.trigger('setFg', e.item.fg);
        };

        this.setBg = (e) => {
            riot.trigger('setBg', e.item.bg);
        };

        // 颜色不能设成一样，设成一样会自动交换颜色
        riot.on('setFg', (fg, swap = false) => {
            if (fg == this.b && !swap) {
                riot.trigger('setBg', this.f, true);
            }
            this.f = fg;
            this.update()
        });

        riot.on('setBg', (bg, swap = false) => {
            if (bg == this.f && !swap) {
                riot.trigger('setFg', this.b, true);
            }
            this.b = bg;
            this.update()
        });

    </script>
    <style>
        .fg, .bg {
            float: left;
        }
        .bg {
            margin-right: 2px;
        }
        .color {
            width: 30px;
            height: 30px;
        }
        .fg > div {
            margin-bottom: 2px;
            padding-right: 2px;
            border-right: 2px solid transparent;
        }
        .bg > div {
            margin-bottom: 2px;
            padding-left: 2px;
            border-left: 2px solid transparent;
        }
        .fg .active, .bg .active {
            border-color: #666;
        }
    </style>
</svg-colors>
