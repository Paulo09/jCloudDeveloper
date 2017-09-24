

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Plano</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Plano List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Plano</g:link></span>
        </div>
        <div class="body">
            <h1>Show Plano</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:plano, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Plano:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:plano, field:'nomePlano')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Tipo Cobranca:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:plano, field:'tipoCobranca')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Contrato:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:plano, field:'contrato')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Data Cadastro:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:plano, field:'dataCadastro')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Data Edicao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:plano, field:'dataEdicao')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Quant Dias:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:plano, field:'quantDias')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Usuario:</td>
                            
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="u" in="${plano.usuario}">
                                    <li><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Valor:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:plano, field:'valor')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${plano?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
