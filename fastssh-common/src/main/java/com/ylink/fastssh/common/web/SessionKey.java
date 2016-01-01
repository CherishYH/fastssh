/**
 * 版权所有(C) 2015 深圳雁联计算系统有限公司
 * 创建：YangHan  15/12/30.
 */
package com.ylink.fastssh.common.web;

/**
 * author YangHan
 * data 15/12/30
 */
public interface SessionKey {

    public static final String EXCEPTION_OBJECT = "exception_object";

    public static final String SUCCESS_MESSAGES = "success_messages";

    public static final String ERROR_MESSAGES = "error_messages";

    /** 登录失败次数 */
    public static final String LOGIN_FAILURE_COUNT = "login_failure_count";

    /** login account  */
    public static final String LOGIN_ACCOUNT = "login_account";

    /** CA 随机数 */
    public static final String KAPTCHA = "kaptcha";

    /** CA 随机数 */
    public static final String CA_RANDOM_NUMBER = "ca_random_number";

    /** locale */
    public static final String PREFERRED_LOCALE = "preferred_locale";

    /** theme */
    public static final String PREFERRED_THEME = "preferred_theme";

    /** ShoppingCart */
    public static final String SHOPPING_CART = "shopping_cart";

    /** request parameters */
    public static final String REQUEST_PARAMETERS = "request_parameters";

}
