/**
 * 版权所有(C) 2015 深圳雁联计算系统有限公司
 * 创建：YangHan  15/12/30.
 */
package com.ylink.fastssh.shiro;

import org.apache.shiro.util.PatternMatcher;
import org.apache.shiro.util.RegExPatternMatcher;
import org.apache.shiro.web.filter.mgt.FilterChainManager;
import org.apache.shiro.web.filter.mgt.PathMatchingFilterChainResolver;

import javax.servlet.FilterChain;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.util.regex.PatternSyntaxException;

/**
 * author YangHan
 * data 15/12/30
 */
public class MyPathMatchingFilterChainResolver extends PathMatchingFilterChainResolver {
    //private static transient final Logger log = LoggerFactory.getLogger(MyPathMatchingFilterChainResolver.class);

    private boolean regexPathMatcher = false;

    PatternMatcher regexMatcher = new RegExPatternMatcher();

    public MyPathMatchingFilterChainResolver( boolean regexPathMatcher ){
        this.regexPathMatcher = regexPathMatcher;
    }

    /**
     * 转义字符替换
     */
    public static String replacePattern( String pattern ){
        if(pattern == null || pattern.length() == 0 )
            return pattern;

        return new String(pattern).replaceAll("(\\\\)(\\\\)=","=")
                .replaceAll("(\\\\)(\\\\)(\\.)","\\\\.")
                .replaceFirst("(\\\\)(\\\\)(\\?)","\\\\?");
    }

    /**
     * 路径匹配
     */
    protected boolean pathMatches(String pattern, ServletRequest request) {
        PatternMatcher pathMatcher = getPathMatcher();
        if( regexPathMatcher )
            pathMatcher = this.regexMatcher;

        String path = getPathWithinApplication(request);
        if( request instanceof HttpServletRequest){
            String queryString = ((HttpServletRequest)request).getQueryString();
            if( regexPathMatcher && ! (queryString == null || queryString.length() == 0) )
                path += ("?"+queryString);
        }

        String regex = pattern;
        if( regexPathMatcher )
            regex = replacePattern(pattern);

        try{
            return pathMatcher.matches(regex, path);
        }catch( PatternSyntaxException e ){
            //配置Ant表达式，容错处理
            if( regexPathMatcher )
                return getPathMatcher().matches(pattern,getPathWithinApplication(request));
        }

        return false;
    }

    public FilterChain getChain(ServletRequest request,
                                ServletResponse response, FilterChain originalChain) {
        FilterChainManager filterChainManager = getFilterChainManager();
        if (!filterChainManager.hasChains()) {
            return null;
        }

        for (String pathPattern : filterChainManager.getChainNames()) {
            if (pathMatches(pathPattern, request))
                return filterChainManager.proxy(originalChain, pathPattern);
        }

        return null;
    }
}
