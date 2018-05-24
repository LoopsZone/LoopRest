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
        return new Promise((resolve, reject) => {
            $.ajax({
                url: url,
                contents: request
            }).done(function(response) {
                let dataResponse = JSON.parse(response);

                if (dataResponse) {
                    resolve(dataResponse);
                }
            }).error(function (response) {
                let dataResponse = JSON.parse(response);

                if (dataResponse) {
                    reject(dataResponse);
                }
            });
        });
    }
}

export let ConnectorService = connectorService;