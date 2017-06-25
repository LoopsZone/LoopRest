<?php

class CoreConfig
{

    /**
     * define if the current environment is development or production
     *
     * @var bool
     */
    const DEV = true;

    /**
     * define if we must print the exception or not.
     * DEV must be in true
     *
     * @var bool
     */
    const PRINT_EXCEPTIONS = false;

    /**
     * Webservices global execution timeout
     */
    const WS_TIMEOUT = 120;

    /**
     * Webservices global connection timeout
     */
    const WS_TIMEOUT_ON_CONNECT = 120;

    /**
     * Webservices timeout for integrations only
     */
    const WS_INTEGRATION_TIMEOUT = 60;

    /**
     * max execution time
     */
    const MAX_EXECUTION_TIME = 120;

    /**
     * Encryptation key
     */
    const ENCRIPT_KEY = "MTAy";

    /**
     * webservices password
     */
    const SYS_ACCESS_PASS = "1";

    /**
     * Enconding currently used in the system. [UTF-8 | ISO-8859-1]
     */
    const SYS_ENCODING = 'UTF-8';

    /**
     * Notify warnings for each statement executed in database
     */
    const DB_NOTIFY_WARNINGS = false;

    /**
     * Log connections count
     */
    const DB_LOG_CONNECTIONS_COUNT = false;

    /**
     * this flag indicates if the db connection must be closed after using it.
     */
    const DB_FORCE_CLOSE_CONNECTION = false;

    /**
     * this flag indicates if queries must use the isolation level with READ UNCOMMITTED (dirty read).
     */
    const DB_USE_READ_UNCOMMITTED = false;

    /**
     * this flag indicates if db connector uses START TRANSACTION
     */
    const DB_USE_START_TRANSACTION = false;


    /**
     * this flag indicates if db connector uses START TRANSACTION for Queries (Selects)
     */
    const DB_USE_START_TRANSACTION_IN_SELECT = false;

    /**
     * Time for expiring sessions, minutes
     */
    const DB_SESSION_EXPIRE_TIMEOUT = 999;

    /**
     * db option to turn the query cache ON/OFF
     *
     * @var bool
     */
    const DB_CACHE_QUERIES_ENABLE = false;

    /**
     * expiration time for the short cache on queries
     * this value is in minutes time unit
     *
     * @var int
     */
    const DB_CACHE_QUERIES_SHORT_TIME = 60;

    /**
     * Database configuration
     */
    const DB_HOSTNAME__ = 'DB_HOSTNAME__';
    const DB_USERNAME__ = 'DB_USERNAME__';
    const DB_PASSWORD__ = 'DB_PASSWORD__';

    //development main database
    const DB_NAME = 'midasone';
    const DB_HOSTNAME__midasone = 'bG9jYWxob3N0';                        //localhost
    const DB_USERNAME__midasone = 'bWlkYXNvbmU=';            //midasone		bWlkYXNvbmU=
    const DB_PASSWORD__midasone = 'bWlkYXMxMjM=';    //midas123	bWlkYXMxMjM=

    //development session database
    const DB_SESSION_NAME = 'MidasOneSession';
    const DB_HOSTNAME__MidasOneSession = 'bG9jYWxob3N0';
    const DB_USERNAME__MidasOneSession = 'bWlkYXNvbmU=';
    const DB_PASSWORD__MidasOneSession = 'bWlkYXMxMjM=';

    //development events database
    const DB_EVENTS_NAME = 'MidasOneEvents';
    const DB_HOSTNAME__MidasOneEvents = 'bG9jYWxob3N0';
    const DB_USERNAME__MidasOneEvents = 'bWlkYXNvbmU=';
    const DB_PASSWORD__MidasOneEvents = 'bWlkYXMxMjM=';

    //development application database
    const DB_APPLICATION_NAME = 'MidasOneApplication';
    const DB_HOSTNAME__MidasOneApplication = 'bG9jYWxob3N0';
    const DB_USERNAME__MidasOneApplication = 'bWlkYXNvbmU=';
    const DB_PASSWORD__MidasOneApplication = 'bWlkYXMxMjM=';

