const taskList = document.getElementById("taskList");
const taskInput = document.getElementById("taskInput");

function addTask() {
    const taskText = taskInput.value.trim();

    if (taskText !== "") {
        const li = document.createElement("li");
        li.innerHTML = `
            <span>${taskText}</span>
            <button class="delete" onClick="deleteTask(this)">X</button>
        `;

        taskList.appendChild(li);
        taskInput.value = "";
    }
}

function deleteTask(button) {
    const li = button.parentElement;
    li.remove();
}




    
    
