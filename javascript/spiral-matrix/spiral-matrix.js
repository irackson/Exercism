//
// This is only a SKELETON file for the 'Spiral Matrix' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

// export class SpiralMatrix {
//     static ofSize(size) {
//         let matrix = [];
//         for (let i = 0; i < size; i++) {
//             matrix.push(new Array(size));
//         }
//         console.log(matrix);
//     }
// }
console.log(buildSpiral(5));

// buildSpiral(4);

function buildSpiral(n) {
    const arr = range(n).map(() => range(n));
    const result = addLine(arr, range(n), range(n), 0);

    return result;
}

function range(n) {
    return [...Array(n).keys()];
}

function addLine(arr, line, column, currentNumber) {
    column.forEach((i) => {
        arr[line[0]][i] = ++currentNumber;
    });

    line.shift();

    if (column.length) {
        return addColumn(arr, line, column.reverse(), currentNumber);
    }

    return arr;
}

function addColumn(arr, line, column, currentNumber) {
    line.forEach((i) => {
        arr[i][column[0]] = ++currentNumber;
    });

    column.shift();

    if (line.length) {
        return addLine(arr, line.reverse(), column, currentNumber);
    }

    return arr;
}