    //development MSSQL database
    const DB_MSSQL = 'GCashier';
    const DB_HOSTNAME__GCashier = 'cGNzZXJ2ZXI=';
    const DB_USERNAME__GCashier = 'cGhw';
    const DB_PASSWORD__GCashier = 'cGhwMTIz';

    //development MSSQL database EPOS
    const DB_MSSQL_EPOS = 'GCashier';
    const DB_HOSTNAME__EPOS = 'cGNzZXJ2ZXI=';
    const DB_USERNAME__EPOS = 'cGhw';
    const DB_PASSWORD__EPOS = 'cGhwMTIz';

    /**
     * Mail configuration
     */
    const MAIL_STANDARD = false;
    const MAIL_RETURN = 'josua@midascashier.com';
    const MAIL_FROM = 'josua@midascashier.com';
    const MAIL_HOST = 'srv-mail1.im.priv';
    const MAIL_PORT = '25';
    const MAIL_USERNAME = 'josua@midascashier.com';
    const MAIL_PASSWORD = '123';
    const MAIL_AUTH = false;
    const MAIL_DEV = 'josua@midascashier.com';

    /**
     * Mail Templates
     */
    const TEMPLATE_PATH = 'E:/desarrollo/source/cashier/mail/templates/';
    const TEMPLATE_IMAGE_PATH = 'E:/desarrollo/source/cashier/mail/templates/images/';
    const TEMPLATE_FILE_EXTENSION = '.html';

    /**
     * Mail Documents
     */
    const DOCUMENT_PATH = 'E:/desarrollo/source/cashier/mail/attachments/';

    /**
     * URL where the message queue service is located
     */
    const MESSAGE_QUEUE_URL = 'http://cashier:8080/mqueue/ws/mQueueProcessor.php';

    /**
     * hostname for the message queue service
     */
    const MESSAGE_QUEUE_HOSTNAME = 'cashier';

    /**
     * message queue service enable flag
     */
    const MESSAGE_QUEUE_ENABLE = true;

    /**
     * message queue service enable flag for wsRequest logs
     */
    const MESSAGE_QUEUE_WS_REQUEST_ENABLE = true;

    /**
     * Session handler,    define what type of handler will be used for the session objects<br/><br/>
     *
     * all the objects and values will be stored in DB
     * const SESSION_HANDLER = "db";
     *
     * default php handler (system files)
     * const SESSION_HANDLER = "file";
     *
     * objects will be saved in memory
     * const SESSION_HANDLER = "memory";
     */
    const SESSION_HANDLER = "db";

    /**
     * Full path where the session objects will be stored<br/>
     * if null then use the php default
     * only applies when SESSION_HANDLER = "file"
     */
    const SESSION_PATH = "C:/Logs";

    /**
     * Application handler,    define what type of handler will be used for the application objects<br/><br/>
     *
     * all the objects and values will be stored in DB
     * const APPLICATION_HANDLER = "db";
     *
     * file system storage
     * const APPLICATION_HANDLER = "file";
     */
    const APPLICATION_HANDLER = "file";

    /**
     * Full path where the application objects will be stored<br/>
     * only applies when APPLICATION_HANDLER = "file"
     */
    const APPLICATION_PATH = "C:/Temp";

    /**
     * path where all system logs will be stored
     *
     * @var string
     */
    const LOG_PATH = "C:/Logs";

    /**
     * external webservice for bonus
     *
     * @var string
     */
    const BONUS_WS = 'http://bonus:8080/ws/wsBonus.php';

    /**
     * timeout for bonus
     *
     * @var string
     */
    const BONUS_WS_TIMEOUT = 100;

    /**
     * external webservice for limits - active flag
     *
     * @var string
     */
    const LIMITS_ACTIVE = false;

    /**
     * external webservice for limits
     *
     * @var string
     */
    const LIMITS_WS = 'http://cashier:8080/wsprivate/wsLimits.php';

    /**
     * hostname for limits service
     */
    const LIMITS_HOSTNAME = 'cashier';

    /**
     * cashier controller url
     *
     * @var string
     */
    const CASHIER_CONTROLLER_WS = 'http://cashier:8080/wscashier/wsController.php';

    /**
     * hostname for cashier controller
     */
    const CASHIER_CONTROLLER_HOSTNAME = 'cashier';

