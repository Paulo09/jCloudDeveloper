

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Tela</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Tela List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Tela</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Tela</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${tela}">
            <div class="errors">
                <g:renderErrors bean="${tela}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${tela?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeTela">Nome Tela:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:tela,field:'nomeTela','errors')}">
                                    <input type="text" maxlength="30" id="nomeTela" name="nomeTela" value="${fieldValue(bean:tela,field:'nomeTela')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="aplicacao">Aplicacao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:tela,field:'aplicacao','errors')}">
                                    <g:select optionKey="id" from="${Aplicacao.list()}" name="aplicacao.id" value="${tela?.aplicacao?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="codigoTela">Codigo Tela:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:tela,field:'codigoTela','errors')}">
                                    <input type="text" id="codigoTela" name="codigoTela" value="${fieldValue(bean:tela,field:'codigoTela')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="criacao">Criacao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:tela,field:'criacao','errors')}">
                                    <g:datePicker name="criacao" value="${tela?.criacao}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeCampo">Nome Campo:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:tela,field:'nomeCampo','errors')}">
                                    <input type="text" id="nomeCampo" name="nomeCampo" value="${fieldValue(bean:tela,field:'nomeCampo')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="validacao">Validacao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:tela,field:'validacao','errors')}">
                                    <input type="text" id="validacao" name="validacao" value="${fieldValue(bean:tela,field:'validacao')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
