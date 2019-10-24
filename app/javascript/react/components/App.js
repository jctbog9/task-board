import React from 'react'
import { BrowserRouter as Router, Route } from 'react-router-dom'

import Board from './Board'

export const App = props => {
  return (
    <Router>
      <Route exact path="/" component={Board} />
    </Router>
  )
}

export default App
