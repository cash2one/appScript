
private String getAppInfo() {
 		try {
 			String pkName = this.getPackageName();
 			String versionName = this.getPackageManager().getPackageInfo(
 					pkName, 0).versionName;
 			int versionCode = this.getPackageManager()
 					.getPackageInfo(pkName, 0).versionCode;
 			return pkName + "   " + versionName + "  " + versionCode;
 		} catch (Exception e) {
 		}
 		return null;
 	}
