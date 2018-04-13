package com.song.utility;

import org.apache.http.HttpEntity;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

/**
 * 模拟http请求。
 * 
 * @author song
 * @note 在org.apache.httpcomponents组件的基础上封装了http请求的方法。
 * @date 2018/4/12
 */
public class HttpClient {

	/**
	 * 模拟 http get 请求。
	 * 
	 * @return
	 */
	public static String get() {
		CloseableHttpClient httpClient = HttpClients.createDefault();
		HttpGet httpget = new HttpGet("http://www.baidu.com");
		String result = "";
		try {
			CloseableHttpResponse response = httpClient.execute(httpget);
			HttpEntity httpEntity = response.getEntity();
			result = EntityUtils.toString(httpEntity);
		} catch (Exception e) {
			result = e.getMessage();
		}
		return result;
	}

	public static String post(String url, String postParams) {
		String result = "";

		try {

			RequestConfig requestConfig = RequestConfig.custom().setSocketTimeout(5000).setConnectTimeout(5000)
					.setConnectionRequestTimeout(5000).build();

			CloseableHttpClient client = HttpClients.createDefault();
			HttpPost post = new HttpPost(url);
			post.setEntity(new StringEntity(postParams, "utf-8"));
			post.setConfig(requestConfig);
			CloseableHttpResponse response = client.execute(post);

			HttpEntity httpEntityResponse = response.getEntity();
			result = response.getStatusLine() + ":" + EntityUtils.toString(httpEntityResponse, "utf-8");
		} catch (Exception e) {
			result = e.getMessage();
		}
		return result;
	}
}