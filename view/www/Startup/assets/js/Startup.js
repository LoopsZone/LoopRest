import {ConnectorService} from './services/ConnectorService'

let connector = new ConnectorService();
connector.httpServiceAsync('test');