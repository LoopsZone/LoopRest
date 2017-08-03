<?php

/**
 * Federico LCS
 *
 * Cashier Client Configuration File.
 */
class ClientConfig
{

    // Base URL
    const SYSTEM_PATH = 'E:\desarrollo\source\cashier_client';

    // Client System Encoding [ISO-8859-1 | UTF-8]
    const CLIENT_ENCODING = 'UTF-8';

    // Expiration time for the session in minutes.
    const SESSION_EXPIRE_TIMEOUT = 60;

    /**
     * HTTP DOMAIN NAME.
     */
    // Bookmaker Skin HTTP Domain Name.
    const SKIN_BOOKMAKER_HTTP_DOMAIN_NAME = 'bookmaker';
    // BetDsi Skin HTTP Domain Name.
    const SKIN_BETDSI_HTTP_DOMAIN_NAME = 'betdsi';
    // BetCris Skin HTTP Domain Name.
    const SKIN_BETCRIS_HTTP_DOMAIN_NAME = 'betcris';
    // BetCris Skin HTTP Domain Name.
    const SKIN_BETCRIS_MALTA_HTTP_DOMAIN_NAME = 'malta';
    // EHorse Skin HTTP Domain Name.
    const SKIN_EHORSE_HTTP_DOMAIN_NAME = 'ehorse';
    // Galaxy Skin HTTP Domain Name.
    const SKIN_GALAXY_HTTP_DOMAIN_NAME = 'galaxy';
    // BetUno Skin HTTP Domain Name.
    const SKIN_BETUNO_HTTP_DOMAIN_NAME = 'betuno';
    // JustBet Skin HTTP Domain Name.
    const SKIN_JUSTBET_HTTP_DOMAIN_NAME = 'justbet';
    // JustBet Skin HTTP Domain Name.
    const SKIN_UCABET_HTTP_DOMAIN_NAME = 'ucabet';
    // JustBet Skin HTTP Domain Name.
    const SKIN_BETGUARDIAN_HTTP_DOMAIN_NAME = 'betguardian';
    // BetCanadian Skin HTTP Domain Name.
    const SKIN_BETCANADIAN_HTTP_DOMAIN_NAME = 'betcanadian';
    // Poker Skin HTTP Domain Name.
    const SKIN_POKER_HTTP_DOMAIN_NAME = 'poker';
    // YA Poker Skin HTTP Domain Name.
    const SKIN_POKER_YA_HTTP_DOMAIN_NAME = 'yapoker';
    // Bingo Skin HTTP Domain Name.
    const SKIN_BINGO_HTTP_DOMAIN_NAME = 'amigobingo';
    // NewBingoBilly Skin HTTP Domain Name.
    const SKIN_BINGO_NBB_HTTP_DOMAIN_NAME = 'newbingobilly';
    // Bingo paradise (NBB) Skin HTTP Domain Name.
    const SKIN_BINGO_NBB_PARADISE_HTTP_DOMAIN_NAME = 'bingoparadise';
    // UK Skin HTTP Domain Name.
    const SKIN_UK_HTTP_DOMAIN_NAME = 'uk';
    // LOTTERY Skin HTTP Domain Name.
    const SKIN_LOTTERY_HTTP_DOMAIN_NAME = 'lottery';

    // Development Skin HTTP Domain Name.
    const SKIN_DEVELOPMENT_HTTP_DOMAIN_NAME = 'cashier.client';
    // Development Skin Identifier - Make sure to set it correctly. [BookMaker - BetDsi - BetCris - EHorse - Poker - Galaxy - Generic]
    const SKIN_DEVELOPMENT = 'Poker';
    // Development SubSkin Identifier for the Generic Skin. [JustBet - UCABet - BetGuardian - BetCanadian - Malta - YaPoker - Bingo - BetUno]
    const SUBSKIN_DEVELOPMENT = '';

    // WS_CONTROLLER WEB SERVICE
    const WS_CONTROLLER = 'cashier:8080/wscashier/wsController.php';

    /**
     * Webservices controller global timeout
     */
    const WS_CONTROLLER_TIMEOUT = 0;

    /**
     * Webservices controller hostname
     */
    const WS_CONTROLLER_HOSTNAME = "cashier:8080";

    // DB COMPANIES - IDs of the companies as they are in the database. @see midasone.caCompany
    const WS_PARAM_SYS_ACCESS_PASS = '1';

    // Access Password

    const IOVATION_ENABLE = false;

    /**
     * IOVATION
     */
    // Enable / Disable Flag - Must be in sync with CoreConfig::IOVATION_ENABLED	const IOVATION_BB_TIMEOUT = 3000;
    // List of skins that have Iovation Enabled.
    const IOVATION_JS = 'https://mpsnare.iesnare.com/snare.js';
    // Iovation BlackBox Timeout. In Milliseconds