    /**
     * public services URL
     *
     * @var string
     */
    const CASHIER_PUBLIC_SERVICES_WS = "https://public.secureprivate.com/services/";

    /**
     * auth controller url
     *
     * @var string
     */
    const AUTH_CONTROLLER_WS = 'http://cashier:8080/wsauth/wsAuthController.php';

    /**
     * hostname for auth cashier controller
     */
    const AUTH_CONTROLLER_HOSTNAME = 'cashier';

    /**
     * external legacy web service
     *
     * @var string
     */
    const LEGACY_WS = 'http://localhost/MIDAS_DEVELOPMENT_WSMIDAS/LimitsEvaluation.asmx/';

    /**
     * external legacy web service for MIDAS_SERVICE
     *
     * @var string
     */
    const LEGACY_MIDAS_SERVICE_WS = "http://localhost/MIDAS_DEVELOPMENT_WSMIDAS/MidasService.asmx/";

    /**
     * check the limits
     *
     * @var bool
     */
    const LEGACY_LIMITS_ACTIVE = false;

    /**
     * replicate transactions active
     *
     * @var bool
     */
    const LEGACY_REPLICATE_ACTIVE = false;

    /**
     * check account active
     *
     * @var bool
     */
    const LEGACY_CHECK_ACCOUNT_ACTIVE = false;

    /**
     * check is initial active
     *
     * @var bool
     */
    const LEGACY_IS_INITIAL_ACTIVE = false;

    /**
     * insert email name event  active
     *
     * @var bool
     */
    const LEGACY_EMAIL_EVENT_NAME_ACTIVE = false;

    /**
     * timeout for webservice insert event name
     *
     * @var bool
     */
    const LEGACY_WS_EMAIL_EVENT_NAME_TIMEOUT = 5;

    /**
     * Add a Session Tracker in .Net when a customer logs in.
     *
     * @var bool
     */
    const LEGACY_ADD_SESSION_TRACKER = false;

    /**
     * options to configure the db stats tracking process
     * these are the filters we can set for db tracking
     */
    const TRACK_DB_STATS_ACTIVE = false;

    /**
     * validate cascading processors against the legacy system.
     * @var boolean
     */
    const LEGACY_CHECK_PROCESSOR_RESTRICTIONS = false;

    /**
     * list of DB usernames to be tracked
     *
     * user1|user2|...|userX
     * wildcard for all users = *
     */
    const TRACK_DB_STATS_USERS = '';

    /**
     * list of DB names to be tracked
     *
     * db1|db2|...|dbX
     * wildcard for all dbs = *
     */
    const TRACK_DB_STATS_DBS = '';

    /**
     * list of DB server hosts to be tracked
     *
     * host1|host2|...|hostX
     * wildcard for all hosts = *
     */
    const TRACK_DB_STATS_HOSTS = '';

    /**
     * track a specific stored procedure execution.
     * this option ignores TRACK_DB_STATS_TIME when set
     *
     * option disable = *
     */
    const TRACK_DB_STATS_STATEMENT = '*';

    /**
     * filter to track DB executions taking more than the value set (seconds)
     *
     * @var float
     */
    const TRACK_DB_STATS_TIME = 0;

    /**
     * options to configure the webservices stats tracking process
     * these are the filters we can set for webservices tracking
     */
    const TRACK_WS_STATS_ACTIVE = true;

    /**
     * filter to track WS executions taking more than the value set (seconds)
     *
     * @var float
     */
    const TRACK_WS_STATS_TIME = 0;

    /**
     * urls must match this defined pattern
     *
     * last i is for a case-insensitive search
     *
     * example:
     * TRACK_WS_STATS_PATTERN = "/google|yahoo/i";
     *
     * set to null to match anything
     *
     * @var string
     */
    const TRACK_WS_STATS_PATTERN = null;

    /**
     * global flag to log events or not
     */
    const EVENT_NOTIFICATIONS_LOG_ACTIVE = false;

    /**
     * path where we store the event notifications
     *
     * @var string
     */
    const EVENT_NOTIFICATIONS_LOGS = "C:/Logs";

    /**
     * filter for event notifications.
     *
     * ExceptionEvent|SystemEvent|...|XEvent
     * wildcard for all events = *
     */
    const EVENT_NOTIFICATIONS = "*";

