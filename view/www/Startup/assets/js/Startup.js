import {ConnectorService} from './../../../common/js/ConnectorService'

$('#btnSecretKey').click(function(){
    let value = $('#secretUniqueKey').val();

    let request = {key : value};
    ConnectorService.makeStartupRequest('secretKey', request).then((response) => {
        alert(response)
    };
)
});