    const ACUITYTEC_ENABLE = true;
    // JavaScript Path
    const ACUITYTEC_TIMEOUT = 5000;

    /**
     * ACUITYTEC
     */
    // Enable / Disable Flag - Must be in sync with CoreConfig::ACUITYTEC_ENABLE	const ACUITYTEC_JS = 'https://service1.acuitytec.com/detect/detect3.min.js';
    // List of skins that have AcuityTec Enabled.

    const SAS_PROCESS_EXCEPTIONS = false;
    // In Milliseconds
    const SAS_TIMEOUT = 2;
    // JavaScript Path

    const SAS_CONNECTION_URL = 'http://w-as.com/API_V2.asmx/GetBannerImages';

    /**
     * SAS GENERAL CONFIG
     */
    // Defines if the exceptions thrown by SAS errors are processed or not.	const SAS_CHANGE_PATHS_FLAG = false;
    // Timeout to use in the SAS connection
    const SAS_ORIGIN_PATH = 'http://sas.suplitodomedia.com/';

    /**
     * SAS BANNER CONFIG
     */
    // URL of the web service that returns the banners.	const SAS_TARGET_PATH = 'SAS/';
    // Defines if the banner paths returned from SAS should be replaced for local access. Needed in HTTPS

    const SAS_PROMO_CONNECTION_URL = 'http://srv-services1:1016/PromotionsSvc.asmx/GetSinglePromotionById';
    // Current remote path where SAS banners are being hosted.

    const BONUS_ENABLE = true;
    // "Local" path to use instead of the external site.
    const BONUS_CONNECTION_URL = 'http://bonus:8080/ws/wsBonus.php';

    /**
     * SAS PROMOTION CONFIG
     */
    // URL of the web service that returns the banners.	const WS_BONUS_TIMEOUT = 100;

    /**
     * BONUS SYSTEM CONFIG
     */
    // Flag to turn On or Off the connection to the bonus system.	const WS_BONUS_HOSTNAME = "";
    // URL of the web service for the bonus system.

    const LIMIT_CHECK_ENABLE = false;
    // Webservices controller bonus timeout

    const EXC_HANDLE_INVALID_SKIN = true;
    // Webservices bonus controller hostname
    const EXC_HANDLE_EMPTY_PROCESSOR = true;
    // List of companies for which bonuses are valid
    const EXC_HANDLE_INVALID_LANGUAGE = false;
    // List of skins or subSkins that have validate the Next Button Enabled. [BookMaker-BetDsi-BetCris-Galaxy-Generic-JustBet-Poker-EHorse-Bingo]
    const EXC_HANDLE_INVALID_VIEW = true;
    // List of skins or subSkins that auto-select the first bonus. [BookMaker-BetDsi-BetCris-Galaxy-Generic-JustBet-Poker-EHorse-Bingo]
    const EXC_HANDLE_MISSING_PROC_IMAGE = false;
    // List of skins or subSkins to display message. [BookMaker-BetDsi-BetCris-Galaxy-Generic-JustBet-Poker-EHorse-Bingo-BingoNBB]
    const EXC_HANDLE_BONUS_CONNECTION = false;
    /**
     * LIMIT CHECK SYSTEM CONFIG
     */
    // Flag to turn On or Off the connection to the bonus system.
    const LIMITS_ACTIVE = false;
    // List of companies for which bonuses are valid

    const CLICKTALE_ENABLED = false;

    /**
     * EXCEPTION HANDLING
     */
    // Handle exceptions when no valid skin is found.	const CLICKTALE_PATH = '';
    // Handle exceptions when no processor is available.

    const ONECLICK_ENABLE = false;
    // Handle exceptions when an invalid language is requested.

    const FLOWBACK_ACTIVE = true;
    // Handle exceptions when an invalid view is requested.

    const PLATFORM_MOBILE = 'mobile';
    // Handle exceptions when a missing processor image is requested.
    const MOBILE_ENABLED = true;
    // Handle exceptions when the bonuses are requested
    /**
     * PayClub Reconcile
     */
    const PAYCLUB_RECONCILE_URL = 'https://www3.optar.ec/webmpi/qvpos';
    // Invalid view white list. Even when processing invalid views, the ones in this list won't send an email.
    const PAYCLUB_RECONCILE_RUC = '0990967946001';

    /**
     * LIMITS
     */
    // Defines if the Limits Option in MyCashier should be displayed.	const NEW_CASHIER_URL = 'https://den.secureprivate.com/';


    /**
     * CLICKTALE
     */
    // Flag to Enable / Disable ClickTale	/**
* Value of client CASH ONLY
*/
    const CASH_ONLY = -2;
    // Phisical Path to the ClickTale Directory

