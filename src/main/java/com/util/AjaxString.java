
package com.util;

public class AjaxString {
	static String json_success="1";
	static String json_fail="0";
	public static String getJson_success() {
		return json_success;
	}
	public static void setJson_success(String json_success) {
		AjaxString.json_success = json_success;
	}
	public static String getJson_fail() {
		return json_fail;
	}
	public static void setJson_fail(String json_fail) {
		AjaxString.json_fail = json_fail;
	}
	
}
