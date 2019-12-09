import React, { useState, useEffect } from 'react'

import Column from './Column'

function Board() {
  const [rows, setRows] = useState([
    <Column key={1} title="ToDo" />,
    <Column key={2}  title="In Process" />,
    <Column key={3}  title="Done" />
  ])

  return (
    <div className="boardContainer">
      <div className="columnContainer">{rows}</div>
    </div>
  )
}

export default Board
