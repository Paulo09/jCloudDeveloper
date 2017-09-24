

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Banco List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Banco</g:link></span>
        </div>
        <div class="body">
            <h1>Banco List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="nome" title="Nome" />
                        
                   	        <g:sortableColumn property="senha" title="Senha" />
                        
                   	        <g:sortableColumn property="username" title="Username" />
                        
                   	        <g:sortableColumn property="ipDesnvolvimento" title="Ip Desnvolvimento" />
                        
                   	        <g:sortableColumn property="portaDesnvolvimento" title="Porta Desnvolvimento" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${bancoList}" status="i" var="banco">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${banco.id}">${fieldValue(bean:banco, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:banco, field:'nome')}</td>
                        
                            <td>${fieldValue(bean:banco, field:'senha')}</td>
                        
                            <td>${fieldValue(bean:banco, field:'username')}</td>
                        
                            <td>${fieldValue(bean:banco, field:'ipDesnvolvimento')}</td>
                        
                            <td>${fieldValue(bean:banco, field:'portaDesnvolvimento')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Banco.count()}" />
            </div>
        </div>
    </body>
</html>
