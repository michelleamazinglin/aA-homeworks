import { createStore} from 'redux';
import reducer from './reducer'

const store = createStore(reducer);
// call createStore, passing in the reducer function

export default store;