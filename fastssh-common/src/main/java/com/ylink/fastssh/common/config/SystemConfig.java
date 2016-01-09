package com.ylink.fastssh.common.config;

import com.ylink.fastssh.common.utils.ResourceUtils;
import com.ylink.fastssh.common.utils.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;
import java.net.URLDecoder;
import java.util.Properties;

/**
 * author YangHan
 * data 15/12/30
 */
public abstract class SystemConfig implements Serializable{

    private static final long serialVersionUID = 6969160359978872517L;

    private static Logger log = LoggerFactory.getLogger(SystemConfig.class);

    /** 外部文件配置 */
    public static final String OUTER_FILE = "outer.file";

    //数据库参数
    public static final String DB_DRIVER = "db.driver";
    public static final String DB_POOL = "db.pool";
    public static final String DB_URL = "db.url";
    public static final String DB_USERNAME = "db.username";
    public static final String DB_PASSWORD = "db.password";
    public static final String DB_TIMEOUT_IN_SECONDS = "db.timeout.in.secs";


    public static final String DB_DBCP_INITIAL_SIZE = "db.dbcp.initial.size";
    public static final String DB_DBCP_MAX_ACTIVE = "db.dbcp.max.active";
    public static final String DB_DBCP_MAX_IDLE = "db.dbcp.max.idle";
    public static final String DB_DBCP_MIN_IDLE = "db.dbcp.min.idle";
    public static final String DB_DBCP_MAX_WAIT = "db.dbcp.max.wait";
    public static final String DB_DBCP_MIN_EVICTABLE_IDLE_TIME_MILLIS = "db.dbcp.min.evictable.idle.time.millis";
    public static final String DB_DBCP_MAX_OPEN_PREPARED_STATEMENTS = "db.dbcp.max.open.prepared.statements";
    public static final String DB_DBCP_POOL_PREPARED_STATEMENTS = "db.dbcp.pool.prepared.statements";

    public static final String DB_BONECP_ACQUIRE_INCREMENT = "db.bonecp.acquire.inc";
    public static final String DB_BONECP_PARTITION_COUNT = "db.bonecp.partition.count";
    public static final String DB_BONECP_MIN_CONNECTIONS_PER_PARTITION = "db.bonecp.min.conns.partition";
    public static final String DB_BONECP_MAX_CONNECTIONS_PER_PARTITION = "db.bonecp.max.conns.partition";
    public static final String DB_BONECP_IDLE_MAX_AGE_IN_SECONDS = "db.bonecp.idle.max.age.in.secs";
    public static final String DB_BONECP_IDLE_CONN_TEST_PERIOD_IN_SECONDS = "db.bonecp.idle.conn.test.period.in.secs";
    public static final String DB_BONECP_RELEASE_HELPER_THREADS = "db.bonecp.release.helper.threads";
    public static final String DB_BONECP_STATEMENTS_CACHE_SIZE = "db.bonecp.statements.cache.size";

    //系统初始化
    /** 初始化登录账号 */
    public static final String INIT_LOGINACCOUNT = "init.loginaccount";
    /** 更新系统默认角色 */
    public static final String INIT_UPDATE_ROLE = "init.update.role";
    /**
     * 参数
     */
    protected Properties p ;

    /**
     * 获取系统名称
     */
    public abstract String getProjectName();

    protected SystemConfig(  ){
    }
    /**
     * 初始化
     */
    public void init() throws Exception{

        loadProperties(new FileInputStream(getDefaultConfigFile( )));

    }

    public Properties getProperties( ){
        return p;
    }

    public String getProperty( String key ,String def){
        return p.getProperty(key, def);
    }

    public String getProperty( String key ){
        return p.getProperty( key );
    }

    /**
     * 路径转码
     */
    protected String decodePath( String path ){
        try{
            return URLDecoder.decode(path, "UTF-8");
        }catch( UnsupportedEncodingException e ){
            log.warn("转码路径[?]出现异常:?",path,e.getMessage());
            return path;
        }
    }

    /**
     * 系统默认配置文件
     * @return
     * @throws UnsupportedEncodingException
     */
    protected File getDefaultConfigFile( ){
        String path = "classpath:" + getProjectName() + ".properties";
        try{
            File resource = ResourceUtils.getFile(path);
            return resource;
        }catch (Exception e){
            log.info("系统配置文件(" + path + ")不存在！");
            return null;
        }
    }

    /**
     * 加载数据库配置文件
     * @return
     */
    private void loadProperties( InputStream fis ) throws Exception{
        p = new Properties();
        try{
            Properties def = new Properties();
            def.load( fis  );

            String outerfilepath = def.getProperty( OUTER_FILE ,null);
            if( StringUtils.clean(outerfilepath) != null ){
                File outerfile = null;
                boolean loadFlag = false;
                outerfilepath = StringUtils.clean(outerfilepath);
                String[] outerfiles = outerfilepath.split(",");
                if( outerfiles != null ){
                    for( String of:outerfiles){
                        outerfile = new File( of );
                        if( outerfile.exists() ){
                            fis = new FileInputStream( outerfile );
                            p.load( fis );
                            loadFlag = true;
                            break;
                        }
                    }//end for
                }

                if( !loadFlag )
                    p = def;
            }else{
                p = def;
            }
            //log.info( "参数配置OK!(" + file.getPath()+")" );
        }finally{
            if( fis != null ) fis.close();
        }
    }
}
