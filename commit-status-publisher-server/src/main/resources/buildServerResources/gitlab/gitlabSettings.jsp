<%@ include file="/include-internal.jsp" %>
<%@ taglib prefix="props" tagdir="/WEB-INF/tags/props" %>
<%@ taglib prefix="l" tagdir="/WEB-INF/tags/layout" %>
<%--
  ~ Copyright 2000-2012 JetBrains s.r.o.
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~ http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  --%>

<jsp:useBean id="keys" class="jetbrains.buildServer.commitPublisher.github.ui.UpdateChangesConstants"/>

<table style="width: 100%">
  <props:selectSectionProperty name="${keys.authenticationTypeKey}" title="Authentication Type">

    <props:selectSectionPropertyContent value="${keys.authenticationTypePasswordValue}" caption="Password">
      <tr>
        <th><label for="${keys.userNameKey}">Username: <l:star/></label></th>
        <td>
          <props:textProperty name="${keys.userNameKey}" className="longField"/>
          <span class="error" id="error_${keys.userNameKey}"></span>
          <span class="smallNote">Specify GitHub user name</span>
        </td>
      </tr>
      <tr>
        <th><label for="${keys.passwordKey}">Password: <l:star/></label></th>
        <td>
          <props:passwordProperty name="${keys.passwordKey}" className="longField"/>
          <span class="error" id="error_${keys.passwordKey}"></span>
          <span class="smallNote">Specify GitHub password</span>
        </td>
      </tr>
    </props:selectSectionPropertyContent>

    <props:selectSectionPropertyContent value="${keys.authenticationTypeTokenValue}" caption="Access Token">
      <tr>
        <th><label for="${keys.accessTokenKey}">Personal Access Token: <l:star/></label></th>
        <td>
          <props:passwordProperty name="${keys.accessTokenKey}" className="longField"/>
          <span class="error" id="error_${keys.accessTokenKey}"></span>
          <span class="smallNote">
            Specify a GitLab private token
          </span>
        </td>
      </tr>
    </props:selectSectionPropertyContent>
  </props:selectSectionProperty>

  <tr>
    <th><label for="${keys.serverKey}">URL: <l:star/></label></th>
    <td>
      <props:textProperty name="${keys.serverKey}" className="longField"/>
      <span class="error" id="error_${keys.serverKey}"></span>
    <span class="smallNote">
      Specify GitLab URL. Use <strong>http(s)://[hostname]/api/v3</strong>
    </span>
    </td>
  </tr>
  <tr>
    <th><label for="${keys.contextKey}">Context name: <l:star/></label></th>
    <td>
      <props:textProperty name="${keys.contextKey}" className="longField"/>
      <span class="error" id="error_${keys.contextKey}"></span>
    <span class="smallNote">
      If not specified, 'continuous-integration/teamcity' will be used.
    </span>
    </td>
  </tr>
</table>