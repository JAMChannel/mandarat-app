import React, { useState,useEffect } from 'react'
import axios from 'axios'

function WorkPage() {
  const [portfolios, setPortfolios] = useState([]) // portfoliosの情報が格納される

  useEffect(() => {
    axios.get('/api/v1/portfolios.json')
    .then(resp => {
      console.log(resp.data)
      setPortfolios(resp.data);
    })
    .catch(e => {
      console.log(e)
    })
  }, [])
  return (
    <div>
    WorkPage component/Page
    </div>
  )
}

export default WorkPage
