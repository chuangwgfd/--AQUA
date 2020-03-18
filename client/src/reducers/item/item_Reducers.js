import { combineReducers } from 'redux'

//取得商品列表資料
const itemData = (state = {}, action) => {
  switch (action.type) {
    case 'GET_ITEMDATA':
      return action.value
    default:
      return state
  }
}

//合併多個reducer(歸納函式)，為了配合瀏覽器開發外掛而必須的
const itemReducer = combineReducers({
  itemData,
})
export { itemReducer }
