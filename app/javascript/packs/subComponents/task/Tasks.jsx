import React from 'react'
import { DragDropContext, Droppable } from "react-beautiful-dnd";
import { Task } from './Task'

const reorder = (taskList, startIndex, endIndex) => {
      // console.log(result); タスク並び替え
      const remove = taskList.splice(startIndex, 1); //[2,3]
      taskList.splice(endIndex, 0, remove[0]);
};

export const Tasks = ({ taskList, setTaskList }) => {

  const handleDragEnd= (result) => {
    // const remove = taskList.splice(result.source.index, 1);
    // taskList.splice(result.destination.index, 0, remove[0]);
    setTaskList(taskList);

    reorder(taskList, result.source.index, result.destination.index);
  };


  return (
    <div>
      <DragDropContext onDragEnd={handleDragEnd}>
        <Droppable droppableId="droppable">
          {(provided) => (
            <div {...provided.droppableProps} ref={provided.innerRef}>
              {taskList.map((task, index) => (
                <div key={task.id}>
                  <Task
                    index={index}
                    task={task}
                    taskList={taskList}
                    setTaskList={setTaskList}
                  />
                </div>
              ))}
              {provided.placeholder}
            </div>
          )}
        </Droppable>
      </DragDropContext>
    </div>
  )
}
