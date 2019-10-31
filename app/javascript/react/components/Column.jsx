import React, { useState, useEffect } from 'react'
import Task from './Task'
import NewTask from './NewTask'

function Column({ title }) {
  const [tasks, setTasks] = useState([])

  const handleSetTasks = (task) => {
    setTasks([tasks, <Task text={task.text} />])
  }
  return (
    <div className="boardColumn">
      <div className="title">{title}</div>
      <div>{tasks}</div>
      <NewTask handleSetTasks={handleSetTasks}/>
    </div>
  )
}

export default Column
