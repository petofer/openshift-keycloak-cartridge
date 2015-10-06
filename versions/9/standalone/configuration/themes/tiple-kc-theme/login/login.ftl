<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.name!''))}
    <#elseif section = "header">
    <#elseif section = "form">
        <#if realm.password>
         <div class="jumbotron form-signin">
            <form id="kc-form-login" class="form-horizontal" action="${url.loginAction}" method="post">
            <fieldset>
                    <div class="sign-in-title"><i class="mdi-action-settings-power main-image"></i></div>
					<input id="inputUsername" class="form-control" name="username" placeholder="${msg("username")}" type="text" autofocus />
                    <input id="inputPassword" class="form-control" name="password" type="password" placeholder="${msg("password")}" required/>
                    <button class="btn btn-lg btn-primary btn-block" name="login" id="kc-login" type="submit">${msg("doLogIn")}</button>
            </fieldset>
            </form>
            <div id="kc-registration" class="form-signin">
            	<#if realm.resetPasswordAllowed>
            	<span class="registration"><a href="${url.loginPasswordResetUrl}">${msg("doForgotPassword")}</a></span>
                </#if>            
        		<#if realm.password && realm.registrationAllowed>
                <br/><span class="signinwith">${msg("noAccount")}</span>
                <a class="btn btn-lg btn-info btn-block" href="${url.registrationUrl}">${msg("doRegister")}</a>
        		</#if>
            </div>

        <#if realm.password && social.providers??>
			<div class="form-signin">
				<span class="signinwith">${msg("signinwith")}</span>
            </div>
			<div id="kc-social-providers" class="social-providers">            
                    <#list social.providers as p>
                        <div class="icon-frame"><a href="${p.loginUrl}" id="fa-${p.alias}" class="fa fa-${p.providerId}-square fa-3x social-images"></a></div>
                    </#list>
            </div>
        </#if>
        </#if>
    <#elseif section = "info" >
    </#if> 
</@layout.registrationLayout>
