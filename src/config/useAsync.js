import { useReducer, useEffect, useCallback } from "react"
const initialState = {
    loading: false,
    data: null,
    error: null
}

function reducer(state, action){
    switch(action.type) {
        case "LOADING":
            return {
                loading: true,
                data: null,
                error: null
            };
        case "SUCCESS":
            return {
                loading: false,
                data: action.data,
                error: null
            }
        case "ERROR":
            return {
                loading: false,
                data: null,
                error: action.error
            }
        default:
            return state;
    }
}
function useAsync(callback, deps=[]) {
    const [state, dispatch] = useReducer(reducer, initialState);
    const fetchDate = async () => {
        dispatch({type: "LOADING"});
        try {
            const data = await callback();
            dispatch({
                type: "SUCCESS",
                data: data
            })
        }
        catch(e){
            dispatch({
                type: "ERROR",
                error: e
            })
        }
    }
    useEffect(()=>{
        fetchDate();
        // eslint-disable-next-line
    }, deps);
    return [state, fetchDate];
}
export default useAsync;