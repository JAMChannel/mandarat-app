import React, { useState } from "react";

export const TaskCardTitle = () => {
  const [isClick, setIsClick] = useState(false)
  const handleClick = () => {
    setIsClick(true);
    console.log(isClick)
  };

  const [inputCardTitle, setInputCardTitle] = useState("Title")
  
  const handleChange = (e) => {
    console.log(inputCardTitle)
    setInputCardTitle(e.target.value)
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    setIsClick(false);
  };

  const handleBlur = () => {
    setIsClick(false);
  };

  return (
    <div onClick={handleClick} className="task-card-title">
      {isClick ? (
      <form onSubmit={handleSubmit}>
        <input className="task-card-title-input"
              type="text" 
              onChange={handleChange} 
              onBlur={handleBlur} 
              value={inputCardTitle} 
              maxLength="10"
              autoFocus/>
      </form>
      ) : (
      <h4>{inputCardTitle}</h4>
      )}
      
    </div>
  )
}
