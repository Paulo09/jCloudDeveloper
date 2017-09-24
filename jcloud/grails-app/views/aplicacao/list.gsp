

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Aplicacao List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Aplicacao</g:link></span>
        </div>
        <div class="body">
            <h1>Aplicacao List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="nomeApp" title="Nome App" />
                        
                   	        <g:sortableColumn property="loginApp" title="Login App" />
                        
                   	        <g:sortableColumn property="senhaApp" title="Senha App" />
                        
                   	        <g:sortableColumn property="descricao" title="Descricao" />
                        
                   	        <th>Usuario</th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${aplicacaoList}" status="i" var="aplicacao">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${aplicacao.id}">${fieldValue(bean:aplicacao, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:aplicacao, field:'nomeApp')}</td>
                        
                            <td>${fieldValue(bean:aplicacao, field:'loginApp')}</td>
                        
                            <td>${fieldValue(bean:aplicacao, field:'senhaApp')}</td>
                        
                            <td>${fieldValue(bean:aplicacao, field:'descricao')}</td>
                        
                            <td>${fieldValue(bean:aplicacao, field:'usuario')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Aplicacao.count()}" />
            </div>
        </div>
    </body>
</html>
