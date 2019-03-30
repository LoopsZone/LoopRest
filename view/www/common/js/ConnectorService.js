class connectorService {

    constructor(){
        this.dev = true;
        this.getMethod = 'GET';
        this.postMethod = 'POST';
        this.updateMethod = 'UPDATE';
        this.deleteMethod = 'DELETE';
    }

    /**
     * Execute startup step
     *
     * @param step
     * @param request
     * @returns {Promise}
     */
    makeStartupRequest(step, request){
        let method = this.postMethod;
        let action = 'startup/' + step;

        return this.httpServiceAsync(request, action, method);
    }

    /**
     * Http post service that returns a Promise
     *
     * @param request
     * @param action
     * @param method
     * @returns {Promise}
     */
    httpServiceAsync(request, action, method){
        if(this.dev){
            request = Object.assign({}, request, {XDEBUG_SESSION_START : 'PHPSTORM'});
        }

        return new Promise((resolve) => {
            $.ajax({
                url: action,
                type: method,
                dataType: 'json',
                data: JSON.stringify(request),
                contentType: 'application/json'
            }).done(function(response){
                resolve(response);
            }).fail(function(response){
                let dataResponse = 'A error as occurred';

                if(response.responseText){
                    dataResponse = JSON.parse(response.responseText);
                }

                resolve(dataResponse);
            });
        })
    }
}

export let ConnectorService = new connectorService();
