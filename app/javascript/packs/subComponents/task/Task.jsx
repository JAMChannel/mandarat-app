import React from 'react'

export const Task = ({ task }) => {
  return (
    <div className='task-box'>
      <p className='task-box-text'>{task.text}</p>
      <button className='task-box-trash'>
        <i className="fas fa-trash-alt"></i>
      </button>
    </div>
  )
}
