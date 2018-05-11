class connectorService {

    /**
     * Http post service that returns a Promise
     *
     * @param request
     * @returns {Promise}
     */
    httpServiceAsync(request) {
        let url = 'http://rest.loopszone:8080';
        return new Promise(((resolve, reject) => {
                $.post(url, request).done(function (response) {
                if (response) {
                    try {
                        let dataResponse = JSON.parse(response);

                        if (dataResponse && dataResponse.state === 'expired') {
                            onResponseService.processResponse(actions.USER_MESSAGE, dataResponse.userMessage);
                            reject(dataResponse);
                        } else if (dataResponse && dataResponse.state !== 'ok') {
                            onResponseService.processResponse(actions.USER_MESSAGE, {userMessage: dataResponse.userMessage});
                            reject(dataResponse.userMessage);
                        } else if (dataResponse && dataResponse.response) {
                            resolve(dataResponse);
                        } else {
                            resolve([]);
                        }
                    } catch (e) {
                        console.log(e.message);
                        console.log(response);
                        reject(response);
                    }

                } else {
                    reject({userMessage: 'Error processing your request'});
                }
            });
    }))
    }
}

export let ConnectorService = connectorService;