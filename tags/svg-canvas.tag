<svg-canvas>
    <div class="cell" each="{ g in grids }" style="left: { g.x * 62 }px; top: { g.y * 62 }px" onclick="{ draw }">
        <svg-shape n="{ data[g.i].n }" size="60" bg="{ data[g.i].bg }" fg="{ data[g.i].fg }" r="{ data[g.i].r }"></svg-shape>
    </div>

    <script>
        this.grids = new Array(49).fill(0).map((v, i) => ({y: Math.floor(i / 7), x: i % 7, i}));
        this.data = new Array(49).fill({bg: '#ffffff', fg: '#000000', n: 0});
        this.n = 0;

        const refresh = () => {
            const grids = this.grids;
            this.grids = [];
            this.update();

            this.grids = grids;
            this.update();
        };

        this.draw = (e) => {
            const {n, fg, bg, r} = this.data[e.item.g.i]

            let initR = 0;
            if (n == this.n && fg == this.fg && bg == this.bg) {
                initR = r + 90;
            } 
            this.data[e.item.g.i] = { n: this.n, fg: this.fg, bg: this.bg, r: initR };
            console.log(this.data);
            refresh();
        };

        riot.on('setN', (n) => {
            this.n = n;
        });

        riot.on('setFg', (fg) => {
            this.fg = fg;
        });

        riot.on('setBg', (bg) => {
            this.bg = bg;
        });

    </script>
    <style>
        :scope {
            position: relative;
        }
        svg-shape {
            display: block;
            padding-bottom: 4px;
            border-bottom: 4px solid transparent;
            margin-right: 4px;
        }
        svg-shape.active {
            border-bottom: 4px solid #666;
        }
        .cell {
            position: absolute;
        }
    </style>
</svg-canvas>
