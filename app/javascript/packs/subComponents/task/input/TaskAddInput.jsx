import React from 'react'

export const TaskAddInput = () => {

  const handleSubmit = (e) => {
    e.preventDefault();
    // console.log(e)
  };

  return (
    <div>
      <form onSubmit={handleSubmit}>
        <input className='task-add-input'
        type="text" 
        placeholder='taskを入力'/>
      </form>
    </div>
  )
}
