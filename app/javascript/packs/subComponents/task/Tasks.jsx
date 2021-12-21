import React from 'react'
import { Task } from './Task'

export const Tasks = ({ taskList, setTaskList }) => {
  return (
    <div>
      {taskList.map(task => (
        <div>
          {/* {task.text} */}
          <Task task={task} taskList={taskList} setTaskList={setTaskList}/>
        </div>
      ))}
    </div>
  )
}
