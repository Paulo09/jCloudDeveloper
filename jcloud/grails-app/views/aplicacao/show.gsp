

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Aplicacao</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Aplicacao List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Aplicacao</g:link></span>
        </div>
        <div class="body">
            <h1>Show Aplicacao</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:aplicacao, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome App:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:aplicacao, field:'nomeApp')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Login App:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:aplicacao, field:'loginApp')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Senha App:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:aplicacao, field:'senhaApp')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Descricao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:aplicacao, field:'descricao')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Tela:</td>
                            
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="t" in="${aplicacao.tela}">
                                    <li><g:link controller="tela" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Usuario:</td>
                            
                            <td valign="top" class="value"><g:link controller="usuario" action="show" id="${aplicacao?.usuario?.id}">${aplicacao?.usuario?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${aplicacao?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
