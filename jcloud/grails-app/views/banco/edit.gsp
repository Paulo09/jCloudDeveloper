

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Banco</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Banco List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Banco</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Banco</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${banco}">
            <div class="errors">
                <g:renderErrors bean="${banco}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${banco?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome">Nome:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:banco,field:'nome','errors')}">
                                    <input type="text" id="nome" name="nome" value="${fieldValue(bean:banco,field:'nome')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="senha">Senha:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:banco,field:'senha','errors')}">
                                    <input type="text" id="senha" name="senha" value="${fieldValue(bean:banco,field:'senha')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="username">Username:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:banco,field:'username','errors')}">
                                    <input type="text" id="username" name="username" value="${fieldValue(bean:banco,field:'username')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ipDesnvolvimento">Ip Desnvolvimento:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:banco,field:'ipDesnvolvimento','errors')}">
                                    <input type="text" id="ipDesnvolvimento" name="ipDesnvolvimento" value="${fieldValue(bean:banco,field:'ipDesnvolvimento')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="portaDesnvolvimento">Porta Desnvolvimento:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:banco,field:'portaDesnvolvimento','errors')}">
                                    <input type="text" id="portaDesnvolvimento" name="portaDesnvolvimento" value="${fieldValue(bean:banco,field:'portaDesnvolvimento')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ipHomologacao">Ip Homologacao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:banco,field:'ipHomologacao','errors')}">
                                    <input type="text" id="ipHomologacao" name="ipHomologacao" value="${fieldValue(bean:banco,field:'ipHomologacao')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="portaHomologacao">Porta Homologacao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:banco,field:'portaHomologacao','errors')}">
                                    <input type="text" id="portaHomologacao" name="portaHomologacao" value="${fieldValue(bean:banco,field:'portaHomologacao')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ipProducao">Ip Producao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:banco,field:'ipProducao','errors')}">
                                    <input type="text" id="ipProducao" name="ipProducao" value="${fieldValue(bean:banco,field:'ipProducao')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="portaProducao">Porta Producao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:banco,field:'portaProducao','errors')}">
                                    <input type="text" id="portaProducao" name="portaProducao" value="${fieldValue(bean:banco,field:'portaProducao')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="aplicacao">Aplicacao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:banco,field:'aplicacao','errors')}">
                                    <g:select optionKey="id" from="${Aplicacao.list()}" name="aplicacao.id" value="${banco?.aplicacao?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricao">Descricao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:banco,field:'descricao','errors')}">
                                    <input type="text" id="descricao" name="descricao" value="${fieldValue(bean:banco,field:'descricao')}"/>
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
