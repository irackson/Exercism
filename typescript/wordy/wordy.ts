export class ArgumentError extends Error {}

export class WordProblem {
    readonly question: string;
    constructor(question: string) {
        this.question = question;
    }

    answer(): number {
        const strArr: string[] = this.question
            .split(/(\s|\?)/)
            .filter((e) => !['What', 'is', 'by', '', ' ', '?'].includes(e));
        while (strArr.length > 0) {
            if (strArr.length === 1 && parseInt(strArr[0])) {
                return parseInt(strArr[0]);
            } else {
                const A: number = parseInt(strArr[0]) ? parseInt(strArr[0]) : 0;
                strArr.shift();
                const opp: string = strArr[0];
                strArr.shift();
                const B: number = parseInt(strArr[0]) ? parseInt(strArr[0]) : 0;
                strArr.shift();
                const newQuestion: string[] = [...strArr];
                switch (opp) {
                    case 'minus':
                        newQuestion.unshift((A - B).toString());
                        break;
                    case 'plus':
                        newQuestion.unshift((A + B).toString());
                        break;
                    case 'multiplied':
                        newQuestion.unshift((A * B).toString());
                        break;
                    case 'divided':
                        newQuestion.unshift((A / B).toString());
                        break;
                    default:
                        throw new ArgumentError();
                }
                return new WordProblem(newQuestion.join(' ')).answer();
            }
        }
        return 0;
    }
}
