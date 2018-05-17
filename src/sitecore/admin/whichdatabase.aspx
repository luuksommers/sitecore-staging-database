<%@ Import Namespace="Allego.Asp.Foundation.ExtendedConfig.Repository" %>
<%@ Import Namespace="Allego.Asp.Project.Common.Models" %>
<%= ConfigRepository.GetConfigData<DatabaseConfiguration>().Database %>