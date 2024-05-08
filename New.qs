namespace MyQuantumProgram {

    // Define the InsertIntoSortedList operation
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

    // Define the Main entry point operation
    @EntryPoint()
    operation Main() : Result {
        // Define input values
        let sortedList = [1, 3, 5];
        let element = 2;

        // Call the InsertIntoSortedList operation
        let (updatedList, message) = InsertIntoSortedList(sortedList, element);

        // Output the result
        Message(message);
        return Result.Zero; // Explicitly construct a Result value
    }

} // Close the namespace
