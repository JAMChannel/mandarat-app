import React from 'react'
import { v4 as uuidv4 } from 'uuid';

export const TaskAddInput = ({
  inputText,
  setInputText,
  setTaskList,
  taskList,
}) => {

  const handleSubmit = (e) => {
    const taskId = uuidv4();
    e.preventDefault();
    if(inputText === ""){
      return;
    }
    // console.log(e)
    setTaskList([
      ...taskList,
      {
        // id: taskList.length,
        id: taskId,
        draggableId: `task-${taskId}`,
        text: inputText,
      },
    ]);
    setInputText(""); 
    console.log(...taskList)
    console.log(inputText)
  };

  const handleChange = (e) => {
    setInputText(e.target.value);
    console.log(inputText)
  };
  return (
    <div>
      <form onSubmit={handleSubmit}>
        <input className='task-add-input'
        type="text" 
        onChange={handleChange}
        value={inputText}
        placeholder='taskを入力'/>
      </form>
    </div>
  )
}


