

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Plano List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Plano</g:link></span>
        </div>
        <div class="body">
            <h1>Plano List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="nomePlano" title="Nome Plano" />
                        
                   	        <g:sortableColumn property="tipoCobranca" title="Tipo Cobranca" />
                        
                   	        <g:sortableColumn property="contrato" title="Contrato" />
                        
                   	        <g:sortableColumn property="dataCadastro" title="Data Cadastro" />
                        
                   	        <g:sortableColumn property="dataEdicao" title="Data Edicao" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${planoList}" status="i" var="plano">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${plano.id}">${fieldValue(bean:plano, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:plano, field:'nomePlano')}</td>
                        
                            <td>${fieldValue(bean:plano, field:'tipoCobranca')}</td>
                        
                            <td>${fieldValue(bean:plano, field:'contrato')}</td>
                        
                            <td>${fieldValue(bean:plano, field:'dataCadastro')}</td>
                        
                            <td>${fieldValue(bean:plano, field:'dataEdicao')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Plano.count()}" />
            </div>
        </div>
    </body>
</html>
