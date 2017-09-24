

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Tela</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Tela List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Tela</g:link></span>
        </div>
        <div class="body">
            <h1>Show Tela</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:tela, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Tela:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:tela, field:'nomeTela')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Aplicacao:</td>
                            
                            <td valign="top" class="value"><g:link controller="aplicacao" action="show" id="${tela?.aplicacao?.id}">${tela?.aplicacao?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Codigo Tela:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:tela, field:'codigoTela')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Criacao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:tela, field:'criacao')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Campo:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:tela, field:'nomeCampo')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Validacao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:tela, field:'validacao')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${tela?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
