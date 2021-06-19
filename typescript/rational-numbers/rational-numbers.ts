export default class Rational {
    numerator: number;
    denominator: number;

    constructor(top: number, bottom: number = 1) {
        this.numerator = top;
        this.denominator = bottom;
    }

    formatSign(rational: Rational): Rational {
        if (
            (Math.abs(rational.numerator) === rational.numerator &&
                Math.abs(rational.denominator) === rational.denominator) ||
            Math.abs(rational.numerator / rational.denominator) ===
                rational.numerator / rational.denominator
        ) {
            return new Rational(
                Math.abs(rational.numerator),
                Math.abs(rational.denominator)
            );
        }
        return new Rational(
            -1 * Math.abs(rational.numerator),
            Math.abs(rational.denominator)
        );
    }

    gcd(X: number, Y: number): number {
        let x: number = Math.abs(X);
        let y: number = Math.abs(Y);
        let t: number;
        while (y) {
            t = y;
            y = x % y;
            x = t;
        }
        return x;
    }

    add(rational: Rational): Rational {
        const top: number =
            this.numerator * rational.denominator +
            this.denominator * rational.numerator;
        let bottom: number = this.denominator * rational.denominator;
        bottom = top === 0 ? 1 : bottom;

        return new Rational(top, bottom);
    }

    sub(rational: Rational): Rational {
        const top: number =
            this.numerator * rational.denominator -
            this.denominator * rational.numerator;
        let bottom: number = this.denominator * rational.denominator;
        bottom = top === 0 ? 1 : bottom;

        return new Rational(top, bottom);
    }

    mul(rational: Rational): Rational {
        let top: number = this.numerator * rational.numerator;
        let bottom: number = this.denominator * rational.denominator;

        const gcd = this.gcd(top, bottom);
        top = top / gcd;
        bottom = bottom / gcd;

        return this.formatSign(new Rational(top, bottom));
    }

    div(rational: Rational): Rational {
        return this.mul(new Rational(rational.denominator, rational.numerator));
    }
    abs(): Rational {
        return new Rational(
            Math.abs(this.numerator),
            Math.abs(this.denominator)
        );
    }
    exprational(power: number): Rational {
        if (power === 0) {
            return new Rational(1, 1);
        }
        let rational: Rational = this.mul(new Rational(1, 1));
        for (let i = 0; i < power - 1; i++) {
            rational = rational.mul(this);
        }
        return rational;
    }
    expreal(realNumber: number): number {
        return Math.pow(
            Math.pow(realNumber, 1 / this.denominator),
            this.numerator
        );
    }

    reduce(): Rational {
        return this.mul(new Rational(1, 1));
    }
}
