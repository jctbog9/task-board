import React, { useState, useEffect } from 'react'

import Column from './Column'
import Task from './Task'

function Board() {
  const [rows, setRows] = useState([
    <Column title="ToDo" />,
    <Column title="In Process" />,
    <Column title="Done" />
  ])

  return (
    <div className="boardContainer">
      <div className="columnContainer">{rows}</div>
    </div>
  )
}

export default Board
