import React from 'react'

export const Task = ({  task, taskList, setTaskList}) => {

  const handleDelete = (id) => {
    console.log(id)
    setTaskList(taskList.filter((task) => task.id !== id));
  };


  return (
    <div className='task-box'>
      <p className='task-box-text'>{task.text}</p>
      <button className='task-box-trash' onClick={() => handleDelete
      (task.id)}>
        <i className="fas fa-trash-alt"></i>
      </button>
    </div>
  )
}
