import React,{ useState } from 'react'
import { DragDropContext, Droppable } from 'react-beautiful-dnd';
import { AddTaskCardButton } from './button/AddTaskCardButton'
import { TaskCard } from './TaskCard'

export const TaskCards = () => {
  const [taskCardsList, setTaskCardsList] = useState([{id:"0",draggableId:"item0"}]);

  const [taskList, setTaskList] = useState([]);

  const reorder = (taskCardsList, startIndex, endIndex) => {
    //タスクを並び変える。
    const remove = taskCardsList.splice(startIndex, 1); //[2,3]
    taskCardsList.splice(endIndex, 0, remove[0]); //[2,1,3]
  };
  


  const handleDragEnd = (result) => {
    reorder(taskCardsList, result.source.index, result.destination.index);
    setTaskCardsList(taskCardsList);

    const remove1 = taskList.splice(result.source.index, 1);
    taskList.splice(result.destination.index, 0, remove1[0]);
    setTaskList(taskList);
    // reorder2(taskList, result.source.index, result.destination.index);

  };

  return (
    <DragDropContext onDragEnd={handleDragEnd} >
      <Droppable droppableId="droppable" direction="horizontal">
        {(provided) => (
          <div className='task'
          {...provided.droppableProps}
          ref={provided.innerRef} >
            {taskCardsList.map((taskCard, index) => (

              <TaskCard 
              key={taskCard.id}
              index={index}
              taskCardsList={taskCardsList} 
              setTaskCardsList={setTaskCardsList}
              taskCard={taskCard} />   // idが必要な為propsで渡す

            ))}
            {provided.placeholder}
            <AddTaskCardButton
            taskCardsList={taskCardsList}
            setTaskCardsList={setTaskCardsList} />
          </div>
        )}
      </Droppable>
    </DragDropContext>
  )
}
