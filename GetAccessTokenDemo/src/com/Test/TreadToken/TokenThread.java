package com.Test.TreadToken;

import com.Test.Dto.AccessToken;
import com.Test.Util.AccessTokenUtil;

public class TokenThread implements Runnable {
	public static final String appID = "wx07f9e605277d3336";
	public static final String appScret = "5cbf00f31cb42b62cd192f14875515a2";
	public static AccessToken access_token = null;

	@Override
	public void run() {
		while (true) {
			try {
				// 调用工具类获取access_token(每日最多获取100000次，每次获取的有效期为7200秒)
				access_token = AccessTokenUtil.getAccessToken(appID, appScret);

				if (null != access_token) {
					System.out.println("accessToken获取成功：" + access_token.getExpires_in());
					// 7000秒之后重新进行获取
					Thread.sleep((access_token.getExpires_in() - 200) * 1000);
					//Thread.sleep(10 * 1000);
				} else {
					// 获取失败时，60秒之后尝试重新获取
					Thread.sleep(60 * 1000);
				}
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}

}
