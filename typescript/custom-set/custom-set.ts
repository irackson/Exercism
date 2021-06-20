export default class CustomSet {
    list: number[];
    constructor(arr: number[] = []) {
        this.list = arr;
    }

    empty(): boolean {
        return this.list.length === 0 ? true : false;
    }

    contains(num: number): boolean {
        return this.list.includes(num);
    }

    subset(set: CustomSet): boolean {
        return this.list.every((e) => set.contains(e));
    }

    disjoint(set: CustomSet): boolean {
        return !this.list.some((e) => set.contains(e));
    }

    eql(set: CustomSet): boolean {
        return this.subset(set) && set.subset(this);
    }

    add(num: number): CustomSet {
        return new CustomSet([...this.list, num]);
    }

    intersection(set: CustomSet): CustomSet {
        return new CustomSet(this.list.filter((e) => set.contains(e)));
    }

    difference(set: CustomSet): CustomSet {
        return new CustomSet(this.list.filter((e) => !set.contains(e)));
    }

    union(set: CustomSet): CustomSet {
        const unionArr: number[] = [];
        [...this.list.concat(...set.list)].forEach((i) =>
            !unionArr.includes(i) ? unionArr.push(i) : null
        );
        return new CustomSet(unionArr);
    }
}
