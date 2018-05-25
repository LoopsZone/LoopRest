import {ConnectorService} from './../../../common/js/ConnectorService'

$('#btnSecretKey').click(function(){
    let value = $('#secretUniqueKey').val();

    let request = {key : value};
    ConnectorService.makeStartupRequest('secretKey', request).then((response) => {
        alert(response)
    };
)
});

$('#btnConnexionHost').click(function(){
    let hostConnexion = $('#hostConnexion').val();
    let hostUserConnexion = $('#hostUserConnexion').val();
    let hostPasswordConnexion = $('#hostPasswordConnexion').val();
    let hostEngineConnexion = $('#hostEngineConnexion').val();

    let request = {
        host : hostConnexion,
        user : hostUserConnexion,
        password : hostPasswordConnexion,
        engine : hostEngineConnexion
    };

    ConnectorService.makeStartupRequest('connexionHost', request).then((response) => {
        alert(response)
    };
)
});