    /**
     * filter for event notifications types.
     *
     * 1|5|...|X
     * wildcard for all events types = *
     */
    const EVENT_NOTIFICATIONS_TYPES = "*";

    /**
     * filters for event notifications data.
     *
     * key_needed1=value_needed1|...|key_neededX=value_neededX
     * wildcard for any data = *
     */
    const EVENT_NOTIFICATIONS_DATA = "*";

    /**
     * full file path where we store the pending event to be stored in DB
     *
     * @var string
     */
    const PENDING_EVENTS_FILE = "/path/pending_events.data";

    /**
     * flag to turn off the customer information validation
     *
     * @var bool
     */
    const VALIDATE_CUSTOMER_INFORMATION = true;

    /**
     * List of fields that are being currently validated.
     *
     *  [ addressOne | addressTwo | country | state | city | postalCode | email | phone ]
     *
     * @var array
     */
    const VALIDATE_CUSTOMER_INFORMATION_FIELDS = 'addressOne,city,state,country';

    /**
     * Iovation Check Enable - Must be Synced with ClientConfig::IOVATION_ENABLE
     *
     * @var boolean
     */
    const IOVATION_ENABLED = false;

    /**
     * Iovation Timeout
     *
     * @var integer
     */
    const IOVATION_TIMEOUT = 3;

    /**
     * Iovation Process Exceptions Flag
     *
     * @var boolean
     */
    const IOVATION_PROCESS_EXCEPTIONS = false;

    /**
     * Iovation Check URL
     *
     * @var string
     */
    const IOVATION_WS_URL = 'http://10.20.3.3:1005/AccountSecuritySvc.asmx';

    /**
     * URL to Start the Midas Service
     */
    const MIDAS_SERVICES_START_URL = "http://[local_services]/start_service/start.php";

    /**
     * Backup URL to Start the Midas Service
     */
    const MIDAS_SERVICES_START_BK_URL = "http://[local_services]/start_service/start.php";

    /**
     * hours to set a name as expired after It was been requested
     */
    const P2P_EXPIRED_NAME_HOURS = '48';

    /**
     * expire names process enabled
     */
    const P2P_EXPIRED_NAME_ENABLED = false;

    /**
     * security check - active flag
     */
    const SECURITY_ACTIVE = true;

    /**
     * security is active but the result is ignored
     */
    const SECURITY_IGNORED = true;

    /**
     * Approved score for acuity tec
     */
    const SECURITY_ACUITY_TEC_APPROVED_SCORE = '80';

    /**
     * Acuity Tec Timeout
     */
    const SECURITY_ACUITY_TEC_TIMEOUT = '6';

    /**
     * max customer vip level for sending customer to scrubbers, set to 20 is active for all customers
     */
    const SECURITY_MAX_VIP = 20;

    /**
     * synchronize - active flag
     */
    const SYNCHRONIZE_ENABLED = true;

    /**
     * synchronize minutes
     */
    const SYNCHRONIZE_MINUTES = '5';

    /**
     * send call me now email - active flag
     */
    const CALL_ME_NOW_EMAIL_ENABLE = true;

    /**
     * Company Id for BookMaker
     */
    const COMPANY_ID_BOOKMAKER = '100';

    /**
     * Company Id for BetDSI
     */
    const COMPANY_ID_BET_DSI = '100';

    /**
     * Company Id for BetCris
     */
    const COMPANY_ID_BETCRIS = '100';

    /**
     * Company Id for POKER - DigitalExchange
     */
    const COMPANY_ID_POKER = '101';

    /**
     * Company Id for YaPoker
     */
    const COMPANY_ID_YAPOKER = '101';

    /**
     * Company Id for Bingo
     */
    const COMPANY_ID_BINGO = '102';

    /**
     * Company Id for Bingo NBB
     */
    const COMPANY_ID_BINGO_NBB = '102';

    /**
     * Company Id for Lottery
     */
    const COMPANY_ID_LOTTERY = '80';

    /**
     * Email BookMaker
     **/
    const CALL_ME_NOW_EMAIL_BOOKMAKER = 'josua@midascashier.com';

    /**
     * Email DSI
     **/
    const CALL_ME_NOW_EMAIL_DSI = 'josua@midascashier.com';

