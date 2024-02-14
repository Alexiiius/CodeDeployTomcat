aws deploy create-deployment \
    --application-name LanzarAppJavaTomcat \
    --deployment-config-name CodeDeployDefault.OneAtATime \
    --deployment-group-name LanzarAppJavaTomcat \
    --github-location repository=Alexiiius/CodeDeployTomcat,commitId=7b99bb8cc5db5afd566266c412c6c77760f754c3