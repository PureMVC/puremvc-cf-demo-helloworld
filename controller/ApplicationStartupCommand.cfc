<!--
PureMVC CF Demo - HelloWorld
By Michael Oddis <michael.oddis@puremvc.org>
Copyright(c) 2008 Michael Oddis, Some rights reserved.
-->
<cfcomponent extends="org.puremvc.cf.patterns.command.MacroCommand"
			 output="true">
				 
	<cfscript>
		this.init();
	</cfscript>
	
	<cffunction name="init" displayname="init" access="public" output="true" returntype="void">
		<cfscript>
			super.init();
		</cfscript>
	</cffunction>
	
	<cffunction name="initializeMacroCommand" returntype="void" access="public" output="true">
		<cfscript>
			this.addSubCommand("ModelPrepCommand", "HelloWorld.controller.ModelPrepCommand" );
            this.addSubCommand("ViewPrepCommand", "HelloWorld.controller.ViewPrepCommand" );
		</cfscript>
	</cffunction>
	
</cfcomponent>