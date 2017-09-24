

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Tela List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Tela</g:link></span>
        </div>
        <div class="body">
            <h1>Tela List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="nomeTela" title="Nome Tela" />
                        
                   	        <th>Aplicacao</th>
                   	    
                   	        <g:sortableColumn property="codigoTela" title="Codigo Tela" />
                        
                   	        <g:sortableColumn property="criacao" title="Criacao" />
                        
                   	        <g:sortableColumn property="nomeCampo" title="Nome Campo" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${telaList}" status="i" var="tela">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${tela.id}">${fieldValue(bean:tela, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:tela, field:'nomeTela')}</td>
                        
                            <td>${fieldValue(bean:tela, field:'aplicacao')}</td>
                        
                            <td>${fieldValue(bean:tela, field:'codigoTela')}</td>
                        
                            <td>${fieldValue(bean:tela, field:'criacao')}</td>
                        
                            <td>${fieldValue(bean:tela, field:'nomeCampo')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Tela.count()}" />
            </div>
        </div>
    </body>
</html>
