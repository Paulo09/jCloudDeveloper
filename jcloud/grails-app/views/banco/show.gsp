

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Banco</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Banco List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Banco</g:link></span>
        </div>
        <div class="body">
            <h1>Show Banco</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:banco, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:banco, field:'nome')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Senha:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:banco, field:'senha')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Username:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:banco, field:'username')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Ip Desnvolvimento:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:banco, field:'ipDesnvolvimento')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Porta Desnvolvimento:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:banco, field:'portaDesnvolvimento')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Ip Homologacao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:banco, field:'ipHomologacao')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Porta Homologacao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:banco, field:'portaHomologacao')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Ip Producao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:banco, field:'ipProducao')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Porta Producao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:banco, field:'portaProducao')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Aplicacao:</td>
                            
                            <td valign="top" class="value"><g:link controller="aplicacao" action="show" id="${banco?.aplicacao?.id}">${banco?.aplicacao?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Descricao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:banco, field:'descricao')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${banco?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
