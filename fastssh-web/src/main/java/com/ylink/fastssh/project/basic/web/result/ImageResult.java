package com.ylink.fastssh.project.basic.web.result;

import javax.servlet.http.HttpServletResponse;

import com.ylink.fastssh.project.basic.web.action.ImageAction;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;

/**
 *
 * @author Aspen
 * @date 2013-8-26
 *
 */
public class ImageResult implements Result{

	private static final long serialVersionUID = -4953828716980720439L;

	public void execute(ActionInvocation invocation) throws Exception {

		if( invocation.getAction() instanceof ImageAction){
			ImageAction action = (ImageAction)invocation.getAction() ;
			HttpServletResponse response = ServletActionContext.getResponse();

			response.setContentType(action.getImageContentType());
			response.getOutputStream().write(action.getImageInBytes());
			response.getOutputStream().flush();
		}
	}

}
