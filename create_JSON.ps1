<########################################################################
#########################################################################
#                                                                       #
#                              Create JSON                              #
#                                                                       #
#########################################################################
#########################################################################
#                                                                       #
# Name:       create_JSON.ps1                                           #
# Version:    1.0                                                       #
# Author:     Casey Salvador                                            #
# Created:    26 Jul 2018                                               #
# Usage:      Creates a JSON file                                       #
# Notes:      Must run script as Admin                                  #
#########################################################################>
$newJSON = @'
{
	"min_length" : "0",
	"min_uppercase" : "0",
	"min_lowercase" : "0",
	"min_numeric" : "0",
	"min_special" : "0",
	"expires_after_x_days" : "999",
	"different_from_previous_x_passwords" : "0",
	"failed_logins_allowed" : "99"
}
'@ | ConvertFrom-Json

$newJSON | ConvertTo-Json -Depth 20 | set-content 'C:\(PATH TO FILE)\newJSON_File.json'