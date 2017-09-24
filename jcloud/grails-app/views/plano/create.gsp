

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Plano</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Plano List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Plano</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${plano}">
            <div class="errors">
                <g:renderErrors bean="${plano}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomePlano">Nome Plano:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:plano,field:'nomePlano','errors')}">
                                    <input type="text" maxlength="20" id="nomePlano" name="nomePlano" value="${fieldValue(bean:plano,field:'nomePlano')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipoCobranca">Tipo Cobranca:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:plano,field:'tipoCobranca','errors')}">
                                    <g:select id="tipoCobranca" name="tipoCobranca" from="${plano.constraints.tipoCobranca.inList}" value="${plano.tipoCobranca}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contrato">Contrato:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:plano,field:'contrato','errors')}">
                                    <input type="text" id="contrato" name="contrato" value="${fieldValue(bean:plano,field:'contrato')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dataCadastro">Data Cadastro:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:plano,field:'dataCadastro','errors')}">
                                    <g:datePicker name="dataCadastro" value="${plano?.dataCadastro}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dataEdicao">Data Edicao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:plano,field:'dataEdicao','errors')}">
                                    <g:datePicker name="dataEdicao" value="${plano?.dataEdicao}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantDias">Quant Dias:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:plano,field:'quantDias','errors')}">
                                    <input type="text" id="quantDias" name="quantDias" value="${fieldValue(bean:plano,field:'quantDias')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="valor">Valor:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:plano,field:'valor','errors')}">
                                    <input type="text" id="valor" name="valor" value="${fieldValue(bean:plano,field:'valor')}" />
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
