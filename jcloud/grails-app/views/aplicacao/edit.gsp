

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Aplicacao</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Aplicacao List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Aplicacao</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Aplicacao</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${aplicacao}">
            <div class="errors">
                <g:renderErrors bean="${aplicacao}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${aplicacao?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeApp">Nome App:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:aplicacao,field:'nomeApp','errors')}">
                                    <input type="text" maxlength="12" id="nomeApp" name="nomeApp" value="${fieldValue(bean:aplicacao,field:'nomeApp')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="loginApp">Login App:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:aplicacao,field:'loginApp','errors')}">
                                    <input type="text" maxlength="30" id="loginApp" name="loginApp" value="${fieldValue(bean:aplicacao,field:'loginApp')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="senhaApp">Senha App:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:aplicacao,field:'senhaApp','errors')}">
                                    <input type="password" maxlength="12" id="senhaApp" name="senhaApp" value="${fieldValue(bean:aplicacao,field:'senhaApp')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricao">Descricao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:aplicacao,field:'descricao','errors')}">
                                    <input type="text" id="descricao" name="descricao" value="${fieldValue(bean:aplicacao,field:'descricao')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tela">Tela:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:aplicacao,field:'tela','errors')}">
                                    
<ul>
<g:each var="t" in="${aplicacao?.tela?}">
    <li><g:link controller="tela" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="tela" params="['aplicacao.id':aplicacao?.id]" action="create">Add Tela</g:link>

                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="usuario">Usuario:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:aplicacao,field:'usuario','errors')}">
                                    <g:select optionKey="id" from="${Usuario.list()}" name="usuario.id" value="${aplicacao?.usuario?.id}" ></g:select>
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
