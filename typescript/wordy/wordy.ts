export class ArgumentError extends Error {}

export class WordProblem {
    readonly question: string;
    constructor(question: string) {
        this.question = question;
    }

    public answer() {
        const strArr: string[] = this.parse();
        // console.log(strArr);
        if (strArr.length === 1 && parseInt(strArr[0])) {
            return parseInt(strArr[0]);
        } else {
            const A: number = parseInt(strArr[0]) ? parseInt(strArr[0]) : 0;
            const B: number = parseInt(strArr[strArr.length - 1])
                ? parseInt(strArr[strArr.length - 1])
                : 0;
            switch (strArr[1]) {
                case 'minus':
                    return A - B;
                    break;
                case 'plus':
                    return A + B;
                    break;
                case 'multiplied':
                    return A * B;
                    break;
                case 'divided':
                    return A / B;
                    break;
                default:
                    throw new ArgumentError();
            }
        }
    }

    parse(): string[] {
        let arr = this.question
            .split(/(\s|\?)/)
            .filter((e) => !['What', 'is', '', ' ', '?'].includes(e));
        return arr;
    }
}
const wp = new WordProblem('What is 1 plus 1 plus 1?');

console.log(wp.answer());
