import React from 'react'
import { Header } from '../subComponents/Header'
import { TaskCards } from '../subComponents/task/TaskCards'
import ParticleComponent from '../subComponents/ParticleComponent';


function ToreroPage() {
  return (
    <div className='torero'>
      
      <Header />
      <TaskCards />

    </div>
  )
}

export default ToreroPage