    const HARD_MAINTENANCE = false;
    // ClickTale Enabled Company List - [BookMaker - BetDsi - BetCris - Poker ]

    const CACHE_VERSION = '2.8';
    // ClickTale Enabled Processor List
    public static $WS_F_LOGIN_PARAM_COMPANY_ID = array(
        'Development' => '9',        // 1
        'BetCris' => '100',                // ClientConfigParams::SKIN_BETCRIS = 2
        'Malta' => '100',                        // ClientConfigParams::SKIN_BETCRIS_MALTA = 30
        'BetDsi' => '100',                    // ClientConfigParams::SKIN_BETDSI = 3
        'BookMaker' => '100',                // ClientConfigParams::SKIN_BOOKMAKER = 13
        'EHorse' => '100',                    // ClientConfigParams::SKIN_EHORSE = 27
        'Galaxy' => '100',                    // ClientConfigParams::SKIN_GALAXY = 28
        'BetUno' => '100',                    // ClientConfigParams::SKIN_BETUNO = 29
        'BetGuardian' => '100',            // ClientConfigParams::SKIN_GENERIC_BETGUARDIAN = 41
        'JustBet' => '100',                    // ClientConfigParams::SKIN_GENERIC_JUSTBET = 40
        'UCABet' => '100',                    // ClientConfigParams::SKIN_GENERIC_UCABET = 42
        'BetCanadian' => '100',            // ClientConfigParams::SKIN_GENERIC_BETCANADIAN = 43
        'Poker' => '101',                        // ClientConfigParams::SKIN_POKER = 50
        'YaPoker' => '101',                  // ClientConfigParams::SKIN_POKER_YA = 60
        'Bingo' => '102',                    // ClientConfigParams::SKIN_BINGO = 70
        'BingoNBB' => '102',     // ClientConfigParams::SKIN_BINGO_NBB = 71
        'Lottery' => '80'         // ClientConfigParams::SKIN_LOTTERY = 80
    );


    /**
     * ONE CLICK
     */
    // Flag to Enable / Disable 1CLICK	public static $IOVATION_ENABLE_SKINS = array('Poker');
    // 1CLICK Enabled Company List - [BookMaker - BetDsi - BetCris - Poker ]
    public static $ACUITYTEC_ENABLE_SKINS = array('Poker');

    /**
     * FLOWBACK
     */
    // Flag to Enable / Disable Pending Payout|FlowBack	public static $BONUS_VALID_COMPANIES = array(100,101,102);
    // List of skins or subSkins that have FlowBack Enabled. [BookMaker-BetDsi-BetCris-Galaxy-JustBet-Poker-EHorse]
    public static $BONUS_VALIDATE_NEXT_BUTTON = array();
    // List of skins or subSkins have Strict FlowBack enabled.
    public static $BONUS_AUTOSELECT_BONUS = array('Bingo', 'BingoNBB');

    /**
     * PLATFORMS
     */
    // Identifier of the Mobile Platform	public static $BONUS_VALIDATE_AMOUNT = array();
    // Switch flag for the mobile version
    public static $LIMIT_CHECK_VALID_COMPANIES = array(9, 100, 101, 102);
    // Defines which skins should be using a mobile specific template - [BookMaker - BetDsi - BetCris - Poker - Galaxy - Generic]
    public static $EXC_INVALID_VIEW_WHITELIST = array('https:', 'cache');
    public static $CLICKTALE_VALID_SKINS = array();
    public static $CLICKTALE_VALID_PROCESSORS = array(Visa::PROCESSOR_ID, Mastercard::PROCESSOR_ID, VbVisa::PROCESSOR_ID, MoneyGram::PROCESSOR_ID, WesternUnion::PROCESSOR_ID);

    // New cashier
    public static $ONECLICK_VALID_SKINS = array();
    public static $FLOWBACK_ENABLE_SKINS = array('Bingo', 'BingoNBB', 'BookMaker', 'BetDsi', 'BetCris', 'Galaxy', 'JustBet', 'Poker', 'EHorse');
    public static $FLOWBACK_ENABLE_SKINS_STRICT = array('Bingo', 'BingoNBB');

    /**
     * MAINTENANCE FLAGS
     */
    // Flag to trigger the hard maintenance page in the client	public static $MOBILE_ENABLED_SKINS = array('BetCris', 'BookMaker', 'BetDsi', 'Galaxy', 'Generic', 'Lottery');


    /**
     * JAVASCRIPT AND CSS FILES VERSIONS
     */
    // Version for all custom javascript and ccs files. Used to force an update of a file.	public static $NEW_CASHIER_ACOUNTS = array('MidasTP', 'owenhascrabs', 'AcrKing', 'ElTico');

}

?>