    /**
     * Email CRIS
     **/
    const CALL_ME_NOW_EMAIL_BETCRIS = 'josua@midascashier.com';

    /**
     * Email BingoBilly
     **/
    const CALL_ME_NOW_EMAIL_NBB = 'josua@midascashier.com';

    /**
     * convertToCashOnly - active flag
     */
    const CONVERT_TO_CASH_ONLY_ENABLED = false;

    /**
     * timezone for database (set to America/Los_Angeles)
     *
     * @var string
     */
    const TIMEZONE_DB = null;

    /**
     * timezone for application (set to America/Los_Angeles)
     *
     * @var string
     */
    const TIMEZONE_APP = null;

    /**
     * payu path to the required font file
     */
    const PAYU_FONT_PATH = 'E:/desarrollo/source/cashier/cashierinterface/processor_objects/integrations/ew/EW_PAYU/steps/barcodegen/font/Arial.ttf';

    /**
     * path where all the images are generated
     */
    const PAYU_CLIENT_IMAGES_PATH = 'E:/desarrollo/source/cashier_client/htmlTemplates/mainTemplate/common/img/payu/tmp/';

    /**
     * QR codes for Bitcoin enabled for this level and up
     */
    const BTC_CLIENT_QR_CODE_LEVEL = -3;

    /**
     * path where all the images are generated
     */
    const BTC_CLIENT_IMAGES_PATH = 'E:/desarrollo/source/cashier_client/htmlTemplates/mainTemplate/common/img/btc/tmp/';

    /**
     * processor error code - active flag
     */
    const PROCESSOR_ERROR_CODE_ENABLE = true;

    /**
     * restrictions trace - active flag
     */
    const RESTRICTIONS_TRACE_ENABLE = true;

    /**
     * restrictions - active flag
     */
    const RESTRICTIONS_ENABLE = true;

    /**
     * id for system user in the backend
     */
    const SYSTEM_BE_USER_ID = 10092;

    /**
     * id for online user in the backend
     */
    const ONLINE_BE_USER_ID = 10093;

    /**
     * id for system user in the backend
     */
    const INHOUSE_BE_USER_ID = 10094;

    /**
     * Default server IP. Used when a customer hasn't loggued into the cashier yet.
     * @var unknown_type
     */
    const DEFAULT_SERVER_IP = '190.7.219.195';

    /**
     * path where batches will be stored
     *
     * @var string
     */
    const BATCH_REPOSITORY = "C:/Batch/";

    /**
     * auto deduct funds on payout requests enabled
     */
    const PAYOUT_AUTO_DEDUCT_FUNDS_ENABLED = false;

    /**
     * auto deduct funds on payout requests enabled for this level and up
     */
    const PAYOUT_AUTO_DEDUCT_FUNDS_LEVEL = -3;

    /**
     * transaction metric - active flag
     */
    const TRANSACTION_METRIC_ENABLE = false;

    /**
     * move to payment account on payout requests enabled for this level and up
     */
    const PAYOUT_MOVE_FUNDS_TO_PAYMENT_ACCCOUNT_LEVEL = -3;

    /**
     * Message center
     */
    const MESSAGE_CENTER_LEVEL = 200;
    const MESSAGE_CENTER_CONSUMER_KEY = 'A77263A64282BF69CC9BAC37491E2';
    const MESSAGE_CENTER_WS_URL = 'http://10.20.2.3:2006/MessagingExternalSvc.asmx';
    const MESSAGE_CENTER_TEMPLATE_PATH = 'messagecenter/templates/';

    /**
     * customer management url
     *
     * @var string
     */
    const CUSTOMER_MANAGEMENT_WS = 'http://midas1.im.priv/RemoteWS/WSDGSRemoteServer.asmx?op=GetPlayerDetail';

    /**
     * version used for the insert transaction in parlay
     * site-api | ecom-api
     */
    const PARLAY_API_VERSION_DEPOSITS = 'ecom-api';

    /**
     * version used for payout transactions in parlay
     * site-api | ecom-api
     */
    const PARLAY_API_VERSION_PAYOUTS = 'ecom-api';

    /**
     * max customer vip level for asking extra info
     */
    const ASK_EXTRA_INFO_MAX_VIP = 0;

}

?>