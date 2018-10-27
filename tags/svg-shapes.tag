<svg-shapes>
    <svg-shape each="{ i in all }" n="{ i }" size="40" bg="{ bg }" fg="{ fg }" onclick="{ setN }" class="{ active: i == n }"></svg-shape>

    <script>
        this.n = 0;

        this.all = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21];

        this.setN = (e) => {
            riot.trigger('setN', e.item.i);
        };

        const refresh = () => {
            this.all = [];
            this.update();

            this.all = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21];
            this.update();
        };

        riot.on('setN', (n) => {
            this.n = n;
            refresh();
        });

        riot.on('setFg', (fg) => {
            this.fg = fg;
            refresh();
        });

        riot.on('setBg', (bg) => {
            this.bg = bg;
            refresh();
        });
    </script>
    <style>
        :scope svg-shape {
            display: block;
            padding-bottom: 4px;
            border-bottom: 4px solid transparent;
            margin-right: 4px;
        }
        :scope svg-shape.active {
            border-bottom: 4px solid #666;
        }
    </style>
</svg-shapes>
