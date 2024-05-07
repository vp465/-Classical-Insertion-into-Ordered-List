namespace InsertionSortExample {

    open Microsoft.Quantum.Diagnostics;

    operation InsertIntoSortedList(sortedList : Int[], element : Int) : (Int[], String) {
        mutable i = 0;
        mutable found = false;

        repeat {
            if (i == Length(sortedList) or sortedList[i] > element) {
                set found = true;
            } else {
                set i = i + 1;
            }
        } until (found or i == Length(sortedList));

        let updatedList = sortedList[0 .. i] + [element] + sortedList[i .. Length(sortedList) - 1];
        let message = $"The list after insertion is: {updatedList}";

        return (updatedList, message);
    }

    @EntryPoint()
    operation Main() : Result {
        let sortedList = [1, 3, 5];
        let element = 2;
        let (updatedList, message) = InsertIntoSortedList(sortedList, element);
        Message(message);
        return Result(0b0); // Explicitly construct a Result value
    }

}
