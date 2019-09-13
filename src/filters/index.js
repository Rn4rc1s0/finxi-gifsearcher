import moment from 'moment'
import 'semantic-ui-css/semantic.min.css';

export function prettyDate (dateString) {
    return moment(dateString, 'yyyy-MM-DD HH:mm:ss').fromNow()
}