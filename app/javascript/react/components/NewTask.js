import React, { useState, useEffect } from 'react'

function NewTask({ handleSetTasks }) {
  const [displayForm, setDisplayForm] = useState(false)
  const [formPayload, setFormPayload] = useState("Task:")
  
  const handleShowForm = () => {
    setDisplayForm(!displayForm)
  }

  const handleFormSubmit = (event) => {
    event.preventDefault()
    const payload = {
      text: formPayload
    }
    handleSetTasks(payload)
  }

  const handleFormChange = (event) => {
    setFormPayload(event.target.value)
  }

  return (
    <div>
      {displayForm ? (
        <form onSubmit={handleFormSubmit}>
          <textarea wrap="hard" className="textBox" onChange={handleFormChange} value={formPayload}/>
          <button className="button" type="submit">Submit</button>
          <button className="button" onClick={handleShowForm}>Close</button>
        </form>
        ) : (
        <div className="newTask" onClick={handleShowForm}>
          <div className="plusButton">+</div>
        </div>
      )}
    </div>
  )
}

export default NewTask
