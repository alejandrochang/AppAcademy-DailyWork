import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {fetchSearchGiphys} from './util/api_util';
//testing


document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  window.store = store;
  const root = document.getElementById('root');
  window.fetchSearchGiphys = fetchSearchGiphys;
  // ReactDOM.render(<Root store={store} />, root);
  ReactDOM.render(<Root />, root);
})
