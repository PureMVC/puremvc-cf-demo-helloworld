<!--
PureMVC CF Demo - HelloWorld
By Michael Oddis <michael.oddis@puremvc.org>
Copyright(c) 2008 Michael Oddis, Some rights reserved.
-->
<cfcomponent displayname="AppProxy" 
			 extends="org.puremvc.cf.patterns.proxy.Proxy" 
			 implements="org.puremvc.cf.interfaces.IProxy" 
			 output="true">
	
	<cfscript>
		variables.proxyName = "AppProxy";
	</cfscript>
	
	<cffunction name="init" returntype="org.puremvc.cf.interfaces.IProxy" access="public" output="false">
		<cfargument name="proxyName" type="string" required="false">
		<cfargument name="data" type="any" required="false">
		<cfscript>
			super.init();
			return this;
		</cfscript>
	</cffunction>
	
	<cffunction name="sayHello" returntype="string" access="public" output="true">
		<cfscript>
			this.sendNotification("HELLO_WORLD_RESULT");
		</cfscript>
	</cffunction>
	
</cfcomponent>