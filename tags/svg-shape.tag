<svg-shape>
    <svg riot-width="{s}" riot-height="{s}" riot-transform="rotate({r || 0})">
        <rect riot-width="{s}" riot-height="{s}" fill="{ bg }"/>
        <rect if="{ n == 1 }" riot-width="{s}" riot-y="{s2}" riot-height="{s2}" fill="{ fg }"/>
        <circle if="{ n == 2 }" riot-cx="{s2}" riot-cy="{s2}" riot-r="{s4}" fill="{ fg }"/>
        <circle if="{ n == 3 }" riot-cx="{s2}" riot-cy="{s}" riot-r="{s2}" fill="{ fg }"/>
        <circle if="{ n == 4 }" riot-cx="0" riot-cy="{s}" riot-r="{s}" fill="{ fg }"/>
        <ellipse if="{ n == 5 }" riot-cx="{s2}" riot-cy="0" riot-rx="{s2}" riot-ry="{s}" fill="{ fg }"/>
        <path if="{ n == 6 }" riot-d="M 0,0 A {s} {s} 0 0 0 {s},{s} A {s} {s} 0 0 0 0,0" fill="{ fg }"/>
        <polygon if="{ n == 7 }" riot-points="0,0 0,{s} {s},{s}" fill="{ fg }"/>
        <polygon if="{ n == 8 }" riot-points="0,0 0,{s} {s},0 {s},{s}" fill="{ fg }"/>
        <polygon if="{ n == 9 }" riot-points="0,{s} {s2},{s2} {s},{s}" fill="{ fg }"/>
        <polygon if="{ n == 10 }" riot-points="0,0 {s2},{s} {s},{0}" fill="{ fg }"/>
        <polygon if="{ n == 11 }" riot-points="{s2},{s} {s},{0} {s},{s}" fill="{ fg }"/>
        <polygon if="{ n == 12 }" riot-points="{0},{0} {0},{s} {s2},{s}" fill="{ fg }"/>
        <path if="{ n == 13 }" riot-d="M {s2},{s*1/7} L {s*2/7},{s2} A{s*3/14} {s*5/14} 0 0 0 {s*5/7},{s2}" fill="{ fg }"/>
        <path if="{ n == 14 }" riot-d="M {s2},{s*2/7} A {s4} {s4} 0 0 0 0,{s*2/7} L {s2},{s} L {s},{s*2/7} A {s4} {s4} 0 0 0 {s2},{s*2/7}" fill="{ fg }"/>
        <path if="{ n == 15 }" riot-d="M 0,{s2} A {s2},{s2} 0 0 1 {s2},{s} A {s2},{s2} 0 0 1 {s},{s2} A {s2} {s2} 0 0 0 0,{s2}" fill="{ fg }"/>
        <path if="{ n == 16 }" riot-d="M 0,0 A {s4} {s4} 0 0 0 {s2},0 A {s4} {s4} 0 0 0 {s},0
            M {s},{s} A {s4} {s4} 0 0 0 {s2},{s} A {s4} {s4} 0 0 0 0,{s}" fill="{ fg }"/>
        <path if="{ n == 17 }" riot-d="M 0,{s} A {s2} {s2} 0 0 0 {s2},{s2} A {s2} {s2} 0 0 0 {s},{s}" fill="{ fg }"/>
        <polygon if="{ n == 18 }" riot-points="{0},{0} {s2},{0} {s2},{s}, {s},{s} {s},{s2} 0,{s2}" fill="{ fg }"/>
        <polygon if="{ n == 19 }" riot-points="{s2},{s2} {s2},{s} {s},{s}, {s},{s2}" fill="{ fg }"/>
        <polygon if="{ n == 20 }" riot-points="{s*1/7},{s*3/7} {s*6/7},{s*3/7} {s*6/7},{s*4/7}, {s*1/7},{s*4/7}" fill="{ fg }"/>
        <polygon if="{ n == 21 }" riot-points="{s*2/7},{s*6/7} {s*5/7},{s*6/7} {s*5/7},{s}, {s*2/7},{s}" fill="{ fg }"/>
    </svg>
    <script>
        this.on('mount', () => {
            this.update();
        });

        this.on('update', () => {
            this.n = opts.n;
            this.s = opts.size;
            this.s2 = this.s / 2;
            this.s4 = this.s / 4;
            this.fg = opts.fg;
            this.bg = opts.bg;
            this.r = opts.r;
        });
    </script>
    <style>
        :scope {
            display: block;
        }
        :scope svg {
            display: block;
        }
    </style>
</svg-shape>
