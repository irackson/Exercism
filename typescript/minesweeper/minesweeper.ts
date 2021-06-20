export default class Minesweeper {
    constructor() {}
    annotate(input: string[]): string[] {
        return input;
    }
}

const minesweeper = new Minesweeper();
console.log(minesweeper.annotate(['']));
