import React from 'react';
import ReactDOM from 'react-dom';

const name = "Jane";
const element = <p>Hello, {name}</p>
ReactDOM.render(element, document.getElementById('root'));
