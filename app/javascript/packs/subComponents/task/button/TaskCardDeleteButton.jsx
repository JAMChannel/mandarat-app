import React from 'react'

export const TaskCardDeleteButton = ({
  taskCardsList,
  setTaskCardsList,
  taskCard,
}) => {

  const taskCardDeleteButton = (id) => {
    // 削除機能追加
    setTaskCardsList(taskCardsList.filter((e) => e.id !== id));
  };
  
  return (
    <div>
      <button 
      className='task-delete-button'
      onClick={() => taskCardDeleteButton(taskCard.id)}>
      <i className="fas fa-times"></i>
      </button>
    </div>
  )
}
