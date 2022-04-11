@isTest
private class AnimalsCalloutsTest {

    @isTest static void testGetCallout() {
        // Cria uma resposta simulada baseada no Recurso Estático(static resource )
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetAnimalResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        // Associar a chamada externa(Callout) com a resposta simulada.
        Test.setMock(HttpCalloutMock.class, mock);

        // Chamar método para testar.
        HttpResponse result = AnimalsCallouts.makeGetCallout();
        
        // Verifique se a resposta simulada não é null( is not null)
        System.assertNotEquals(null, result, 'The Callout returned a null response.(A chamada externa retornou uma resposta nula.)');

        //Verificar status code
        System.assertEquals(200, result.getStatusCode(), 'The status code is not 200');

        //Verificar content type
        System.assertEquals('application/json;charset=UTF-8', result.getHeader('Content-Type'), 
                            'The content type value is not expected.');
        
        // Verificar se o array contém 3 itens
        Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(result.getBody());
        List<Object> animals = (List<Object>) results.get('animals');
        System.assertEquals(3, animals.size(), 'The array should only contain 3 items.');

    }

    @isTest static void testPostCallout() {
        // Set mock callout class
        Test.setMock(HttpCalloutMock.class, new AnimalsHttpCalloutMock());

        // This causes a fake response to be sent from the class that implements HttpCalloutMock.
        HttpResponse response = AnimalsCallouts.makePostCallout();
        
        // Verify that the response received contains fake values.
        String contentType = response.getHeader('Content-Type');
        System.assert(contentType == 'application/json');

        String actualValue = response.getBody();
        System.debug(response.getBody());
        String expectedValue = '{"animals": ["majestic badger", "fluffy bunny", "scary bear", "chicken", "mighty moose"]}';
        System.assertEquals(expectedValue, actualValue);
        System.assertEquals(200, response.getStatusCode());

    }

}
