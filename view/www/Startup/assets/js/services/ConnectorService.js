class connectorService {

    /**
     * Http post service that returns a Promise
     *
     * @param request
     * @param action
     * @returns {Promise<any>}
     */
    httpServiceAsync(request, action) {
        let url = '/startup/secretKey';
        return new Promise(((resolve, reject) => {
                $.post(url, request).done(function (response) {
                if (response) {
                    try {
                        let dataResponse = JSON.parse(response);

                        if (dataResponse) {
                            resolve(dataResponse);
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