<Query Kind="Statements">
  <Reference>E:\rd\rd_websites_n.binaries.amd64fre\hosting\Microsoft.Web.Hosting.Administration.Api.dll</Reference>
  <Reference>E:\rd\rd_websites_n.binaries.amd64fre\hosting\Microsoft.Web.Hosting.Test.PowerTools.dll</Reference>
  <Reference>E:\rd\rd_websites_n.binaries.amd64fre\hosting\Test\Tools\SasHelper.dll</Reference>
  <Reference>E:\rd\rd_websites_n.binaries.amd64fre\hosting\Azure\RDTools\Tools\Antares\SecretStore\StashProxy.dll</Reference>
  <Reference>&lt;RuntimeDirectory&gt;\System.ServiceModel.dll</Reference>
  <Namespace>Microsoft.Web.Hosting.Administration</Namespace>
  <Namespace>Microsoft.Web.Hosting.Test</Namespace>
  <Namespace>Microsoft.Web.Hosting.Test.Configuration</Namespace>
</Query>

var config = MyDeployments.patle71;
Console.WriteLine(config.HostingDbConnString);
string user = "user";
string sub = "sub";
string sf = "sf";
string ws = "ws";
string site = "site1";
string hostname = site + "." + config.SiteDomainSuffix;

//config.CreateUser(user).CreateSubscription(sub).CreateWebSpace(ws);
//config.GetUser(user).CreateSubscription(sub).CreateWebSpace(ws);

using (var client = config.GetServerFarmClient())
{ 
	//client.DeleteServerFarm(sub, ws, sf);
	//client.CreateServerFarm(sub, ws, false, new ServerFarm { Name = sf, Reserved = true, SKU = "Basic", WorkerSize = WorkerSizeOptions.Large });
}

using (var client = config.GetWebCloudClient())
{
	client.DeleteSite(sub,ws,site,"true");
}
