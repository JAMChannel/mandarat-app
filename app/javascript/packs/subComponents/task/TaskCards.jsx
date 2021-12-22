import React from 'react'
import { AddTaskCardButton } from './button/AddTaskCardButton'
import { TaskCard } from './TaskCard'

export const TaskCards = () => {
  return (
    <div className='task'>
      <TaskCard />
      <AddTaskCardButton />
    </div>
  )
}
