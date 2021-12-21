import React from 'react'

export const TaskAddInput = ({
  inputText,
  setInputText,
  setTaskList,
  taskList,
}) => {

  const handleSubmit = (e) => {
    e.preventDefault();
    // console.log(e)
    setTaskList([
      ...taskList,
      {text: inputText,
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

