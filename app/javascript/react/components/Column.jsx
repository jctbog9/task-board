import React, { useState, useEffect } from 'react'

function Column({ title, tasks }) {
  return (
    <div className="boardColumn">
      <div className="title">{title}</div>
      <div>{tasks}</div>
    </div>
  )
}

export default Column
