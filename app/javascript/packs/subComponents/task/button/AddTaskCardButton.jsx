import React from 'react'
import { v4 as uuid } from "uuid";

export const AddTaskCardButton = ({ taskCardsList, setTaskCardsList }) => {

  const addTaskCard = () => {
    const taskCardId = uuid();
    // カード追加
    setTaskCardsList([
      ...taskCardsList,
      {
        id: taskCardId,
        draggableId: `item${taskCardId}`,
      },
    ]);
  };
  return (
    <div className='add-task'>
      <button className='add-task-button' onClick={addTaskCard}>+</button>
    </div>
  )
}
