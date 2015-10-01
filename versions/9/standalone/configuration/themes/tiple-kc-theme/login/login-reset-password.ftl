<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("emailForgotTitle")}
    <#elseif section = "header">
    <#elseif section = "form">
        <div class="jumbotron form-signin">
        <form id="kc-reset-password-form" class="form-horizontal" action="${url.loginPasswordResetUrl}" method="post">
            <fieldset>
            		<h3 class="form-signin-heading">${msg("emailForgotTitle")}</h3>
            		<span class="registration">${msg("emailInstruction")}</span><br/>
                    <input type="text" id="username" name="username" class="form-control" placeholder="${msg("usernameOrEmail")}" autofocus/>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">${msg("send")}</button>
                    <a class="btn btn-lg btn-warning btn-block" href="${url.loginUrl}">${msg("doCancel")}</a>
            </fieldset>
        </form>      
    </#if>
    </div>
</@layout.registrationLayout>