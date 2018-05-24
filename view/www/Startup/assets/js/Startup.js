import {ConnectorService} from './services/ConnectorService'

$('#btnSecretKey').click(function () {
    let value = $('#secretUniqueKey').val();
    let connector = new ConnectorService();
    connector.httpServiceAsync({
        key : value
    }).done(function (response) {
        alert(response)
    });
});