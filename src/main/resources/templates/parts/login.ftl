<#macro login path isRegisterForm>
<form action = "${path}" method = "post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> User Name : </label>
        <div class="col-sm-6">
            <input type = "text" class="form-control ${(usernameError??)?string('is-invalid', '')}"
                   name = "username" placeholder="User name" value="<#if user??>${user.username}</#if>" />
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Password: </label>
        <div class="col-sm-6">
            <input type = "password" class="form-control ${(passwordError??)?string('is-invalid', '')}"
                   name = "password" placeholder="Password" />
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>
    </div>
    <#if isRegisterForm>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password: </label>
            <div class="col-sm-6">
                <input type = "password" class="form-control ${(passwordConfError??)?string('is-invalid', '')}"
                       name = "passwordConf" placeholder="Retype password" />
            <#if passwordConfError??>
                <div class="invalid-feedback">
                    ${passwordConfError}
                </div>
            </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Email: </label>
            <div class="col-sm-6">
                <input type = "email" class="form-control ${(emailError??)?string('is-invalid', '')}"
                       name = "email" placeholder="some@some.com" value="<#if user??>${user.email}</#if>" />
            <#if emailError??>
                <div class="invalid-feedback">
                    ${emailError}
                </div>
            </#if>
            </div>
        </div>
        <div class="form-group row">
            <div class="g-recaptcha" data-sitekey="6Lf5R38UAAAAALMAKg9Pg5cZ03IJTDlikpxjgFBS"></div>
            <#if captchaError??>
                <div class="alert alert-danger" role="alert">
                    ${captchaError}
                </div>
            </#if>
        </div>
    </#if>
    <input type = "hidden" name = "_csrf" value = "${_csrf.token}" />
    <button class="btn btn-primary" type = "submit"><#if isRegisterForm>Create<#else>Sign In</#if></button><br />
    <#if !isRegisterForm><a href="/registration">Add new user</a></#if>
</form>
</#macro>

<#macro logout>
    <form action = "/logout" method = "post">
        <input type = "hidden" name = "_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type = "submit">Sign Out</button>
    </form>
</#macro>