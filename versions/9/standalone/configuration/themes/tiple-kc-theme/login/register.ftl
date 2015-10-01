<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("registerWithTitle",(realm.name!''))}
    <#elseif section = "header">
    <#elseif section = "form">
    <div class="jumbotron form-signin">
        <form id="kc-register-form" class="form-horizontal" action="${url.registrationAction}" method="post">
        <fieldset>
          <legend>${msg("registration")}</legend>
          <#if !realm.registrationEmailAsUsername>
            <div class="registration-form-fields ${messagesPerField.printIfExists('username',properties.kcFormGroupErrorClass!)}">
                 <input type="text" id="username" class="form-control floating-label" name="username" placeholder="${msg("username")}" value="${(register.formData.username!'')?html}"/>
            </div>
          </#if>
            <div class="registration-form-fields ${messagesPerField.printIfExists('firstName',properties.kcFormGroupErrorClass!)}">
                 <input type="text" id="firstName" class="form-control floating-label" name="firstName" placeholder="${msg("firstName")}" value="${(register.formData.firstName!'')?html}"/>
            </div>

            <div class="registration-form-fields ${messagesPerField.printIfExists('lastName',properties.kcFormGroupErrorClass!)}">
                 <input type="text" id="lastName" class="form-control floating-label" name="lastName" placeholder="${msg("lastName")}" value="${(register.formData.lastName!'')?html}" />
            </div>

            <div class="registration-form-fields ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">
                 <input type="text" id="email" class="form-control floating-label" name="email" placeholder="${msg("email")}" value="${(register.formData.email!'')?html}" />
            </div>

            <#if passwordRequired>
            <div class="registration-form-fields ${messagesPerField.printIfExists('password',properties.kcFormGroupErrorClass!)}">
                 <input type="password" id="password" class="form-control floating-label" placeholder="${msg("password")}" name="password" />
            </div>

            <div class="registration-form-fields ${messagesPerField.printIfExists('password-confirm',properties.kcFormGroupErrorClass!)}">
                 <input type="password" id="password-confirm" class="form-control floating-label" placeholder="${msg("passwordConfirm")}" name="password-confirm" />
            </div>

            </#if>
            <#if recaptchaRequired??>
            <div class="registration-form-fields ">
                <div class="${properties.kcInputWrapperClass!}">
                    <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                </div>
            </div>
            </#if>

            <div class="registration-form-fields ">
                    <button id="kc-register" class="btn btn-lg btn-primary btn-block" type="submit">${msg("doRegister")}</button>
                	 <a class="btn btn-lg btn-warning btn-block" href="${url.loginUrl}">${msg("doCancel")}</a>
            </div>
        </fieldset>
        </form>
    </div>
    </#if>
</@layout.registrationLayout>