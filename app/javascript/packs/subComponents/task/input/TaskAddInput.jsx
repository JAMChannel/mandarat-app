import React from 'react'

export const TaskAddInput = (inputText, setInputText, taskList, setTaskList) => {

  const handleSubmit = (e) => {
    e.preventDefault();
    // console.log(e)
  };

  const handleChange = (e) => {
    setInputText(e.target.value)
    console.log(inputText)
  };
  return (
    <div>
      <form onSubmit={handleSubmit}>
        <input className='task-add-input'
        type="text" 
        onChange={handleChange}
        placeholder='taskを入力'/>
      </form>
    </div>
  )
}
