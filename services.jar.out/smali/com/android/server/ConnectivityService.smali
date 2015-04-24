.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$CheckMp;,
        Lcom/android/server/ConnectivityService$VpnCallback;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$InternalHandler;,
        Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;,
        Lcom/android/server/ConnectivityService$FeatureUser;,
        Lcom/android/server/ConnectivityService$DefaultNetworkFactory;,
        Lcom/android/server/ConnectivityService$NetworkFactory;,
        Lcom/android/server/ConnectivityService$RadioAttributes;
    }
.end annotation


# static fields
.field protected static final ACTION_PKT_CNT_SAMPLE_INTERVAL_ELAPSED:Ljava/lang/String; = "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

.field protected static final ADD:Z = true

.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final CMP_RESULT_CODE_CONNECTABLE:I = 0x1

.field private static final CMP_RESULT_CODE_IS_PROVISIONING:I = 0x6

.field private static final CMP_RESULT_CODE_NO_CONNECTION:I = 0x0

.field private static final CMP_RESULT_CODE_NO_DNS:I = 0x2

.field private static final CMP_RESULT_CODE_NO_TCP_CONNECTION:I = 0x3

.field private static final CMP_RESULT_CODE_PROVISIONING_NETWORK:I = 0x5

.field private static final CMP_RESULT_CODE_REDIRECTED:I = 0x4

.field private static final CONNECTED_TO_PROVISIONING_NETWORK_ACTION:Ljava/lang/String; = "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

.field protected static final DBG:Z = true

.field protected static final DEFAULT_FAIL_FAST_TIME_MS:I = 0xea60

.field protected static final DEFAULT_SAMPLING_INTERVAL_IN_SECONDS:I = -0x1

.field protected static final DEFAULT_START_SAMPLING_INTERVAL_IN_SECONDS:I = 0x3c

.field protected static final DISABLED:I = 0x0

.field protected static final ENABLED:I = 0x1

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x9

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x2

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x8

.field private static final EVENT_ENABLE_FAIL_FAST_MOBILE_DATA:I = 0xe

.field private static final EVENT_INET_CONDITION_CHANGE:I = 0x4

.field private static final EVENT_INET_CONDITION_HOLD_END:I = 0x5

.field private static final EVENT_PROXY_HAS_CHANGED:I = 0x10

.field private static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x1

.field private static final EVENT_SAMPLE_INTERVAL_ELAPSED:I = 0xf

.field private static final EVENT_SEND_STICKY_BROADCAST_INTENT:I = 0xb

.field private static final EVENT_SET_DEPENDENCY_MET:I = 0xa

.field private static final EVENT_SET_MOBILE_DATA:I = 0x7

.field private static final EVENT_SET_NETWORK_PREFERENCE:I = 0x3

.field private static final EVENT_SET_POLICY_DATA_ENABLE:I = 0xc

.field private static final EVENT_VPN_STATE_CHANGED:I = 0xd

.field protected static final EXEMPT:Z = true

.field protected static final FAIL_FAST_TIME_MS:Ljava/lang/String; = "persist.radio.fail_fast_time_ms"

.field protected static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field protected static final LOGD_RULES:Z = false

.field protected static final MAX_HOSTROUTE_CYCLE_COUNT:I = 0xa

.field protected static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "CaptivePortal.Notification"

.field private static final PROVISIONING:I = 0x2

.field private static final PROVISIONING_URL_PATH:Ljava/lang/String; = "/data/misc/radio/provisioning_urls.xml"

.field private static final REDIRECTED_PROVISIONING:I = 0x1

.field protected static final REMOVE:Z = false

.field protected static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field protected static final SAMPLE_INTERVAL_ELAPSED_REQUEST_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static final TAG_PROVISIONING_URL:Ljava/lang/String; = "provisioningUrl"

.field private static final TAG_PROVISIONING_URLS:Ljava/lang/String; = "provisioningUrls"

.field private static final TAG_REDIRECTED_URL:Ljava/lang/String; = "redirectedUrl"

.field protected static final TO_DEFAULT_TABLE:Z = true

.field protected static final TO_SECONDARY_TABLE:Z

.field protected static final UNEXEMPT:Z

.field protected static final VDBG:Z

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private mActiveDefaultNetwork:I

.field private mAddedRoutes:Ljava/util/Collection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAlarmManager:Landroid/app/AlarmManager;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;

.field private mClat:Lcom/android/server/connectivity/Nat464Xlat;

.field private mContext:Landroid/content/Context;

.field private mCurrentLinkProperties:[Landroid/net/LinkProperties;

.field private mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

.field private mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

.field private mDefaultConnectionSequence:I

.field private mDefaultDns:Ljava/net/InetAddress;

.field private mDefaultInetCondition:I

.field private mDefaultInetConditionPublished:I

.field private mDefaultProxy:Landroid/net/ProxyProperties;

.field private mDefaultProxyDisabled:Z

.field private mDnsLock:Ljava/lang/Object;

.field private mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mExemptAddresses:Ljava/util/Collection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ConnectivityService$FeatureUser;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalProxy:Landroid/net/ProxyProperties;

.field private mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

.field private mInetConditionChangeInFlight:Z

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mIsNotificationVisible:Z

.field private mIsProvisioningNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsStartingProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockdownEnabled:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNetConfigs:[Landroid/net/NetworkConfig;

.field private mNetRequestersPids:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockCausedBy:Ljava/lang/String;

.field private mNetTransitionWakeLockSerialNumber:I

.field private mNetTransitionWakeLockTimeout:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkPreference:I

.field mNetworksDefined:I

.field private mNumDnsEntries:I

.field private mPacManager:Lcom/android/server/connectivity/PacManager;

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPriorityList:[I

.field mProtectedNetworks:Ljava/util/List;

.field private mProvisioningReceiver:Landroid/content/BroadcastReceiver;

.field private final mProvisioningUrlFile:Ljava/io/File;

.field private mProxyLock:Ljava/lang/Object;

.field mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

.field private final mRoutesLock:Ljava/lang/Object;

.field private mRulesLock:Ljava/lang/Object;

.field private mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

.field private mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private final mVpns:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVpns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 450
    invoke-direct {p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 223
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    .line 225
    new-instance v0, Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    .line 235
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 237
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 267
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 269
    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 270
    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 271
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 272
    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 274
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    .line 390
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 397
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    .line 414
    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 415
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    .line 416
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 419
    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 421
    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 446
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1185
    new-instance v0, Lcom/android/server/ConnectivityService$2;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1832
    new-instance v0, Lcom/android/server/ConnectivityService$3;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 2306
    new-instance v0, Lcom/android/server/ConnectivityService$4;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 4222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mIsProvisioningNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4223
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mIsStartingProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4794
    new-instance v0, Lcom/android/server/ConnectivityService$6;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$6;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mProvisioningReceiver:Landroid/content/BroadcastReceiver;

    .line 4832
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mIsNotificationVisible:Z

    .line 4920
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    .line 5081
    new-instance v0, Lcom/android/server/ConnectivityService$7;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$7;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 450
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netd"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    .prologue
    .line 456
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Lcom/android/server/ConnectivityService$NetworkFactory;)V

    .line 457
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Lcom/android/server/ConnectivityService$NetworkFactory;)V
    .locals 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;
    .param p5, "netFactory"    # Lcom/android/server/ConnectivityService$NetworkFactory;

    .prologue
    .line 461
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 223
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    .line 225
    new-instance v2, Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 233
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    .line 235
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 237
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 267
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 269
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 270
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 271
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 272
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 274
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    .line 390
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 397
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    .line 401
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    .line 406
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    .line 414
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 415
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    .line 416
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 419
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 421
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 446
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1185
    new-instance v2, Lcom/android/server/ConnectivityService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1832
    new-instance v2, Lcom/android/server/ConnectivityService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 2306
    new-instance v2, Lcom/android/server/ConnectivityService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 4222
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mIsProvisioningNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4223
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mIsStartingProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4225
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4794
    new-instance v2, Lcom/android/server/ConnectivityService$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$6;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProvisioningReceiver:Landroid/content/BroadcastReceiver;

    .line 4832
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mIsNotificationVisible:Z

    .line 4920
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    .line 5081
    new-instance v2, Lcom/android/server/ConnectivityService$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$7;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 462
    const-string v2, "ConnectivityService starting up"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 464
    new-instance v14, Landroid/os/HandlerThread;

    const-string v2, "ConnectivityServiceThread"

    invoke-direct {v14, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 465
    .local v14, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v14}, Landroid/os/HandlerThread;->start()V

    .line 466
    new-instance v2, Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$InternalHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 467
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    .line 469
    if-nez p5, :cond_0

    .line 470
    new-instance p5, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;

    .end local p5    # "netFactory":Lcom/android/server/ConnectivityService$NetworkFactory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 474
    .restart local p5    # "netFactory":Lcom/android/server/ConnectivityService$NetworkFactory;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_hostname"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 476
    .local v15, "hostname":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "net.hostname"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 479
    .local v18, "id":Ljava/lang/String;
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 480
    new-instance v2, Ljava/lang/String;

    const-string v3, "android-"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 481
    .local v27, "name":Ljava/lang/String;
    const-string v2, "net.hostname"

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .end local v18    # "id":Ljava/lang/String;
    .end local v27    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_dns_server"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 490
    .local v11, "dns":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 491
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 495
    :cond_3
    :try_start_0
    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_1
    const-string v2, "missing Context"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 501
    const-string v2, "missing INetworkManagementService"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    .line 502
    const-string v2, "missing INetworkPolicyManager"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 503
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 507
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 513
    :goto_2
    const-string v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/PowerManager;

    .line 515
    .local v30, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "ConnectivityService"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 519
    const/16 v2, 0xf

    new-array v2, v2, [Landroid/net/NetworkStateTracker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 521
    const/16 v2, 0xf

    new-array v2, v2, [Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    .line 523
    const/16 v2, 0xf

    new-array v2, v2, [Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    .line 524
    const/16 v2, 0xf

    new-array v2, v2, [Landroid/net/NetworkConfig;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v34

    .line 529
    .local v34, "raStrings":[Ljava/lang/String;
    move-object/from16 v8, v34

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    aget-object v33, v8, v17

    .line 530
    .local v33, "raString":Ljava/lang/String;
    new-instance v32, Lcom/android/server/ConnectivityService$RadioAttributes;

    invoke-direct/range {v32 .. v33}, Lcom/android/server/ConnectivityService$RadioAttributes;-><init>(Ljava/lang/String;)V

    .line 532
    .local v32, "r":Lcom/android/server/ConnectivityService$RadioAttributes;
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    const/16 v3, 0xe

    if-le v2, v3, :cond_5

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v32

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 529
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 484
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v11    # "dns":Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v22    # "len$":I
    .end local v30    # "powerManager":Landroid/os/PowerManager;
    .end local v32    # "r":Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v33    # "raString":Ljava/lang/String;
    .end local v34    # "raStrings":[Ljava/lang/String;
    :cond_4
    const-string v2, "net.hostname"

    invoke-static {v2, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    .restart local v11    # "dns":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 497
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting defaultDns using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 508
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v12

    .line 510
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to register INetworkPolicyListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 536
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v22    # "len$":I
    .restart local v30    # "powerManager":Landroid/os/PowerManager;
    .restart local v32    # "r":Lcom/android/server/ConnectivityService$RadioAttributes;
    .restart local v33    # "raString":Ljava/lang/String;
    .restart local v34    # "raStrings":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v32

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_6

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v32

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 541
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v32

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aput-object v32, v2, v3

    goto :goto_4

    .line 545
    .end local v32    # "r":Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v33    # "raString":Ljava/lang/String;
    :cond_7
    const-string v2, "ro.radio.noril"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 546
    .local v37, "wifiOnly":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    .line 549
    .local v26, "naStrings":[Ljava/lang/String;
    move-object/from16 v8, v26

    array-length v0, v8

    move/from16 v22, v0

    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    aget-object v25, v8, v17

    .line 551
    .local v25, "naString":Ljava/lang/String;
    :try_start_2
    new-instance v23, Landroid/net/NetworkConfig;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 553
    .local v23, "n":Landroid/net/NetworkConfig;
    move-object/from16 v0, v23

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v3, 0xe

    if-le v2, v3, :cond_8

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 549
    .end local v23    # "n":Landroid/net/NetworkConfig;
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 558
    .restart local v23    # "n":Landroid/net/NetworkConfig;
    :cond_8
    if-eqz v37, :cond_9

    move-object/from16 v0, v23

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 575
    .end local v23    # "n":Landroid/net/NetworkConfig;
    :catch_2
    move-exception v2

    goto :goto_6

    .line 563
    .restart local v23    # "n":Landroid/net/NetworkConfig;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_a

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_6

    .line 568
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    aget-object v2, v2, v3

    if-nez v2, :cond_b

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to use undefined radio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 573
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput-object v23, v2, v3

    .line 574
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    .line 581
    .end local v23    # "n":Landroid/net/NetworkConfig;
    .end local v25    # "naString":Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v31

    .line 584
    .local v31, "protectedNetworks":[I
    move-object/from16 v8, v31

    .local v8, "arr$":[I
    array-length v0, v8

    move/from16 v22, v0

    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    aget v29, v8, v17

    .line 585
    .local v29, "p":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v29

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 588
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring protectedNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_8

    .line 593
    .end local v29    # "p":I
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .line 595
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v19, v2, -0x1

    .line 596
    .local v19, "insertionPoint":I
    const/4 v10, 0x0

    .line 597
    .local v10, "currentLowest":I
    const/16 v28, 0x0

    .line 598
    .end local v8    # "arr$":[I
    .local v28, "nextLowest":I
    :goto_9
    const/4 v2, -0x1

    move/from16 v0, v19

    if-le v0, v2, :cond_14

    .line 599
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .local v8, "arr$":[Landroid/net/NetworkConfig;
    array-length v0, v8

    move/from16 v22, v0

    const/16 v17, 0x0

    move/from16 v20, v19

    .end local v19    # "insertionPoint":I
    .local v20, "insertionPoint":I
    :goto_a
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    aget-object v24, v8, v17

    .line 600
    .local v24, "na":Landroid/net/NetworkConfig;
    if-nez v24, :cond_f

    move/from16 v19, v20

    .line 599
    .end local v20    # "insertionPoint":I
    .restart local v19    # "insertionPoint":I
    :goto_b
    add-int/lit8 v17, v17, 0x1

    move/from16 v20, v19

    .end local v19    # "insertionPoint":I
    .restart local v20    # "insertionPoint":I
    goto :goto_a

    .line 601
    :cond_f
    move-object/from16 v0, v24

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-ge v2, v10, :cond_10

    move/from16 v19, v20

    .end local v20    # "insertionPoint":I
    .restart local v19    # "insertionPoint":I
    goto :goto_b

    .line 602
    .end local v19    # "insertionPoint":I
    .restart local v20    # "insertionPoint":I
    :cond_10
    move-object/from16 v0, v24

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-le v2, v10, :cond_12

    .line 603
    move-object/from16 v0, v24

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v0, v28

    if-lt v2, v0, :cond_11

    if-nez v28, :cond_1c

    .line 604
    :cond_11
    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v28, v0

    move/from16 v19, v20

    .end local v20    # "insertionPoint":I
    .restart local v19    # "insertionPoint":I
    goto :goto_b

    .line 608
    .end local v19    # "insertionPoint":I
    .restart local v20    # "insertionPoint":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    add-int/lit8 v19, v20, -0x1

    .end local v20    # "insertionPoint":I
    .restart local v19    # "insertionPoint":I
    move-object/from16 v0, v24

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput v3, v2, v20

    goto :goto_b

    .line 610
    .end local v19    # "insertionPoint":I
    .end local v24    # "na":Landroid/net/NetworkConfig;
    .restart local v20    # "insertionPoint":I
    :cond_13
    move/from16 v10, v28

    .line 611
    const/16 v28, 0x0

    move/from16 v19, v20

    .end local v20    # "insertionPoint":I
    .restart local v19    # "insertionPoint":I
    goto :goto_9

    .line 616
    .end local v8    # "arr$":[Landroid/net/NetworkConfig;
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getPersistedNetworkPreference()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 617
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    .line 618
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v8, "arr$":[I
    array-length v0, v8

    move/from16 v22, v0

    const/16 v17, 0x0

    :goto_c
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    aget v23, v8, v17

    .line 619
    .local v23, "n":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v23

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static/range {v23 .. v23}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 620
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 624
    .end local v23    # "n":I
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    .line 625
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You should set at least one default Network in config.xml!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 618
    .restart local v23    # "n":I
    :cond_16
    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    .line 630
    .end local v8    # "arr$":[I
    .end local v23    # "n":I
    :cond_17
    const/16 v2, 0xf

    new-array v2, v2, [Ljava/util/ArrayList;

    check-cast v2, [Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    .line 632
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .restart local v8    # "arr$":[I
    array-length v0, v8

    move/from16 v22, v0

    const/16 v17, 0x0

    :goto_d
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_18

    aget v16, v8, v17

    .line 633
    .local v16, "i":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v16

    .line 632
    add-int/lit8 v17, v17, 0x1

    goto :goto_d

    .line 636
    .end local v16    # "i":I
    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    .line 638
    const-string v2, "cm.test.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 642
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    array-length v0, v8

    move/from16 v22, v0

    const/16 v17, 0x0

    :goto_f
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_1b

    aget v35, v8, v17

    .line 643
    .local v35, "targetNetworkType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v9, v2, v35

    .line 646
    .local v9, "config":Landroid/net/NetworkConfig;
    :try_start_3
    move-object/from16 v0, p5

    move/from16 v1, v35

    invoke-interface {v0, v1, v9}, Lcom/android/server/ConnectivityService$NetworkFactory;->createTracker(ILandroid/net/NetworkConfig;)Landroid/net/NetworkStateTracker;

    move-result-object v36

    .line 647
    .local v36, "tracker":Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aput-object v36, v2, v35
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 655
    invoke-virtual {v9}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 656
    invoke-interface/range {v36 .. v36}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 642
    .end local v36    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_19
    :goto_10
    add-int/lit8 v17, v17, 0x1

    goto :goto_f

    .line 638
    .end local v9    # "config":Landroid/net/NetworkConfig;
    .end local v35    # "targetNetworkType":I
    :cond_1a
    const/4 v2, 0x0

    goto :goto_e

    .line 648
    .restart local v9    # "config":Landroid/net/NetworkConfig;
    .restart local v35    # "targetNetworkType":I
    :catch_3
    move-exception v12

    .line 649
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem creating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v35 .. v35}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tracker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 660
    .end local v9    # "config":Landroid/net/NetworkConfig;
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .end local v35    # "targetNetworkType":I
    :cond_1b
    new-instance v2, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 663
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 664
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_STARTING"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 665
    const-string v2, "android.intent.action.USER_STOPPING"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 668
    new-instance v2, Lcom/android/server/connectivity/Nat464Xlat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v4, v0, v6}, Lcom/android/server/connectivity/Nat464Xlat;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    .line 671
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 679
    :goto_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    .line 682
    new-instance v2, Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 685
    new-instance v2, Lcom/android/server/connectivity/DataConnectionStats;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-virtual {v2}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    .line 689
    new-instance v21, Landroid/content/Intent;

    const-string v2, "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 690
    .local v21, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 695
    const v2, 0xea60

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ConnectivityService;->setAlarm(ILandroid/app/PendingIntent;)V

    .line 697
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 698
    .local v13, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/ConnectivityService$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v13}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 712
    new-instance v2, Lcom/android/server/connectivity/PacManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v6, 0x10

    invoke-direct {v2, v3, v4, v6}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 714
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 715
    .restart local v13    # "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mProvisioningReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 718
    const-string v2, "appops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 719
    return-void

    .line 674
    .end local v13    # "filter":Landroid/content/IntentFilter;
    .end local v21    # "intent":Landroid/content/Intent;
    :catch_4
    move-exception v12

    .line 675
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering observer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_11

    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v19    # "insertionPoint":I
    .local v8, "arr$":[Landroid/net/NetworkConfig;
    .restart local v20    # "insertionPoint":I
    .restart local v24    # "na":Landroid/net/NetworkConfig;
    :cond_1c
    move/from16 v19, v20

    .end local v20    # "insertionPoint":I
    .restart local v19    # "insertionPoint":I
    goto/16 :goto_b
.end method

.method static synthetic access$000(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 174
    invoke-static {p0, p1}, Lcom/android/server/ConnectivityService;->makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/LinkProperties;
    .param p2, "x2"    # Landroid/net/RouteInfo;
    .param p3, "x3"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpDelayedAckSettings(Landroid/net/NetworkStateTracker;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->sendDataActivityBroadcast(IZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/ConnectivityService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleNetworkSamplingTimeout()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/ProxyProperties;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .prologue
    .line 174
    invoke-direct/range {p0 .. p5}, Lcom/android/server/ConnectivityService;->updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$FeatureUser;
    .param p2, "x2"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/ProxyProperties;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/ConnectivityService;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mIsProvisioningNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mIsStartingProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$4500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isMobileDataStateTrackerReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleMobileProvisioningAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStart(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStop(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    return-object v0
.end method

.method private addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z
    .locals 7
    .param p1, "p"    # Landroid/net/LinkProperties;
    .param p2, "r"    # Landroid/net/RouteInfo;
    .param p3, "toDefaultTable"    # Z
    .param p4, "exempt"    # Z

    .prologue
    .line 1673
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    move-result v0

    return v0
.end method

.method private addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z
    .locals 6
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "exempt"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1681
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZZ)Z

    move-result v0

    return v0
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 3785
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 3786
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3788
    :cond_0
    return-object p0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    return-void
.end method

.method private enforceMarkNetworkSocketPermission()V
    .locals 3

    .prologue
    .line 1972
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f5

    if-ne v0, v1, :cond_0

    .line 1978
    :goto_0
    return-void

    .line 1975
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MARK_NETWORK_SOCKET"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforcePreference()V
    .locals 3

    .prologue
    .line 897
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 913
    :cond_0
    return-void

    .line 900
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_0
    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    .line 904
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tearing down "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in enforcePreference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 910
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 903
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    return-void
.end method

.method private enforceTetherChangePermission()V
    .locals 3

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    return-void
.end method

.method private flushVmDnsCache()V
    .locals 5

    .prologue
    .line 2970
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2971
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2975
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2978
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2980
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2982
    return-void

    .line 2980
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getConnectivityChangeDelay()I
    .locals 4

    .prologue
    .line 870
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 873
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "conn.connectivity_change_delay"

    const/16 v3, 0xbb8

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 876
    .local v1, "defaultDelay":I
    const-string v2, "connectivity_change_delay"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;
    .locals 4
    .param p1, "tracker"    # Landroid/net/NetworkStateTracker;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 952
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 953
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 955
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 956
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .local v1, "info":Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 958
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v2, :cond_1

    .line 959
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 961
    :cond_1
    return-object v0
.end method

.method private getNetworkInfo(II)Landroid/net/NetworkInfo;
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1042
    const/4 v0, 0x0

    .line 1043
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1044
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v2, p1

    .line 1045
    .local v1, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v1, :cond_0

    .line 1046
    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1049
    .end local v1    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_0
    return-object v0
.end method

.method private getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    .locals 5
    .param p1, "networkType"    # I

    .prologue
    .line 1116
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1118
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1119
    new-instance v1, Landroid/net/NetworkState;

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    .line 1123
    .end local v0    # "tracker":Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPersistedNetworkPreference()I
    .locals 4

    .prologue
    .line 881
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 883
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "network_preference"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 886
    .local v1, "networkPrefSetting":I
    return v1
.end method

.method private getProvisioningNetworkInfo()Landroid/net/NetworkInfo;
    .locals 7

    .prologue
    .line 984
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 987
    const/4 v4, 0x0

    .line 988
    .local v4, "provNi":Landroid/net/NetworkInfo;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, "arr$":[Landroid/net/NetworkInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 989
    .local v3, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedToProvisioningNetwork()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 990
    move-object v4, v3

    .line 994
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProvisioningNetworkInfo: X provNi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 995
    return-object v4

    .line 988
    .restart local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getProvisioningUrlBaseFromFile(I)Ljava/lang/String;
    .locals 12
    .param p1, "type"    # I

    .prologue
    const/4 v9, 0x0

    .line 4937
    const/4 v3, 0x0

    .line 4938
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v7, 0x0

    .line 4939
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4942
    .local v0, "config":Landroid/content/res/Configuration;
    packed-switch p1, :pswitch_data_0

    .line 4950
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getProvisioningUrlBaseFromFile: Unexpected parameter "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4944
    :pswitch_0
    const-string v8, "provisioningUrl"

    .line 4955
    .local v8, "tagType":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4956
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 4957
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 4958
    const-string v10, "provisioningUrls"

    invoke-static {v7, v10}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 4961
    :cond_0
    :goto_1
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4963
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 4964
    .local v2, "element":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 4991
    if-eqz v4, :cond_1

    .line 4993
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_1
    :goto_2
    move-object v3, v4

    .line 4997
    .end local v2    # "element":Ljava/lang/String;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :cond_2
    :goto_3
    return-object v9

    .line 4947
    .end local v8    # "tagType":Ljava/lang/String;
    :pswitch_1
    const-string v8, "redirectedUrl"

    .line 4948
    .restart local v8    # "tagType":Ljava/lang/String;
    goto :goto_0

    .line 4966
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :cond_3
    :try_start_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4967
    const/4 v10, 0x0

    const-string v11, "mcc"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 4969
    .local v5, "mcc":Ljava/lang/String;
    if-eqz v5, :cond_0

    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget v11, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v10, v11, :cond_0

    .line 4970
    const/4 v10, 0x0

    const-string v11, "mnc"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4971
    .local v6, "mnc":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget v11, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v10, v11, :cond_0

    .line 4972
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4973
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 4974
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v9

    .line 4991
    if-eqz v4, :cond_4

    .line 4993
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_4
    :goto_4
    move-object v3, v4

    .line 4974
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 4978
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "mnc":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 4979
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException in getProvisioningUrlBaseFromFile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 4984
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "element":Ljava/lang/String;
    .end local v5    # "mcc":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v3, v4

    .line 4985
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :goto_5
    :try_start_7
    const-string v10, "Carrier Provisioning Urls file not found"

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4991
    if-eqz v3, :cond_2

    .line 4993
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 4994
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v10

    goto :goto_3

    .line 4986
    :catch_3
    move-exception v1

    .line 4987
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Xml parser exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4991
    if-eqz v3, :cond_2

    .line 4993
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_3

    .line 4988
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v1

    .line 4989
    .local v1, "e":Ljava/io/IOException;
    :goto_7
    :try_start_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "I/O exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4991
    if-eqz v3, :cond_2

    .line 4993
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_3

    .line 4991
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v3, :cond_5

    .line 4993
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 4991
    :cond_5
    :goto_9
    throw v9

    .line 4994
    :catch_5
    move-exception v10

    goto :goto_9

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_6
    move-exception v10

    goto/16 :goto_2

    .restart local v5    # "mcc":Ljava/lang/String;
    .restart local v6    # "mnc":Ljava/lang/String;
    :catch_7
    move-exception v10

    goto :goto_4

    .line 4991
    .end local v2    # "element":Ljava/lang/String;
    .end local v5    # "mcc":Ljava/lang/String;
    .end local v6    # "mnc":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_8

    .line 4988
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_7

    .line 4986
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .line 4984
    :catch_a
    move-exception v1

    goto :goto_5

    .line 4942
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRestoreDefaultNetworkDelay(I)I
    .locals 3
    .param p1, "networkType"    # I

    .prologue
    .line 3052
    const-string v2, "android.telephony.apn-restore"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3054
    .local v0, "restoreDefaultNetworkDelayStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 3057
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3068
    :cond_0
    :goto_0
    return v1

    .line 3058
    :catch_0
    move-exception v2

    .line 3062
    :cond_1
    const v1, 0xea60

    .line 3064
    .local v1, "ret":I
    const/16 v2, 0xe

    if-gt p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 3066
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, p1

    iget v1, v2, Landroid/net/NetworkConfig;->restoreTime:I

    goto :goto_0
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    .locals 3
    .param p1, "proxy"    # Landroid/net/ProxyProperties;

    .prologue
    .line 3662
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3664
    const/4 p1, 0x0

    .line 3666
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3667
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 3680
    :goto_0
    return-void

    .line 3668
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-ne v0, p1, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 3679
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3669
    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid proxy properties, ignoring: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3671
    monitor-exit v1

    goto :goto_0

    .line 3673
    :cond_3
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 3675
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_4

    monitor-exit v1

    goto :goto_0

    .line 3676
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v0, :cond_5

    .line 3677
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    .line 3679
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 2409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Captive portal check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2410
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 2411
    .local v1, "type":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, v1

    .line 2412
    .local v0, "thisNet":Landroid/net/NetworkStateTracker;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2413
    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v2, v1, :cond_1

    .line 2414
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Captive check on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2416
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;

    new-instance v3, Landroid/net/NetworkInfo;

    invoke-direct {v3, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v3}, Landroid/net/CaptivePortalTracker;->detectCaptivePortal(Landroid/net/NetworkInfo;)V

    .line 2428
    :goto_0
    return-void

    .line 2419
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tear down low priority net "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2420
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto :goto_0

    .line 2426
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCaptivePortalTrackerCheck: call captivePortalCheckComplete ni="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2427
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->captivePortalCheckComplete()V

    goto :goto_0
.end method

.method private handleConnect(Landroid/net/NetworkInfo;)V
    .locals 11
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v10, 0x0

    .line 2327
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 2329
    .local v1, "newNetType":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setupDataActivityTracking(I)V

    .line 2332
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v0

    .line 2333
    .local v0, "isFailover":Z
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v5, v1

    .line 2334
    .local v4, "thisNet":Landroid/net/NetworkStateTracker;
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 2343
    .local v3, "thisIface":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2344
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v1, :cond_2

    .line 2345
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2347
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v2, v5, v6

    .line 2350
    .local v2, "otherNet":Landroid/net/NetworkStateTracker;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Policy requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " teardown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2353
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2354
    const-string v5, "Network declined teardown request"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2355
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 2406
    .end local v2    # "otherNet":Landroid/net/NetworkStateTracker;
    :cond_0
    :goto_0
    return-void

    .line 2364
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto :goto_0

    .line 2368
    :cond_2
    monitor-enter p0

    .line 2372
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2373
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v7, 0x8

    iget v8, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2378
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2379
    iput v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 2383
    iput v10, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2384
    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 2385
    iput-boolean v10, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 2390
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->updateTcpDelayedAckSettings(Landroid/net/NetworkStateTracker;)V

    .line 2391
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 2393
    :cond_4
    invoke-interface {v4, v10}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 2394
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->updateMtuSizeSettings(Landroid/net/NetworkStateTracker;)V

    .line 2395
    invoke-direct {p0, v1, v10}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 2396
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 2399
    if-eqz v3, :cond_0

    .line 2401
    :try_start_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, v3, v1}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2402
    :catch_0
    move-exception v5

    goto :goto_0

    .line 2378
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .locals 11
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2196
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-interface {v6, v8}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 2198
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    .line 2199
    .local v3, "reason":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 2202
    .local v0, "extraInfo":Ljava/lang/String;
    if-nez v3, :cond_6

    .line 2203
    const-string v4, "."

    .line 2207
    .local v4, "reasonText":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2209
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2210
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "networkInfo"

    new-instance v7, Landroid/net/NetworkInfo;

    invoke-direct {v7, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2211
    const-string v6, "networkType"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2212
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2213
    const-string v6, "noConnectivity"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2215
    :cond_0
    if-eqz v3, :cond_1

    .line 2216
    const-string v6, "reason"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2218
    :cond_1
    if-eqz v0, :cond_2

    .line 2219
    const-string v6, "extraInfo"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2221
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2222
    const-string v6, "isFailover"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2223
    invoke-virtual {p1, v8}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2226
    :cond_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2227
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 2228
    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v10, :cond_7

    .line 2229
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 2230
    .local v5, "switchTo":Landroid/net/NetworkInfo;
    const-string v6, "otherNetwork"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2237
    .end local v5    # "switchTo":Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    const-string v6, "inetCondition"

    iget v7, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2239
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2240
    .local v1, "immediateIntent":Landroid/content/Intent;
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2241
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2242
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2247
    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v10, :cond_5

    .line 2248
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 2250
    :cond_5
    return-void

    .line 2205
    .end local v1    # "immediateIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "reasonText":Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "reasonText":Ljava/lang/String;
    goto/16 :goto_0

    .line 2232
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_7
    iput v8, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2233
    const-string v6, "noConnectivity"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleConnectivityChange(IZ)V
    .locals 16
    .param p1, "netType"    # I
    .param p2, "doReset"    # Z

    .prologue
    .line 2505
    if-eqz p2, :cond_3

    const/4 v11, 0x3

    .line 2506
    .local v11, "resetMask":I
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeExempt(I)Z

    move-result v4

    .line 2516
    .local v4, "exempt":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 2518
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aget-object v2, v13, p1

    .line 2519
    .local v2, "curLp":Landroid/net/LinkProperties;
    const/4 v9, 0x0

    .line 2521
    .local v9, "newLp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v13, v13, p1

    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2522
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v13, v13, p1

    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 2530
    if-eqz v2, :cond_5

    .line 2531
    invoke-virtual {v2, v9}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2532
    invoke-virtual {v2, v9}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v1

    .line 2533
    .local v1, "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    iget-object v13, v1, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    if-nez v13, :cond_0

    iget-object v13, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    if-eqz v13, :cond_9

    .line 2534
    :cond_0
    iget-object v13, v1, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 2535
    .local v8, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    instance-of v13, v13, Ljava/net/Inet4Address;

    if-eqz v13, :cond_2

    .line 2536
    or-int/lit8 v11, v11, 0x1

    .line 2538
    :cond_2
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    instance-of v13, v13, Ljava/net/Inet6Address;

    if-eqz v13, :cond_1

    .line 2539
    or-int/lit8 v11, v11, 0x2

    goto :goto_1

    .line 2505
    .end local v1    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v2    # "curLp":Landroid/net/LinkProperties;
    .end local v4    # "exempt":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "linkAddr":Landroid/net/LinkAddress;
    .end local v9    # "newLp":Landroid/net/LinkProperties;
    .end local v11    # "resetMask":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 2543
    .restart local v1    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .restart local v2    # "curLp":Landroid/net/LinkProperties;
    .restart local v4    # "exempt":Z
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "newLp":Landroid/net/LinkProperties;
    .restart local v11    # "resetMask":I
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleConnectivityChange: addresses changed linkProperty["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " resetMask="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n   car="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2563
    .end local v1    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v13, v13, p1

    invoke-virtual {v13}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2564
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V

    .line 2574
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aput-object v9, v13, p1

    .line 2575
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v13, v13, p1

    invoke-virtual {v13}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v13, v4}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZZ)Z

    move-result v10

    .line 2577
    .local v10, "resetDns":Z
    if-nez v11, :cond_7

    if-eqz v10, :cond_e

    .line 2579
    :cond_7
    if-eqz v2, :cond_e

    .line 2581
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2582
    .local v7, "iface":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 2583
    if-eqz v11, :cond_c

    .line 2584
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "resetConnections("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2585
    invoke-static {v7, v11}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 2589
    and-int/lit8 v13, v11, 0x1

    if-eqz v13, :cond_c

    .line 2590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v14

    .line 2591
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v5, v13, :cond_b

    .line 2592
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/connectivity/Vpn;

    const/4 v15, 0x0

    invoke-virtual {v13, v7, v15}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2591
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2549
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "iface":Ljava/lang/String;
    .end local v10    # "resetDns":Z
    .restart local v1    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleConnectivityChange: address are the same reset per doReset linkProperty["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " resetMask="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2555
    .end local v1    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_a
    const/4 v11, 0x3

    .line 2557
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleConnectivityChange: interface not not equivalent reset both linkProperty["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " resetMask="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2594
    .restart local v5    # "i":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "iface":Ljava/lang/String;
    .restart local v10    # "resetDns":Z
    :cond_b
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2597
    .end local v5    # "i":I
    :cond_c
    if-eqz v10, :cond_8

    .line 2598
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    .line 2601
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v13, v7}, Landroid/os/INetworkManagementService;->flushInterfaceDnsCache(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 2602
    :catch_0
    move-exception v3

    .line 2604
    .local v3, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception resetting dns cache: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2594
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "i":I
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13

    .line 2608
    .end local v5    # "i":I
    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t reset connection for type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2615
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "iface":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v12, v13, p1

    .line 2616
    .local v12, "tracker":Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    move/from16 v0, p1

    invoke-virtual {v13, v0, v12}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(ILandroid/net/NetworkStateTracker;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 2623
    invoke-static {v2}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-static {v9}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 2624
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v13}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    .line 2627
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v13, v13, p1

    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 2628
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v13, v12}, Lcom/android/server/connectivity/Nat464Xlat;->startClat(Landroid/net/NetworkStateTracker;)V

    .line 2637
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v13, v13, p1

    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v13

    const-string v14, "linkPropertiesChanged"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 2639
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 2640
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v14, v14, p1

    invoke-interface {v14}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/connectivity/Tethering;->handleTetherIfaceChange(Landroid/net/NetworkInfo;)V

    .line 2643
    :cond_11
    return-void

    .line 2630
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v13}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    goto :goto_5
.end method

.method private handleDeprecatedGlobalHttpProxy()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3683
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "http_proxy"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3685
    .local v3, "proxy":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3686
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3687
    .local v0, "data":[Ljava/lang/String;
    array-length v6, v0

    if-nez v6, :cond_1

    .line 3703
    .end local v0    # "data":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3691
    .restart local v0    # "data":[Ljava/lang/String;
    :cond_1
    aget-object v4, v0, v8

    .line 3692
    .local v4, "proxyHost":Ljava/lang/String;
    const/16 v5, 0x1f90

    .line 3693
    .local v5, "proxyPort":I
    array-length v6, v0

    if-le v6, v9, :cond_2

    .line 3695
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 3700
    :cond_2
    new-instance v2, Landroid/net/ProxyProperties;

    aget-object v6, v0, v8

    const-string v7, ""

    invoke-direct {v2, v6, v5, v7}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3701
    .local v2, "p":Landroid/net/ProxyProperties;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0

    .line 3696
    .end local v2    # "p":Landroid/net/ProxyProperties;
    :catch_0
    move-exception v1

    .line 3697
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .locals 20
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 1989
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v16

    .line 1991
    .local v16, "prevNetType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    aget-object v18, v18, v16

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1994
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->removeDataActivityTracking(I)V

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v18, v0

    aget-object v18, v18, v16

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v18

    if-nez v18, :cond_0

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v18, v0

    aget-object v15, v18, v16

    .line 2004
    .local v15, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 2008
    .local v14, "pid":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    goto :goto_0

    .line 2012
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v14    # "pid":Ljava/lang/Integer;
    .end local v15    # "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string v18, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2013
    .local v7, "intent":Landroid/content/Intent;
    const-string v18, "networkInfo"

    new-instance v19, Landroid/net/NetworkInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2014
    const-string v18, "networkType"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2015
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2016
    const-string v18, "isFailover"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2017
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2019
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 2020
    const-string v18, "reason"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2022
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 2023
    const-string v18, "extraInfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2027
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v18, v0

    aget-object v18, v18, v16

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2028
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 2029
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v17

    .line 2031
    .local v17, "switchTo":Landroid/net/NetworkInfo;
    const-string v18, "otherNetwork"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2037
    .end local v17    # "switchTo":Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    const-string v18, "inetCondition"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2040
    const/4 v4, 0x1

    .line 2041
    .local v4, "doReset":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    aget-object v18, v18, v16

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v10

    .line 2042
    .local v10, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v10, :cond_8

    .line 2043
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v13

    .line 2044
    .local v13, "oldIface":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 2045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v3, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v9, :cond_8

    aget-object v12, v3, v5

    .line 2046
    .local v12, "networkStateTracker":Landroid/net/NetworkStateTracker;
    if-nez v12, :cond_7

    .line 2045
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2033
    .end local v3    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v4    # "doReset":Z
    .end local v5    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "linkProperties":Landroid/net/LinkProperties;
    .end local v12    # "networkStateTracker":Landroid/net/NetworkStateTracker;
    .end local v13    # "oldIface":Ljava/lang/String;
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2034
    const-string v18, "noConnectivity"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 2047
    .restart local v3    # "arr$":[Landroid/net/NetworkStateTracker;
    .restart local v4    # "doReset":Z
    .restart local v5    # "i$":I
    .restart local v9    # "len$":I
    .restart local v10    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v12    # "networkStateTracker":Landroid/net/NetworkStateTracker;
    .restart local v13    # "oldIface":Ljava/lang/String;
    :cond_7
    invoke-interface {v12}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 2048
    .local v11, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_5

    .line 2049
    invoke-interface {v12}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v8

    .line 2050
    .local v8, "l":Landroid/net/LinkProperties;
    if-eqz v8, :cond_5

    .line 2051
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 2052
    const/4 v4, 0x0

    .line 2061
    .end local v3    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v5    # "i$":I
    .end local v8    # "l":Landroid/net/LinkProperties;
    .end local v9    # "len$":I
    .end local v11    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v12    # "networkStateTracker":Landroid/net/NetworkStateTracker;
    .end local v13    # "oldIface":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 2063
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2064
    .local v6, "immediateIntent":Landroid/content/Intent;
    const-string v18, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2065
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2066
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 2071
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 2072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 2075
    :cond_9
    return-void
.end method

.method private handleDnsConfigurationChange(I)V
    .locals 13
    .param p1, "netType"    # I

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v0, p1

    .line 3021
    .local v8, "nt":Landroid/net/NetworkStateTracker;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3022
    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 3023
    .local v9, "p":Landroid/net/LinkProperties;
    if-nez v9, :cond_1

    .line 3049
    .end local v9    # "p":Landroid/net/LinkProperties;
    :cond_0
    :goto_0
    return-void

    .line 3024
    .restart local v9    # "p":Landroid/net/LinkProperties;
    :cond_1
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    .line 3025
    .local v3, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3026
    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 3027
    .local v1, "network":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3028
    :try_start_0
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;->updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 3029
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3047
    .end local v1    # "network":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    goto :goto_0

    .line 3029
    .restart local v1    # "network":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3032
    .end local v1    # "network":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v4, v5}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3038
    :goto_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v11, v0, p1

    .line 3039
    .local v11, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 3041
    .local v10, "pid":Ljava/lang/Integer;
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/os/INetworkManagementService;->setDnsInterfaceForPid(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 3042
    :catch_0
    move-exception v6

    .line 3043
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception setting interface for pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3034
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "pid":Ljava/lang/Integer;
    .end local v11    # "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v6

    .line 3035
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception setting dns servers: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleInetConditionChange(II)V
    .locals 6
    .param p1, "netType"    # I
    .param p2, "condition"    # I

    .prologue
    .line 3498
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3499
    const-string v1, "handleInetConditionChange: no active default network - ignore"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3531
    :cond_0
    :goto_0
    return-void

    .line 3502
    :cond_1
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v1, p1, :cond_2

    .line 3503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionChange: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3512
    :cond_2
    iput p2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 3514
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    if-nez v1, :cond_0

    .line 3517
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_3

    .line 3518
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_up_delay"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3524
    .local v0, "delay":I
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 3525
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/4 v3, 0x5

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3521
    .end local v0    # "delay":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_down_delay"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "delay":I
    goto :goto_1
.end method

.method private handleInetConditionHoldEnd(II)V
    .locals 3
    .param p1, "netType"    # I
    .param p2, "sequence"    # I

    .prologue
    .line 3535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionHoldEnd: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", published condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3539
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 3541
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3542
    const-string v1, "handleInetConditionHoldEnd: no active default network - ignoring"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3563
    :goto_0
    return-void

    .line 3545
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    .line 3546
    const-string v1, "handleInetConditionHoldEnd: event hold for obsolete network - ignoring"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3556
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3557
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3558
    const-string v1, "handleInetConditionHoldEnd: default network not connected - ignoring"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3561
    :cond_2
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3562
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleMobileProvisioningAction(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4805
    const/4 v3, 0x5

    invoke-direct {p0, v4, v3, v6, v6}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 4809
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mIsProvisioningNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4810
    const-string v3, "handleMobileProvisioningAction: on prov network enable then launch"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4811
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mIsStartingProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4812
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v3, v4

    check-cast v1, Landroid/net/MobileDataStateTracker;

    .line 4814
    .local v1, "mdst":Landroid/net/MobileDataStateTracker;
    invoke-virtual {v1, v5}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    .line 4815
    invoke-virtual {v1, p1}, Landroid/net/MobileDataStateTracker;->enableMobileProvisioning(Ljava/lang/String;)V

    .line 4829
    .end local v1    # "mdst":Landroid/net/MobileDataStateTracker;
    :goto_0
    return-void

    .line 4817
    :cond_0
    const-string v3, "handleMobileProvisioningAction: not prov network, launch browser directly"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4818
    const-string v3, "android.intent.action.MAIN"

    const-string v4, "android.intent.category.APP_BROWSER"

    invoke-static {v3, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 4820
    .local v2, "newIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4821
    const/high16 v3, 0x10400000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4824
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4825
    :catch_0
    move-exception v0

    .line 4826
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMobileProvisioningAction: startActivity failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleNetworkSamplingTimeout()V
    .locals 11

    .prologue
    .line 5136
    const-string v8, "Sampling interval elapsed, updating statistics .."

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5139
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5141
    .local v4, "mapIfaceToSample":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/SamplingDataTracker$SamplingSnapshot;>;"
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v7, v0, v1

    .line 5142
    .local v7, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_0

    .line 5143
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 5144
    .local v2, "ifaceName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 5145
    const/4 v8, 0x0

    invoke-interface {v4, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5141
    .end local v2    # "ifaceName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5151
    .end local v7    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_1
    invoke-static {v4}, Landroid/net/SamplingDataTracker;->getSamplingSnapshots(Ljava/util/Map;)V

    .line 5154
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v7, v0, v1

    .line 5155
    .restart local v7    # "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_2

    .line 5156
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 5157
    .restart local v2    # "ifaceName":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 5158
    .local v6, "ss":Landroid/net/SamplingDataTracker$SamplingSnapshot;
    if-eqz v6, :cond_2

    .line 5160
    invoke-interface {v7, v6}, Landroid/net/NetworkStateTracker;->stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 5162
    invoke-interface {v7, v6}, Landroid/net/NetworkStateTracker;->startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 5154
    .end local v2    # "ifaceName":Ljava/lang/String;
    .end local v6    # "ss":Landroid/net/SamplingDataTracker$SamplingSnapshot;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5167
    .end local v7    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_3
    const-string v8, "Done."

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5169
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "connectivity_sampling_interval_in_seconds"

    const/4 v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 5176
    .local v5, "samplingIntervalInSeconds":I
    if-lez v5, :cond_4

    .line 5177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting timer for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5180
    mul-int/lit16 v8, v5, 0x3e8

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ConnectivityService;->setAlarm(ILandroid/app/PendingIntent;)V

    .line 5182
    :cond_4
    return-void
.end method

.method private handleSetDependencyMet(IZ)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "met"    # Z

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 1826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetDependencyMet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1828
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setDependencyMet(Z)V

    .line 1830
    :cond_0
    return-void
.end method

.method private handleSetMobileData(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 1907
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1911
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 1913
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 1917
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 1919
    :cond_1
    return-void
.end method

.method private handleSetNetworkPreference(I)V
    .locals 2
    .param p1, "preference"    # I

    .prologue
    .line 855
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v1, p1, :cond_0

    .line 859
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 860
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "network_preference"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 861
    monitor-enter p0

    .line 862
    :try_start_0
    iput p1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 863
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforcePreference()V

    .line 867
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 863
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleSetPolicyDataEnable(IZ)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1931
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1932
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1933
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1934
    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setPolicyDataEnable(Z)V

    .line 1937
    .end local v0    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_0
    return-void
.end method

.method private isAddressUnderVpn(Ljava/net/InetAddress;)Z
    .locals 11
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    const/4 v7, 0x0

    .line 1545
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1546
    :try_start_0
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1547
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1548
    .local v5, "uid":I
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Vpn;

    .line 1549
    .local v6, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v6, :cond_0

    .line 1550
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1570
    :goto_0
    return v7

    .line 1554
    :cond_0
    :try_start_3
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1555
    .local v2, "destination":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-static {p1, v10}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1559
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    .line 1560
    .local v4, "prefix":I
    invoke-static {p1, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1561
    .local v0, "addrMasked":Ljava/net/InetAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-static {v10, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v1

    .line 1564
    .local v1, "destMasked":Ljava/net/InetAddress;
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1565
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v8

    goto :goto_0

    .line 1572
    .end local v0    # "addrMasked":Ljava/net/InetAddress;
    .end local v1    # "destMasked":Ljava/net/InetAddress;
    .end local v2    # "destination":Landroid/net/LinkAddress;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "prefix":I
    .end local v5    # "uid":I
    .end local v6    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 1570
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "uid":I
    .restart local v6    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_2
    :try_start_5
    invoke-virtual {v6, p1}, Lcom/android/server/connectivity/Vpn;->isAddressCovered(Ljava/net/InetAddress;)Z

    move-result v7

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1571
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "uid":I
    .end local v6    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_1
    move-exception v7

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private isMobileDataStateTrackerReady()Z
    .locals 3

    .prologue
    .line 4172
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/4 v2, 0x5

    aget-object v0, v1, v2

    check-cast v0, Landroid/net/MobileDataStateTracker;

    .line 4174
    .local v0, "mdst":Landroid/net/MobileDataStateTracker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/MobileDataStateTracker;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z
    .locals 7
    .param p1, "tracker"    # Landroid/net/NetworkStateTracker;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 929
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, "iface":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 934
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 935
    .local v1, "networkCostly":Z
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 936
    .local v2, "uidRules":I
    monitor-exit v4

    .line 938
    if-eqz v1, :cond_0

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 939
    const/4 v3, 0x1

    .line 943
    :cond_0
    return v3

    .line 936
    .end local v1    # "networkCostly":Z
    .end local v2    # "uidRules":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isNetworkMeteredUnchecked(I)Z
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 1157
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1158
    .local v0, "state":Landroid/net/NetworkState;
    if-eqz v0, :cond_0

    .line 1160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->isNetworkMetered(Landroid/net/NetworkState;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1164
    :goto_0
    return v1

    .line 1161
    :catch_0
    move-exception v1

    .line 1164
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNewNetTypePreferredOverCurrentNetType(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 2318
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/net/NetworkConfig;->priority:I

    if-gt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v0, v1, :cond_2

    .line 2321
    :cond_1
    const/4 v0, 0x0

    .line 2323
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadGlobalProxy()V
    .locals 8

    .prologue
    .line 3627
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3628
    .local v5, "res":Landroid/content/ContentResolver;
    const-string v6, "global_http_proxy_host"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3629
    .local v1, "host":Ljava/lang/String;
    const-string v6, "global_http_proxy_port"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3630
    .local v3, "port":I
    const-string v6, "global_http_proxy_exclusion_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3632
    .local v0, "exclList":Ljava/lang/String;
    const-string v6, "global_proxy_pac_url"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3633
    .local v2, "pacFileUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3635
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3636
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;)V

    .line 3640
    .local v4, "proxyProperties":Landroid/net/ProxyProperties;
    :goto_0
    invoke-virtual {v4}, Landroid/net/ProxyProperties;->isValid()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3641
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid proxy properties, ignoring: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3649
    .end local v4    # "proxyProperties":Landroid/net/ProxyProperties;
    :cond_1
    :goto_1
    return-void

    .line 3638
    :cond_2
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, v1, v3, v0}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .restart local v4    # "proxyProperties":Landroid/net/ProxyProperties;
    goto :goto_0

    .line 3645
    :cond_3
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3646
    :try_start_0
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 3647
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3743
    const-string v0, "ConnectivityService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3747
    const-string v0, "ConnectivityService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    return-void
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .prologue
    .line 2148
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_0

    .line 2149
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 2152
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2153
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    invoke-direct {v2, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2154
    const-string v1, "networkType"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2155
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2156
    const-string v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2157
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2159
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2160
    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2162
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2163
    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2166
    :cond_3
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2167
    return-object v0
.end method

.method private static makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackerHandler"    # Landroid/os/Handler;

    .prologue
    .line 770
    const/4 v10, 0x0

    .line 771
    .local v10, "wimaxStateTrackerClass":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 777
    .local v7, "wimaxServiceClass":Ljava/lang/Class;
    const/4 v9, 0x0

    .line 779
    .local v9, "wimaxStateTracker":Landroid/net/NetworkStateTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1110054

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 782
    .local v2, "isWimaxEnabled":Z
    if-eqz v2, :cond_0

    .line 784
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040126

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 786
    .local v6, "wimaxManagerClassName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040127

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 788
    .local v8, "wimaxServiceClassName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040128

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 791
    .local v11, "wimaxStateTrackerClassName":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/net/wimax/WimaxHelper;->getWimaxClassLoader(Landroid/content/Context;)Ldalvik/system/DexClassLoader;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 794
    .local v4, "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    :try_start_1
    invoke-virtual {v4, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 795
    .local v5, "wimaxManagerClass":Ljava/lang/Class;
    invoke-virtual {v4, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 796
    invoke-virtual {v4, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 807
    :try_start_2
    const-string v14, "Starting Wimax Service... "

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 809
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Landroid/content/Context;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Landroid/os/Handler;

    aput-object v16, v14, v15

    invoke-virtual {v10, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 811
    .local v13, "wmxStTrkrConst":Ljava/lang/reflect/Constructor;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    aput-object p1, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/net/NetworkStateTracker;

    move-object v9, v0

    .line 814
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Landroid/content/Context;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15

    invoke-virtual {v7, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    .line 816
    .local v12, "wmxSrvConst":Ljava/lang/reflect/Constructor;
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 817
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    aput-object v9, v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 818
    .local v3, "svcInvoker":Landroid/os/IBinder;
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 820
    const-string v14, "WiMax"

    invoke-static {v14, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v14, v9

    .line 831
    .end local v3    # "svcInvoker":Landroid/os/IBinder;
    .end local v4    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .end local v5    # "wimaxManagerClass":Ljava/lang/Class;
    .end local v6    # "wimaxManagerClassName":Ljava/lang/String;
    .end local v8    # "wimaxServiceClassName":Ljava/lang/String;
    .end local v11    # "wimaxStateTrackerClassName":Ljava/lang/String;
    .end local v12    # "wmxSrvConst":Ljava/lang/reflect/Constructor;
    .end local v13    # "wmxStTrkrConst":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v14

    .line 797
    .restart local v4    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .restart local v6    # "wimaxManagerClassName":Ljava/lang/String;
    .restart local v8    # "wimaxServiceClassName":Ljava/lang/String;
    .restart local v11    # "wimaxStateTrackerClassName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 798
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception finding Wimax classes: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 799
    const/4 v14, 0x0

    goto :goto_0

    .line 801
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v4    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .end local v6    # "wimaxManagerClassName":Ljava/lang/String;
    .end local v8    # "wimaxServiceClassName":Ljava/lang/String;
    .end local v11    # "wimaxStateTrackerClassName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 802
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v14, "Wimax Resources does not exist!!! "

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 803
    const/4 v14, 0x0

    goto :goto_0

    .line 822
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    .restart local v4    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .restart local v5    # "wimaxManagerClass":Ljava/lang/Class;
    .restart local v6    # "wimaxManagerClassName":Ljava/lang/String;
    .restart local v8    # "wimaxServiceClassName":Ljava/lang/String;
    .restart local v11    # "wimaxStateTrackerClassName":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 823
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception creating Wimax classes: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 824
    const/4 v14, 0x0

    goto :goto_0

    .line 827
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v4    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .end local v5    # "wimaxManagerClass":Ljava/lang/Class;
    .end local v6    # "wimaxManagerClassName":Ljava/lang/String;
    .end local v8    # "wimaxServiceClassName":Ljava/lang/String;
    .end local v11    # "wimaxStateTrackerClassName":Ljava/lang/String;
    :cond_0
    const-string v14, "Wimax is not enabled or not added to the network attributes!!! "

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 828
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z
    .locals 10
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "r"    # Landroid/net/RouteInfo;
    .param p3, "cycleCount"    # I
    .param p4, "doAdd"    # Z
    .param p5, "toDefaultTable"    # Z
    .param p6, "exempt"    # Z

    .prologue
    .line 1709
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1710
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyRoute got unexpected null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1711
    const/4 v0, 0x0

    .line 1799
    :goto_0
    return v0

    .line 1714
    :cond_1
    const/16 v0, 0xa

    if-le p3, v0, :cond_2

    .line 1715
    const-string v0, "Error modifying route - too much recursion"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1716
    const/4 v0, 0x0

    goto :goto_0

    .line 1719
    :cond_2
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v9

    .line 1720
    .local v9, "ifaceName":Ljava/lang/String;
    if-nez v9, :cond_3

    .line 1721
    const-string v0, "Error modifying route - no interface name"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1722
    const/4 v0, 0x0

    goto :goto_0

    .line 1724
    :cond_3
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1725
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 1726
    .local v2, "bestRoute":Landroid/net/RouteInfo;
    if-eqz v2, :cond_4

    .line 1727
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1729
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 1737
    :goto_1
    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    .line 1740
    .end local v2    # "bestRoute":Landroid/net/RouteInfo;
    :cond_4
    if-eqz p4, :cond_8

    .line 1743
    if-eqz p5, :cond_7

    .line 1744
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1747
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1748
    if-eqz p6, :cond_5

    .line 1749
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v7

    .line 1750
    .local v7, "dest":Landroid/net/LinkAddress;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1751
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v7}, Landroid/os/INetworkManagementService;->setHostExemption(Landroid/net/LinkAddress;)V

    .line 1752
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1755
    .end local v7    # "dest":Landroid/net/LinkAddress;
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1799
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1733
    .restart local v2    # "bestRoute":Landroid/net/RouteInfo;
    :cond_6
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    goto :goto_1

    .line 1755
    .end local v2    # "bestRoute":Landroid/net/RouteInfo;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1759
    :catch_0
    move-exception v8

    .line 1761
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception trying to add a route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1762
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1757
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 1767
    :cond_8
    if-eqz p5, :cond_a

    .line 1768
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1769
    :try_start_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1770
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-nez v0, :cond_9

    .line 1773
    :try_start_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1774
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v7

    .line 1775
    .restart local v7    # "dest":Landroid/net/LinkAddress;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1776
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v7}, Landroid/os/INetworkManagementService;->clearHostExemption(Landroid/net/LinkAddress;)V

    .line 1777
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1787
    .end local v7    # "dest":Landroid/net/LinkAddress;
    :cond_9
    :try_start_7
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 1779
    :catch_1
    move-exception v8

    .line 1782
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 1791
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 1792
    :catch_2
    move-exception v8

    .line 1795
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZZ)Z
    .locals 8
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "doAdd"    # Z
    .param p4, "toDefaultTable"    # Z
    .param p5, "exempt"    # Z

    .prologue
    .line 1690
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 1691
    .local v2, "bestRoute":Landroid/net/RouteInfo;
    if-nez v2, :cond_0

    .line 1692
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 1704
    :goto_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    move-result v0

    return v0

    .line 1694
    :cond_0
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    .line 1695
    .local v7, "iface":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1697
    invoke-static {p2, v7}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    goto :goto_0

    .line 1701
    :cond_1
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p2, v0, v7}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    goto :goto_0
.end method

.method private onUserStart(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 5058
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v6

    .line 5059
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 5060
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    .line 5061
    const-string v1, "Starting user already has a VPN"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5062
    monitor-exit v6

    .line 5068
    :goto_0
    return-void

    .line 5064
    :cond_0
    new-instance v0, Lcom/android/server/connectivity/Vpn;

    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V

    .line 5065
    .restart local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5066
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 5067
    monitor-exit v6

    goto :goto_0

    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUserStop(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 5071
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5072
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 5073
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_0

    .line 5074
    const-string v1, "Stopping user has no VPN"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5075
    monitor-exit v2

    .line 5079
    :goto_0
    return-void

    .line 5077
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 5078
    monitor-exit v2

    goto :goto_0

    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reassessPidDns(IZ)V
    .locals 11
    .param p1, "pid"    # I
    .param p2, "doBump"    # Z

    .prologue
    .line 2938
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 2939
    .local v5, "myPid":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget v2, v0, v3

    .line 2940
    .local v2, "i":I
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2939
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2943
    :cond_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v8, v2

    .line 2944
    .local v6, "nt":Landroid/net/NetworkStateTracker;
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2946
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 2947
    .local v7, "p":Landroid/net/LinkProperties;
    if-eqz v7, :cond_0

    .line 2948
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v8, v8, v2

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2950
    :try_start_0
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, p1}, Landroid/os/INetworkManagementService;->setDnsInterfaceForPid(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2964
    .end local v2    # "i":I
    .end local v6    # "nt":Landroid/net/NetworkStateTracker;
    .end local v7    # "p":Landroid/net/LinkProperties;
    :goto_1
    return-void

    .line 2951
    .restart local v2    # "i":I
    .restart local v6    # "nt":Landroid/net/NetworkStateTracker;
    .restart local v7    # "p":Landroid/net/LinkProperties;
    :catch_0
    move-exception v1

    .line 2952
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception reasseses pid dns: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2960
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v6    # "nt":Landroid/net/NetworkStateTracker;
    .end local v7    # "p":Landroid/net/LinkProperties;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v8, p1}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForPid(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2961
    :catch_1
    move-exception v1

    .line 2962
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception clear interface from pid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removeDataActivityTracking(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 2485
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v2, p1

    .line 2486
    .local v1, "net":Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2488
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 2492
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2496
    :cond_1
    :goto_0
    return-void

    .line 2493
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 7
    .param p1, "p"    # Landroid/net/LinkProperties;
    .param p2, "r"    # Landroid/net/RouteInfo;
    .param p3, "toDefaultTable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1677
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    move-result v0

    return v0
.end method

.method private removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 6
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v3, 0x0

    .line 1685
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZZ)Z

    move-result v0

    return v0
.end method

.method private resetTcpDelayedAckSettings(Landroid/net/NetworkStateTracker;)V
    .locals 6
    .param p1, "nt"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 2821
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getDefaultTcpUserConfigPropName()Ljava/lang/String;

    move-result-object v2

    .line 2822
    .local v2, "key1":Ljava/lang/String;
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getDefaultTcpDelayedAckPropName()Ljava/lang/String;

    move-result-object v3

    .line 2824
    .local v3, "key2":Ljava/lang/String;
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2825
    .local v1, "defUserCfg":Ljava/lang/String;
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2827
    .local v0, "defDelAck":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 2828
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in system default properties"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2832
    const-string v1, "0"

    .line 2834
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setUserConfig(Ljava/lang/String;)V

    .line 2836
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 2837
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in system default properties"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2841
    const-string v0, "1"

    .line 2843
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setDelAckSize(Ljava/lang/String;)V

    .line 2844
    return-void
.end method

.method private sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "delayMs"    # I

    .prologue
    .line 2139
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2140
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    .line 2141
    return-void
.end method

.method private sendDataActivityBroadcast(IZ)V
    .locals 11
    .param p1, "deviceType"    # I
    .param p2, "active"    # Z

    .prologue
    .line 2179
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2180
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "deviceType"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2181
    const-string v0, "isActive"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2184
    .local v9, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2187
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2189
    return-void

    .line 2187
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .prologue
    .line 2171
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2172
    return-void
.end method

.method private sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;
    .param p3, "delayMs"    # I

    .prologue
    .line 2175
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 2176
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 2144
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2145
    return-void
.end method

.method private sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    .locals 6
    .param p1, "proxy"    # Landroid/net/ProxyProperties;

    .prologue
    .line 3706
    if-nez p1, :cond_0

    new-instance p1, Landroid/net/ProxyProperties;

    .end local p1    # "proxy":Landroid/net/ProxyProperties;
    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    invoke-direct {p1, v3, v4, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3707
    .restart local p1    # "proxy":Landroid/net/ProxyProperties;
    :cond_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyProperties;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3719
    :goto_0
    return-void

    .line 3708
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending Proxy Broadcast for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3709
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3710
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3712
    const-string v3, "proxy"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3713
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3715
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3717
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2253
    monitor-enter p0

    .line 2254
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v2, :cond_0

    .line 2255
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2257
    :cond_0
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 2264
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2266
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2268
    monitor-exit p0

    .line 2269
    return-void

    .line 2266
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2268
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private sendStickyBroadcastDelayed(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delayMs"    # I

    .prologue
    .line 2272
    if-gtz p2, :cond_0

    .line 2273
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2282
    :goto_0
    return-void

    .line 2279
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setBufferSize(Ljava/lang/String;)V
    .locals 5
    .param p1, "bufferSizes"    # Ljava/lang/String;

    .prologue
    .line 2798
    :try_start_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2800
    .local v2, "values":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 2801
    const-string v1, "/sys/kernel/ipv4/tcp_"

    .line 2802
    .local v1, "prefix":Ljava/lang/String;
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2803
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2806
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :goto_0
    return-void

    .line 2809
    .restart local v2    # "values":[Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid buffersize string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2811
    .end local v2    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2812
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set tcp buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDelAckSize(Ljava/lang/String;)V
    .locals 5
    .param p1, "delAckSize"    # Ljava/lang/String;

    .prologue
    .line 2897
    :try_start_0
    const-string v2, "/sys/kernel/ipv4/tcp_delack_seg"

    .line 2898
    .local v2, "mProcFile":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2900
    .local v0, "delAck":I
    if-lez v0, :cond_0

    const/16 v3, 0x3c

    if-le v0, v3, :cond_1

    .line 2901
    :cond_0
    const-string v3, " delAck size is out of range, configuring to default"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2902
    const/4 v0, 0x1

    .line 2905
    :cond_1
    const-string v3, "/sys/kernel/ipv4/tcp_delack_seg"

    invoke-static {v3, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2909
    .end local v0    # "delAck":I
    .end local v2    # "mProcFile":Ljava/lang/String;
    :goto_0
    return-void

    .line 2906
    :catch_0
    move-exception v1

    .line 2907
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set delayed ACK size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setEnableFailFastMobileData(I)V
    .locals 4
    .param p1, "enabled"    # I

    .prologue
    .line 4162
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 4163
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 4167
    .local v0, "tag":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4169
    return-void

    .line 4165
    .end local v0    # "tag":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .restart local v0    # "tag":I
    goto :goto_0
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 4088
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 4089
    .local v0, "existing":Lcom/android/server/net/LockdownVpnTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 4090
    if-eqz v0, :cond_0

    .line 4091
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    .line 4095
    :cond_0
    if-eqz p1, :cond_1

    .line 4096
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 4097
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const-string v2, "lo"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 4098
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 4099
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    .line 4106
    :goto_0
    return-void

    .line 4101
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4103
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 4837
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setProvNotificationVisible: E visible="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " networkType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " extraInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4841
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 4842
    .local v7, "r":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 4845
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_0

    .line 4850
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 4851
    .local v4, "notification":Landroid/app/Notification;
    packed-switch p2, :pswitch_data_0

    .line 4875
    :pswitch_0
    const v9, 0x104052e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4876
    .local v8, "title":Ljava/lang/CharSequence;
    const v9, 0x104052f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p3, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4878
    .local v1, "details":Ljava/lang/CharSequence;
    const v2, 0x10805b3

    .line 4879
    .local v2, "icon":I
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4880
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10400000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4882
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4886
    :goto_0
    const-wide/16 v9, 0x0

    iput-wide v9, v4, Landroid/app/Notification;->when:J

    .line 4887
    iput v2, v4, Landroid/app/Notification;->icon:I

    .line 4888
    const/16 v9, 0x10

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 4889
    iput-object v8, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 4890
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v10, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v9, v8, v1, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4893
    :try_start_0
    const/4 v9, 0x1

    if-ne p2, v9, :cond_miui_0

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-virtual {p0, v9, v3, v0}, Lcom/android/server/ConnectivityService;->showLogin(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_miui_0
    const-string v9, "CaptivePortal.Notification"

    invoke-virtual {v5, v9, p2, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4906
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v2    # "icon":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mIsNotificationVisible:Z

    .line 4907
    return-void

    .line 4853
    .restart local v4    # "notification":Landroid/app/Notification;
    :pswitch_1
    const v9, 0x104052d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4854
    .restart local v8    # "title":Ljava/lang/CharSequence;
    const v9, 0x104052f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p3, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4856
    .restart local v1    # "details":Ljava/lang/CharSequence;
    const v2, 0x10805b7

    .line 4857
    .restart local v2    # "icon":I
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4858
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x10400000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4860
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 4864
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v2    # "icon":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const v9, 0x104052e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4867
    .restart local v8    # "title":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 4868
    .restart local v1    # "details":Ljava/lang/CharSequence;
    const v2, 0x10805b3

    .line 4869
    .restart local v2    # "icon":I
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4870
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v9, "EXTRA_URL"

    move-object/from16 v0, p4

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4871
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4872
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 4894
    :catch_0
    move-exception v6

    .line 4895
    .local v6, "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setNotificaitionVisible: visible notificationManager npe="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4896
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 4900
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v2    # "icon":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_0
    :try_start_1
    const-string v9, "CaptivePortal.Notification"

    invoke-virtual {v5, v9, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 4901
    :catch_1
    move-exception v6

    .line 4902
    .restart local v6    # "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setNotificaitionVisible: cancel notificationManager npe="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4903
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 4851
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setUserConfig(Ljava/lang/String;)V
    .locals 5
    .param p1, "userConfig"    # Ljava/lang/String;

    .prologue
    .line 2917
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2918
    .local v2, "userCfg":I
    const-string v1, "/sys/kernel/ipv4/tcp_use_userconfig"

    .line 2920
    .local v1, "mProcFile":Ljava/lang/String;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2921
    :cond_0
    const-string v3, "/sys/kernel/ipv4/tcp_use_userconfig"

    invoke-static {v3, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    .end local v1    # "mProcFile":Ljava/lang/String;
    .end local v2    # "userCfg":I
    :goto_0
    return-void

    .line 2923
    .restart local v1    # "mProcFile":Ljava/lang/String;
    .restart local v2    # "userCfg":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid buffersize string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2925
    .end local v1    # "mProcFile":Ljava/lang/String;
    .end local v2    # "userCfg":I
    :catch_0
    move-exception v0

    .line 2926
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set delayed ACK size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupDataActivityTracking(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 2453
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v3, p1

    .line 2454
    .local v1, "thisNet":Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2458
    .local v0, "iface":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2459
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_activity_timeout_mobile"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2463
    .local v2, "timeout":I
    const/4 p1, 0x0

    .line 2473
    :goto_0
    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    .line 2475
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2479
    :cond_0
    :goto_1
    return-void

    .line 2464
    .end local v2    # "timeout":I
    :cond_1
    const/4 v3, 0x1

    if-ne v3, p1, :cond_2

    .line 2465
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_activity_timeout_wifi"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "timeout":I
    goto :goto_0

    .line 2470
    .end local v2    # "timeout":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "timeout":I
    goto :goto_0

    .line 2476
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;ZI)I
    .locals 14
    .param p1, "u"    # Lcom/android/server/ConnectivityService$FeatureUser;
    .param p2, "ignoreDups"    # Z

    .prologue
    .line 1443
    iget v4, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 1444
    .local v4, "networkType":I
    iget-object v2, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 1445
    .local v2, "feature":Ljava/lang/String;
    iget v5, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 1446
    .local v5, "pid":I
    iget v9, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 1448
    .local v9, "uid":I
    const/4 v8, 0x0

    .line 1449
    .local v8, "tracker":Landroid/net/NetworkStateTracker;
    const/4 v0, 0x0

    .line 1455
    .local v0, "callTeardown":Z
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1457
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stopUsingNetworkFeature: net "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", net is invalid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1460
    const/4 v12, -0x1

    .line 1537
    :goto_0
    return v12

    .line 1465
    :cond_0
    monitor-enter p0

    .line 1467
    :try_start_0
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1472
    const/4 v12, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1528
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 1474
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 1475
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    iget-object v13, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v13, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1483
    if-nez p2, :cond_3

    .line 1484
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1485
    .local v11, "x":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v11, p1}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1487
    const/4 v12, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1493
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "x":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_3
    invoke-virtual {p0, v4, v2}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v10

    .line 1495
    .local v10, "usedNetworkType":I
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v12, v10

    .line 1496
    if-nez v8, :cond_4

    .line 1498
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stopUsingNetworkFeature: net "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " no known tracker for used net type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1501
    const/4 v12, -0x1

    monitor-exit p0

    goto :goto_0

    .line 1503
    :cond_4
    if-eq v10, v4, :cond_6

    .line 1504
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 1505
    .local v1, "currentPid":Ljava/lang/Integer;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v12, v12, v10

    invoke-interface {v12, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 1509
    .local v6, "token":J
    const/4 v12, 0x1

    :try_start_2
    invoke-direct {p0, v5, v12}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1511
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1513
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    .line 1514
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v12, v12, v10

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_5

    .line 1519
    const/4 v12, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 1511
    :catchall_1
    move-exception v12

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 1521
    :cond_5
    const/4 v0, 0x1

    .line 1528
    .end local v1    # "currentPid":Ljava/lang/Integer;
    .end local v6    # "token":J
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1530
    if-eqz v0, :cond_7

    .line 1532
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stopUsingNetworkFeature: teardown net "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    move-object v12, v8

    check-cast v12, Landroid/net/MobileDataStateTracker;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/net/MobileDataStateTracker;->teardownMSim(I)Z

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_6
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stopUsingNetworkFeature: net "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not a known feature - dropping"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1537
    :cond_7
    const/4 v12, -0x1

    goto/16 :goto_0
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .locals 2
    .param p1, "netTracker"    # Landroid/net/NetworkStateTracker;

    .prologue
    const/4 v0, 0x1

    .line 916
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    invoke-interface {p1, v0}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 920
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwIfLockdownEnabled()V
    .locals 2

    .prologue
    .line 4109
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v0, :cond_0

    .line 4110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unavailable in lockdown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4112
    :cond_0
    return-void
.end method

.method private tryFailover(I)V
    .locals 5
    .param p1, "prevNetType"    # I

    .prologue
    .line 2083
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2084
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v3, p1, :cond_0

    .line 2086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryFailover: set mActiveDefaultNetwork=-1, prevNetType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2088
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 2091
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, p1

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->resetTcpDelayedAckSettings(Landroid/net/NetworkStateTracker;)V

    .line 2102
    :cond_0
    const/4 v2, 0x0

    .local v2, "checkType":I
    :goto_0
    const/16 v3, 0xe

    if-gt v2, v3, :cond_5

    .line 2103
    if-ne v2, p1, :cond_2

    .line 2102
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2104
    :cond_2
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 2105
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2106
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 2121
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v3, v2

    .line 2122
    .local v1, "checkTracker":Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2123
    .local v0, "checkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2124
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2125
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 2127
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to switch to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2130
    .end local v0    # "checkInfo":Landroid/net/NetworkInfo;
    .end local v1    # "checkTracker":Landroid/net/NetworkStateTracker;
    .end local v2    # "checkType":I
    :cond_5
    return-void
.end method

.method private updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "network"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;
    .param p4, "domains"    # Ljava/lang/String;
    .param p5, "defaultDns"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2987
    .local p3, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v5, 0x0

    .line 2988
    .local v5, "last":I
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    if-eqz v7, :cond_0

    .line 2989
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2990
    .restart local p3    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-interface {p3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2992
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no dns provided for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2997
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {p3}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, p2, v8, p4}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    if-eqz p5, :cond_1

    .line 2999
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v7, p2}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    .line 3002
    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 3003
    .local v0, "dns":Ljava/net/InetAddress;
    add-int/lit8 v5, v5, 0x1

    .line 3004
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net.dns"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3005
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 3006
    .local v6, "value":Ljava/lang/String;
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3013
    .end local v0    # "dns":Ljava/net/InetAddress;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3014
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception setting default dns interface: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3016
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 3008
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v2, v5, 0x1

    .local v2, "i":I
    :goto_2
    :try_start_1
    iget v7, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    if-gt v2, v7, :cond_3

    .line 3009
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net.dns"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3010
    .restart local v4    # "key":Ljava/lang/String;
    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3012
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    iput v5, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateMtuSizeSettings(Landroid/net/NetworkStateTracker;)V
    .locals 6
    .param p1, "nt"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 2737
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 2738
    .local v1, "iface":Ljava/lang/String;
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getMtu()I

    move-result v2

    .line 2740
    .local v2, "mtu":I
    const/16 v3, 0x44

    if-lt v2, v3, :cond_0

    const/16 v3, 0x2710

    if-le v2, v3, :cond_1

    .line 2741
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected mtu value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2751
    :goto_0
    return-void

    .line 2747
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v1, v2}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2748
    :catch_0
    move-exception v0

    .line 2749
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception in setMtu()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    .locals 8
    .param p1, "nt"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 2759
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v3

    .line 2760
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_3

    const/4 v0, 0x0

    .line 2762
    .local v0, "bufferSizes":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2766
    const-string v3, "net.tcp.buffersize.default"

    .line 2767
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2771
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 2776
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setBufferSize(Ljava/lang/String;)V

    .line 2779
    :cond_1
    const-string v1, "net.tcp.default_init_rwnd"

    .line 2780
    .local v1, "defaultRwndKey":Ljava/lang/String;
    const-string v6, "net.tcp.default_init_rwnd"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2781
    .local v2, "defaultRwndValue":I
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tcp_default_init_rwnd"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2783
    .local v4, "rwndValue":Ljava/lang/Integer;
    const-string v5, "sys.sysctl.tcp_def_init_rwnd"

    .line 2784
    .local v5, "sysctlKey":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_2

    .line 2785
    const-string v6, "sys.sysctl.tcp_def_init_rwnd"

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    :cond_2
    return-void

    .line 2760
    .end local v0    # "bufferSizes":Ljava/lang/String;
    .end local v1    # "defaultRwndKey":Ljava/lang/String;
    .end local v2    # "defaultRwndValue":I
    .end local v4    # "rwndValue":Ljava/lang/Integer;
    .end local v5    # "sysctlKey":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZZ)Z
    .locals 14
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "curLp"    # Landroid/net/LinkProperties;
    .param p3, "isLinkDefault"    # Z
    .param p4, "exempt"    # Z

    .prologue
    .line 2655
    const/4 v10, 0x0

    .line 2656
    .local v10, "routesToAdd":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    new-instance v1, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v1}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 2657
    .local v1, "dnsDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v8, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v8}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 2658
    .local v8, "routeDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    if-eqz p2, :cond_5

    .line 2660
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v8

    .line 2661
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v1

    .line 2667
    :cond_0
    :goto_0
    iget-object v11, v8, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v8, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-eqz v11, :cond_6

    :cond_1
    const/4 v9, 0x1

    .line 2669
    .local v9, "routesChanged":Z
    :goto_1
    iget-object v11, v8, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 2670
    .local v7, "r":Landroid/net/RouteInfo;
    if-nez p3, :cond_3

    invoke-virtual {v7}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v11

    if-nez v11, :cond_4

    .line 2672
    :cond_3
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v7, v11}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 2674
    :cond_4
    if-nez p3, :cond_2

    .line 2676
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v7, v11}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_2

    .line 2662
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "r":Landroid/net/RouteInfo;
    .end local v9    # "routesChanged":Z
    :cond_5
    if-eqz p1, :cond_0

    .line 2663
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v11

    iput-object v11, v8, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 2664
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    iput-object v11, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_0

    .line 2667
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 2680
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v9    # "routesChanged":Z
    :cond_7
    if-nez p3, :cond_b

    .line 2682
    if-eqz v9, :cond_9

    .line 2684
    if-eqz p2, :cond_8

    .line 2685
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 2686
    .local v6, "oldDns":Ljava/net/InetAddress;
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v6}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_3

    .line 2689
    .end local v6    # "oldDns":Ljava/net/InetAddress;
    :cond_8
    if-eqz p1, :cond_b

    .line 2690
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 2691
    .local v5, "newDns":Ljava/net/InetAddress;
    move/from16 v0, p4

    invoke-direct {p0, p1, v5, v0}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    goto :goto_4

    .line 2696
    .end local v5    # "newDns":Ljava/net/InetAddress;
    :cond_9
    iget-object v11, v1, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 2697
    .restart local v6    # "oldDns":Ljava/net/InetAddress;
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v6}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_5

    .line 2699
    .end local v6    # "oldDns":Ljava/net/InetAddress;
    :cond_a
    iget-object v11, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 2700
    .restart local v5    # "newDns":Ljava/net/InetAddress;
    move/from16 v0, p4

    invoke-direct {p0, p1, v5, v0}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    goto :goto_6

    .line 2705
    .end local v5    # "newDns":Ljava/net/InetAddress;
    :cond_b
    iget-object v11, v8, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 2706
    .restart local v7    # "r":Landroid/net/RouteInfo;
    if-nez p3, :cond_c

    invoke-virtual {v7}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v11

    if-nez v11, :cond_d

    .line 2707
    :cond_c
    const/4 v11, 0x1

    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v11, v0}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z

    goto :goto_7

    .line 2710
    :cond_d
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, p1, v7, v11, v12}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z

    .line 2714
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 2715
    .local v4, "ifaceName":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2716
    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v11, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_e

    .line 2719
    :try_start_1
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v4, v7}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2725
    :cond_e
    :goto_8
    :try_start_2
    monitor-exit v12

    goto :goto_7

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 2720
    :catch_0
    move-exception v2

    .line 2722
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception trying to remove a route: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 2729
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "ifaceName":Ljava/lang/String;
    .end local v7    # "r":Landroid/net/RouteInfo;
    :cond_f
    return v9
.end method

.method private updateTcpDelayedAckSettings(Landroid/net/NetworkStateTracker;)V
    .locals 6
    .param p1, "nt"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 2851
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getTcpUserConfigPropName()Ljava/lang/String;

    move-result-object v1

    .line 2852
    .local v1, "key1":Ljava/lang/String;
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getTcpDelayedAckPropName()Ljava/lang/String;

    move-result-object v2

    .line 2854
    .local v2, "key2":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2855
    .local v3, "userCfg":Ljava/lang/String;
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2857
    .local v0, "delAck":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2858
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in system properties. Using defaults"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2861
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getDefaultTcpUserConfigPropName()Ljava/lang/String;

    move-result-object v1

    .line 2862
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2865
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2866
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in system properties. Using defaults"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2869
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getDefaultTcpDelayedAckPropName()Ljava/lang/String;

    move-result-object v2

    .line 2870
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2874
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2876
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting TCP values: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] which comes from ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2879
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->setUserConfig(Ljava/lang/String;)V

    .line 2882
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 2884
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting TCP values: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] which comes from ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2887
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setDelAckSize(Ljava/lang/String;)V

    .line 2889
    :cond_3
    return-void
.end method


# virtual methods
.method public captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 2433
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captivePortalCheckComplete: ni="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2435
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->captivePortalCheckComplete()V

    .line 2436
    return-void
.end method

.method public captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    .locals 2
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isCaptivePortal"    # Z

    .prologue
    .line 2441
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captivePortalCheckCompleted: ni="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " captive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2443
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->captivePortalCheckCompleted(Z)V

    .line 2444
    return-void
.end method

.method public checkMobileProvisioning(I)I
    .locals 10
    .param p1, "suggestedTimeOutMs"    # I

    .prologue
    .line 4229
    const/4 v3, -0x1

    .line 4230
    .local v3, "timeOutMs":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkMobileProvisioning: E suggestedTimeOutMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4231
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4235
    .local v4, "token":J
    move v3, p1

    .line 4236
    const v6, 0xea60

    if-le p1, v6, :cond_0

    .line 4237
    const v3, 0xea60

    .line 4241
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4243
    :cond_1
    const-string v6, "checkMobileProvisioning: X no mobile network"

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4327
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4328
    const-string v6, "checkMobileProvisioning: X"

    :goto_0
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4330
    return v3

    .line 4249
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4250
    const-string v6, "checkMobileProvisioning: X already checking ignore for the moment"

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4327
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4328
    const-string v6, "checkMobileProvisioning: X"

    goto :goto_0

    .line 4255
    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 4257
    new-instance v1, Lcom/android/server/ConnectivityService$CheckMp;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6, p0}, Lcom/android/server/ConnectivityService$CheckMp;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V

    .line 4258
    .local v1, "checkMp":Lcom/android/server/ConnectivityService$CheckMp;
    new-instance v0, Lcom/android/server/ConnectivityService$5;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$5;-><init>(Lcom/android/server/ConnectivityService;)V

    .line 4322
    .local v0, "cb":Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    new-instance v2, Lcom/android/server/ConnectivityService$CheckMp$Params;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$CheckMp;->getDefaultUrl()Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v3

    invoke-direct {v2, v6, v7, v8, v0}, Lcom/android/server/ConnectivityService$CheckMp$Params;-><init>(Ljava/lang/String;JLcom/android/server/ConnectivityService$CheckMp$CallBack;)V

    .line 4324
    .local v2, "params":Lcom/android/server/ConnectivityService$CheckMp$Params;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkMobileProvisioning: params="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4325
    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/server/ConnectivityService$CheckMp$Params;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v1, v6, v7}, Lcom/android/server/ConnectivityService$CheckMp;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4327
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4328
    const-string v6, "checkMobileProvisioning: X"

    goto :goto_0

    .line 4327
    .end local v0    # "cb":Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    .end local v1    # "checkMp":Lcom/android/server/ConnectivityService$CheckMp;
    .end local v2    # "params":Lcom/android/server/ConnectivityService$CheckMp$Params;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4328
    const-string v7, "checkMobileProvisioning: X"

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4327
    throw v6
.end method

.method protected convertFeatureToNetworkType(ILjava/lang/String;)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 3751
    move v0, p1

    .line 3753
    .local v0, "usedNetworkType":I
    if-nez p1, :cond_8

    .line 3754
    const-string v1, "enableMMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3755
    const/4 v0, 0x2

    .line 3781
    :goto_0
    return v0

    .line 3756
    :cond_0
    const-string v1, "enableSUPL"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3757
    const/4 v0, 0x3

    goto :goto_0

    .line 3758
    :cond_1
    const-string v1, "enableDUN"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "enableDUNAlways"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3760
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 3761
    :cond_3
    const-string v1, "enableHIPRI"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3762
    const/4 v0, 0x5

    goto :goto_0

    .line 3763
    :cond_4
    const-string v1, "enableFOTA"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3764
    const/16 v0, 0xa

    goto :goto_0

    .line 3765
    :cond_5
    const-string v1, "enableIMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3766
    const/16 v0, 0xb

    goto :goto_0

    .line 3767
    :cond_6
    const-string v1, "enableCBS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3768
    const/16 v0, 0xc

    goto :goto_0

    .line 3770
    :cond_7
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any mobile netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3772
    :cond_8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    .line 3773
    const-string v1, "p2p"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3774
    const/16 v0, 0xd

    goto :goto_0

    .line 3776
    :cond_9
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any wifi netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3779
    :cond_a
    const-string v1, "ConnectivityService"

    const-string v2, "Unexpected network type"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3073
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v12, "  "

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3074
    .local v10, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.DUMP"

    invoke-virtual {v12, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_1

    .line 3077
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3140
    :cond_0
    :goto_0
    return-void

    .line 3084
    :cond_1
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3085
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    array-length v12, v12

    if-ge v2, v12, :cond_4

    .line 3086
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v12, v2

    .line 3087
    .local v7, "nst":Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_3

    .line 3088
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkStateTracker for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3090
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3091
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Active network: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3094
    :cond_2
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3095
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3096
    invoke-virtual {v10, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3097
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3098
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3085
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3102
    .end local v7    # "nst":Landroid/net/NetworkStateTracker;
    :cond_4
    const-string v12, "Network Requester Pids:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3103
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3104
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v1, "arr$":[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_6

    aget v6, v1, v4

    .line 3105
    .local v6, "net":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3106
    .local v9, "pidString":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v12, v12, v6

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 3107
    .local v8, "pid":Ljava/lang/Integer;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3108
    goto :goto_3

    .line 3109
    .end local v8    # "pid":Ljava/lang/Integer;
    :cond_5
    invoke-virtual {v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3104
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_2

    .line 3111
    .end local v6    # "net":I
    .end local v9    # "pidString":Ljava/lang/String;
    :cond_6
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3112
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3114
    const-string v12, "FeatureUsers:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3115
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3116
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 3117
    .local v11, "requester":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3119
    .end local v11    # "requester":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3120
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3122
    monitor-enter p0

    .line 3123
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkTranstionWakeLock is currently "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, ""

    :goto_5
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "held."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3125
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "It was last requested for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3127
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3129
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p3

    invoke-virtual {v12, p1, v10, v0}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3131
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    .line 3132
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3133
    const-string v12, "Inet condition reports:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3134
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3135
    const/4 v2, 0x0

    :goto_6
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_9

    .line 3136
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3135
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3123
    :cond_8
    :try_start_1
    const-string v12, "not "

    goto :goto_5

    .line 3126
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 3138
    :cond_9
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_0
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 3862
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3863
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3864
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3865
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 3866
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findConnectionTypeForIface(Ljava/lang/String;)I
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 4123
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4134
    :cond_0
    :goto_0
    return v5

    .line 4126
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 4127
    .local v4, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_2

    .line 4128
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 4129
    .local v3, "lp":Landroid/net/LinkProperties;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4130
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    goto :goto_0

    .line 4126
    .end local v3    # "lp":Landroid/net/LinkProperties;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 1

    .prologue
    .line 1083
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .locals 2

    .prologue
    .line 5108
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 5109
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5110
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v0

    .line 5112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 974
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 975
    .local v0, "uid":I
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1031
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 1018
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1019
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v1, v2

    .line 1021
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1022
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1025
    .end local v0    # "tracker":Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 4

    .prologue
    .line 1128
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1132
    .local v1, "token":J
    :try_start_0
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1133
    .local v0, "state":Landroid/net/NetworkState;
    if-eqz v0, :cond_0

    .line 1135
    :try_start_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v3, v0}, Landroid/net/INetworkPolicyManager;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1141
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1139
    return-object v3

    .line 1136
    :catch_0
    move-exception v3

    .line 1139
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1141
    .end local v0    # "state":Landroid/net/NetworkState;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;
    .locals 7

    .prologue
    .line 5118
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 5119
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 5120
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkQualityInfo;>;"
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 5121
    .local v5, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_0

    .line 5122
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v3

    .line 5123
    .local v3, "li":Landroid/net/LinkQualityInfo;
    if-eqz v3, :cond_0

    .line 5124
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5120
    .end local v3    # "li":Landroid/net/LinkQualityInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5129
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/LinkQualityInfo;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/LinkQualityInfo;

    return-object v6
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 8

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1055
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1056
    .local v5, "uid":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1057
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1059
    .local v4, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    .line 1060
    invoke-direct {p0, v4, v5}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1063
    .end local v4    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/NetworkInfo;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/NetworkInfo;

    return-object v6

    .line 1063
    .end local v0    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .locals 11

    .prologue
    .line 1100
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1101
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1102
    .local v6, "uid":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1103
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 1105
    .local v5, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_0

    .line 1106
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1107
    .local v2, "info":Landroid/net/NetworkInfo;
    new-instance v7, Landroid/net/NetworkState;

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v10

    invoke-direct {v7, v2, v9, v10}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1111
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/NetworkState;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/NetworkState;

    return-object v7

    .line 1111
    .end local v0    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 3656
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3657
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    monitor-exit v1

    return-object v0

    .line 3658
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3379
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3381
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3382
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 3384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 3

    .prologue
    .line 3894
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3895
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3896
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3897
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 3898
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 1088
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1089
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1091
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1092
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1095
    .end local v0    # "tracker":Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 5098
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 5099
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5100
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v0

    .line 5102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1809
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1810
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1813
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 1810
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 5012
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5013
    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile(I)Ljava/lang/String;

    move-result-object v1

    .line 5014
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5015
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileProvisioningUrl: mobile_provisioining_url from resource ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5021
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5022
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 5023
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5024
    const-string v0, "0000000000"

    .line 5026
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5032
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 5018
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileProvisioningUrl: mobile_provisioning_url from File ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5002
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5003
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile(I)Ljava/lang/String;

    move-result-object v0

    .line 5004
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5005
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5007
    :cond_0
    return-object v0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 1036
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1037
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1038
    .local v0, "uid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkPreference()I
    .locals 2

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 848
    monitor-enter p0

    .line 849
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 850
    .local v0, "preference":I
    monitor-exit p0

    .line 851
    return v0

    .line 850
    .end local v0    # "preference":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 4

    .prologue
    .line 1006
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1008
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1009
    .local v0, "provNi":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 1010
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1011
    .local v1, "uid":I
    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v2, v1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1013
    .end local v1    # "uid":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProvisioningOrActiveNetworkInfo: X provNi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1014
    return-object v0
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .locals 3

    .prologue
    .line 3571
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3572
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 3573
    .local v0, "ret":Landroid/net/ProxyProperties;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 3574
    :cond_0
    monitor-exit v2

    return-object v0

    .line 3575
    .end local v0    # "ret":Landroid/net/ProxyProperties;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3408
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3409
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3410
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 3412
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3428
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3429
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3390
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3391
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3392
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 3394
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3399
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3400
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3401
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 3403
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3433
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3434
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3438
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3439
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 3

    .prologue
    .line 3909
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3910
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3911
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 3912
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isActiveNetworkMetered()Z
    .locals 3

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1150
    .local v0, "token":J
    :try_start_0
    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->isNetworkMeteredUnchecked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1152
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1150
    return v2

    .line 1152
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 1069
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1070
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTetheringSupported()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3446
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3447
    const-string v4, "ro.tether.denied"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 3448
    .local v0, "defaultVal":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_supported"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    .line 3450
    .local v1, "tetherEnabledInSettings":Z
    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceTypes()[I

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_3

    :goto_2
    return v3

    .end local v0    # "defaultVal":I
    .end local v1    # "tetherEnabledInSettings":Z
    :cond_1
    move v0, v3

    .line 3447
    goto :goto_0

    .restart local v0    # "defaultVal":I
    :cond_2
    move v1, v2

    .line 3448
    goto :goto_1

    .restart local v1    # "tetherEnabledInSettings":Z
    :cond_3
    move v3, v2

    .line 3450
    goto :goto_2
.end method

.method public markSocketAsUser(Landroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "uid"    # I

    .prologue
    .line 3838
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceMarkNetworkSocketPermission()V

    .line 3839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3841
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p2}, Landroid/os/INetworkManagementService;->getMarkForUid(I)I

    move-result v0

    .line 3843
    .local v0, "mark":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 3844
    const/4 v0, 0x0

    .line 3846
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v3, v0}, Landroid/net/NetworkUtils;->markSocket(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3849
    .end local v0    # "mark":I
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3851
    return-void

    .line 3849
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3847
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    .line 3829
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3830
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3831
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3832
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 3833
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public protectVpn(Landroid/os/ParcelFileDescriptor;)Z
    .locals 4
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 3799
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3801
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 3802
    .local v0, "type":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3803
    .local v1, "user":I
    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 3804
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3805
    :try_start_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->protect(Landroid/os/ParcelFileDescriptor;)V

    .line 3806
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3807
    const/4 v2, 0x1

    .line 3813
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 3818
    .end local v0    # "type":I
    .end local v1    # "user":I
    :goto_0
    return v2

    .line 3806
    .restart local v0    # "type":I
    .restart local v1    # "user":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3809
    .end local v0    # "type":I
    .end local v1    # "user":I
    :catch_0
    move-exception v2

    .line 3813
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 3818
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3812
    :catchall_1
    move-exception v2

    .line 3813
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3812
    :goto_2
    throw v2

    .line 3814
    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    .restart local v0    # "type":I
    .restart local v1    # "user":I
    :catch_3
    move-exception v3

    goto :goto_0

    .line 3813
    :cond_0
    :try_start_7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public reportInetCondition(II)V
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .prologue
    .line 3478
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.STATUS_BAR"

    const-string v5, "ConnectivityService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3483
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    .line 3484
    .local v0, "pid":I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 3485
    .local v2, "uid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reports inet is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x32

    if-le p2, v3, :cond_0

    const-string v3, "connected"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "network Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3488
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3489
    :goto_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_1

    .line 3490
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3485
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    const-string v3, "disconnected"

    goto :goto_0

    .line 3493
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3495
    return-void
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)V
    .locals 5
    .param p1, "forWhom"    # Ljava/lang/String;

    .prologue
    .line 3461
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3462
    monitor-enter p0

    .line 3463
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 3472
    :goto_0
    return-void

    .line 3464
    :cond_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    .line 3465
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3466
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 3467
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3468
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x8

    iget v3, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3467
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestRouteToHost(IILjava/lang/String;)Z
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1587
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1589
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 1590
    const/4 v1, 0x0

    .line 1593
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/ConnectivityService;->requestRouteToHostAddress(I[BLjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public requestRouteToHostAddress(I[BLjava/lang/String;)Z
    .locals 12
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # [B
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1607
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1608
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1609
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1614
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1620
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_1

    .line 1621
    const/4 v2, 0x1

    .line 1636
    .local v2, "exempt":Z
    :goto_0
    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isAddressUnderVpn(Ljava/net/InetAddress;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1637
    const/4 v6, 0x0

    .line 1665
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "exempt":Z
    :goto_1
    return v6

    .line 1615
    :catch_0
    move-exception v1

    .line 1616
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestRouteToHostAddress got "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1617
    const/4 v6, 0x0

    goto :goto_1

    .line 1623
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    :cond_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1625
    :try_start_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, p3, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1627
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget v10, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    const/4 v2, 0x1

    .restart local v2    # "exempt":Z
    :goto_2
    goto :goto_0

    .end local v2    # "exempt":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 1628
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v1

    .line 1629
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Failed to find calling package details"

    invoke-direct {v10, v11, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 1640
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "exempt":Z
    :cond_3
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1641
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1642
    const/4 v6, 0x0

    goto :goto_1

    .line 1644
    :cond_4
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v9, v10, p1

    .line 1645
    .local v9, "tracker":Landroid/net/NetworkStateTracker;
    invoke-interface {v9}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    .line 1647
    .local v5, "netState":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v9, :cond_6

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v10, :cond_5

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v10, :cond_6

    :cond_5
    invoke-interface {v9}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1658
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 1660
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1662
    .local v7, "token":J
    :try_start_2
    invoke-interface {v9}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 1663
    .local v4, "lp":Landroid/net/LinkProperties;
    invoke-direct {p0, v4, v0, v2}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    move-result v6

    .line 1664
    .local v6, "ok":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestRouteToHostAddress ok="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1667
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .end local v4    # "lp":Landroid/net/LinkProperties;
    .end local v6    # "ok":Z
    :catchall_0
    move-exception v10

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 2133
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2134
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2135
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2136
    return-void
.end method

.method public setAirplaneMode(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 5044
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5047
    .local v1, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5048
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v5, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5049
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5050
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "state"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5051
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5053
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5055
    return-void

    .line 5048
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 5053
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected setAlarm(ILandroid/app/PendingIntent;)V
    .locals 6
    .param p1, "timeoutInMilliseconds"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 5185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 5186
    .local v0, "wakeupTime":J
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 5187
    return-void
.end method

.method public setDataDependency(IZ)V
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "met"    # Z

    .prologue
    .line 1817
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1819
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0xa

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1821
    return-void

    .line 1819
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .locals 10
    .param p1, "proxyProperties"    # Landroid/net/ProxyProperties;

    .prologue
    .line 3579
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3581
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3582
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-ne p1, v7, :cond_0

    monitor-exit v8

    .line 3624
    :goto_0
    return-void

    .line 3583
    :cond_0
    if-eqz p1, :cond_1

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v7}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    monitor-exit v8

    goto :goto_0

    .line 3618
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3584
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    monitor-exit v8

    goto :goto_0

    .line 3586
    :cond_2
    const-string v1, ""

    .line 3587
    .local v1, "host":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3588
    .local v3, "port":I
    const-string v0, ""

    .line 3589
    .local v0, "exclList":Ljava/lang/String;
    const-string v2, ""

    .line 3590
    .local v2, "pacFileUrl":Ljava/lang/String;
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 3592
    :cond_3
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->isValid()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3594
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid proxy properties, ignoring: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3595
    monitor-exit v8

    goto :goto_0

    .line 3597
    :cond_4
    new-instance v7, Landroid/net/ProxyProperties;

    invoke-direct {v7, p1}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    iput-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 3598
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 3599
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    .line 3600
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    .line 3601
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 3602
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    .line 3607
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3608
    .local v4, "res":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v5

    .line 3610
    .local v5, "token":J
    :try_start_2
    const-string v7, "global_http_proxy_host"

    invoke-static {v4, v7, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3611
    const-string v7, "global_http_proxy_port"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3612
    const-string v7, "global_http_proxy_exclusion_list"

    invoke-static {v4, v7, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3614
    const-string v7, "global_proxy_pac_url"

    invoke-static {v4, v7, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3616
    :try_start_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3618
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3620
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-nez v7, :cond_6

    .line 3621
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 3623
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    goto/16 :goto_0

    .line 3605
    .end local v4    # "res":Landroid/content/ContentResolver;
    .end local v5    # "token":J
    :cond_7
    const/4 v7, 0x0

    :try_start_4
    iput-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    goto :goto_1

    .line 3616
    .restart local v4    # "res":Landroid/content/ContentResolver;
    .restart local v5    # "token":J
    :catchall_1
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setMobileDataEnabled(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1892
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMobileDataEnabled("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1895
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1896
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1897
    .local v1, "callingUid":I
    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1904
    :goto_0
    return-void

    .line 1902
    :cond_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/4 v6, 0x7

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public setNetworkPreference(I)V
    .locals 4
    .param p1, "preference"    # I

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 841
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 843
    return-void
.end method

.method public setPolicyDataEnable(IZ)V
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0xc

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, p1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1928
    return-void

    .line 1926
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 5038
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5039
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 5040
    return-void
.end method

.method public setRadio(IZ)Z
    .locals 3
    .param p1, "netType"    # I
    .param p2, "turnOn"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1177
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1178
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return v1

    .line 1181
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, p1

    .line 1182
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 6
    .param p1, "turnOn"    # Z

    .prologue
    .line 1168
    const/4 v3, 0x1

    .line 1169
    .local v3, "result":Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1170
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 1171
    .local v4, "t":Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 1170
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1171
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1173
    .end local v4    # "t":Landroid/net/NetworkStateTracker;
    :cond_2
    return v3
.end method

.method public setUsbTethering(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 3417
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 3418
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3419
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    .line 3421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method showLogin(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ssid"    # Ljava/lang/String;

    .prologue
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v2, "com.miui.action.OPEN_WIFI_LOGIN"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "miui.intent.extra.OPEN_WIFI_SSID"

    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "miui.intent.extra.BSSID"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 3875
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3876
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 3877
    .local v0, "egress":Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    .line 3878
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing active network connection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3880
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3881
    .local v1, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 3882
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V

    .line 3883
    monitor-exit v3

    .line 3884
    return-void

    .line 3883
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/MultiSimManager;->getPreferredDataSlotId()I

    move-result v0

    .local v0, "slotId":I
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/ConnectivityService;->processUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;I)I

    move-result v1

    return v1
.end method

.method public startUsingNetworkFeatureMSim(ILjava/lang/String;Landroid/os/IBinder;I)I
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "slotId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->processUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;I)I

    move-result v0

    return v0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/MultiSimManager;->getPreferredDataSlotId()I

    move-result v0

    .local v0, "slotId":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->processStopUsingNetworkFeature(ILjava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public stopUsingNetworkFeatureMSim(ILjava/lang/String;I)I
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->processStopUsingNetworkFeature(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private processUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;I)I
    .locals 25
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, -0x1

    move/from16 v0, p4

    if-le v0, v3, :cond_miui_0

    const/4 v3, 0x3

    move/from16 v0, p4

    if-le v0, v3, :cond_miui_1

    :cond_miui_0
    const/4 v3, 0x3

    return v3

    :cond_miui_1
    const-wide/16 v14, 0x0

    .local v14, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v21, v0

    aget-object v21, v21, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v21, :cond_2

    .line 1279
    :cond_0
    const/16 v21, 0x3

    .line 1402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1403
    .local v6, "execTime":J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1404
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_0
    invoke-static/range {v22 .. v22}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1399
    :cond_1
    return v21

    .line 1282
    .end local v6    # "execTime":J
    :cond_2
    :try_start_1
    new-instance v8, Lcom/android/server/ConnectivityService$FeatureUser;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$FeatureUser;-><init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/android/server/ConnectivityService$FeatureUser;->setSlotId(I)V

    .line 1285
    .local v8, "f":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v20

    .line 1287
    .local v20, "usedNetworkType":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    move/from16 v21, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v21, :cond_3

    .line 1290
    const/16 v21, 0x2

    .line 1402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1403
    .restart local v6    # "execTime":J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1404
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_0

    .line 1293
    .end local v6    # "execTime":J
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1294
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1298
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->isNetworkMeteredUnchecked(I)Z

    move-result v11

    .line 1300
    .local v11, "networkMetered":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1301
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v19

    .line 1302
    .local v19, "uidRules":I
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1303
    if-eqz v11, :cond_6

    and-int/lit8 v21, v19, 0x1

    if-eqz v21, :cond_6

    .line 1304
    const/16 v21, 0x3

    .line 1402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1403
    .restart local v6    # "execTime":J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1404
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1302
    .end local v6    # "execTime":J
    .end local v19    # "uidRules":I
    :catchall_0
    move-exception v21

    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1401
    .end local v8    # "f":Lcom/android/server/ConnectivityService$FeatureUser;
    .end local v11    # "networkMetered":Z
    .end local v20    # "usedNetworkType":I
    :catchall_1
    move-exception v21

    .line 1402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1403
    .restart local v6    # "execTime":J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_5

    .line 1404
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1401
    :cond_5
    throw v21

    .line 1307
    .end local v6    # "execTime":J
    .restart local v8    # "f":Lcom/android/server/ConnectivityService$FeatureUser;
    .restart local v11    # "networkMetered":Z
    .restart local v19    # "uidRules":I
    .restart local v20    # "usedNetworkType":I
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v21, v0

    aget-object v10, v21, v20

    .line 1308
    .local v10, "network":Landroid/net/NetworkStateTracker;
    if-eqz v10, :cond_13

    .line 1309
    new-instance v5, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1310
    .local v5, "currentPid":Ljava/lang/Integer;
    move/from16 v0, v20

    move/from16 v1, p1

    if-eq v0, v1, :cond_11

    .line 1311
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 1313
    .local v12, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v21

    if-nez v21, :cond_8

    .line 1314
    const-string v21, "enableDUNAlways"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 1315
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "special network not available ni="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1316
    const/16 v21, 0x2

    .line 1402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1403
    .restart local v6    # "execTime":J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1404
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1320
    .end local v6    # "execTime":J
    :cond_7
    :try_start_7
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "special network not available, but try anyway ni="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1326
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay(I)I

    move-result v13

    .line 1328
    .local v13, "restoreTimer":I
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1329
    const/4 v4, 0x1

    .line 1330
    .local v4, "addToList":Z
    if-gez v13, :cond_a

    .line 1333
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1334
    .local v18, "u":Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1336
    const/4 v4, 0x0

    .line 1342
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v18    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_a
    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1343
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v21, v21, v20

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v21, v21, v20

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    :cond_c
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1349
    if-ltz v13, :cond_d

    .line 1350
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    int-to-long v0, v13

    move-wide/from16 v23, v0

    invoke-virtual/range {v21 .. v24}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1354
    :cond_d
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v21

    if-nez v21, :cond_f

    .line 1356
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 1357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-wide v16

    .line 1360
    .local v16, "token":J
    :try_start_a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1363
    :try_start_b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1365
    const/16 v21, 0x0

    .line 1402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1403
    .restart local v6    # "execTime":J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1404
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1347
    .end local v6    # "execTime":J
    .end local v16    # "token":J
    :catchall_2
    move-exception v21

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v21

    .line 1363
    .restart local v16    # "token":J
    :catchall_3
    move-exception v21

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1368
    .end local v16    # "token":J
    :cond_e
    const/16 v21, 0x1

    .line 1402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1403
    .restart local v6    # "execTime":J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1404
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1375
    .end local v6    # "execTime":J
    :cond_f
    :try_start_e
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "startUsingNetworkFeature reconnecting to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1378
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1379
    const-string v21, "startUsingNetworkFeature X: return APN_REQUEST_STARTED"

    invoke-static/range {v21 .. v21}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1380
    const/16 v21, 0x1

    .line 1402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1403
    .restart local v6    # "execTime":J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1404
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1382
    .end local v6    # "execTime":J
    :cond_10
    :try_start_f
    const-string v21, "startUsingNetworkFeature X: return APN_REQUEST_FAILED"

    invoke-static/range {v21 .. v21}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1383
    const/16 v21, 0x3

    .line 1402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1403
    .restart local v6    # "execTime":J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1404
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1387
    .end local v4    # "addToList":Z
    .end local v6    # "execTime":J
    .end local v12    # "ni":Landroid/net/NetworkInfo;
    .end local v13    # "restoreTimer":I
    :cond_11
    :try_start_10
    monitor-enter p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1388
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v21, v21, v20

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v21, v21, v20

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1393
    :cond_12
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1394
    :try_start_12
    const-string v21, "startUsingNetworkFeature X: return -1 unsupported feature."

    invoke-static/range {v21 .. v21}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1395
    const/16 v21, -0x1

    .line 1402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1403
    .restart local v6    # "execTime":J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1404
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 1393
    .end local v6    # "execTime":J
    :catchall_4
    move-exception v21

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw v21

    .line 1398
    .end local v5    # "currentPid":Ljava/lang/Integer;
    :cond_13
    const-string v21, "startUsingNetworkFeature X: return APN_TYPE_NOT_AVAILABLE"

    invoke-static/range {v21 .. v21}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1399
    const/16 v21, 0x2

    .line 1402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1403
    .restart local v6    # "execTime":J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1404
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0
.end method

.method private processStopUsingNetworkFeature(ILjava/lang/String;I)I
    .locals 8
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-le p3, v3, :cond_miui_0

    if-le p3, v1, :cond_miui_1

    :cond_miui_0
    return v1

    :cond_miui_1
    const/4 v6, 0x1

    .line 1414
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1416
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v2

    .line 1417
    .local v2, "pid":I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v4

    .line 1419
    .local v4, "uid":I
    const/4 v3, 0x0

    .line 1420
    .local v3, "u":Lcom/android/server/ConnectivityService$FeatureUser;
    const/4 v0, 0x0

    .line 1422
    .local v0, "found":Z
    monitor-enter p0

    .line 1423
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1424
    .local v5, "x":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v5, v2, v4, p1, p2}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v3, v5

    const/4 v0, 0x1

    .end local v5    # "x":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    invoke-direct {p0, v3, v6, p3}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;ZI)I

    move-result v6

    :cond_2
    return v6

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public supplyMessenger(ILandroid/os/Messenger;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 4115
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4117
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 4118
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->supplyMessenger(Landroid/os/Messenger;)V

    .line 4120
    :cond_0
    return-void
.end method

.method protected systemReady()V
    .locals 4

    .prologue
    .line 2285
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/net/CaptivePortalTracker;->makeCaptivePortalTracker(Landroid/content/Context;Landroid/net/IConnectivityManager;)Landroid/net/CaptivePortalTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;

    .line 2286
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->loadGlobalProxy()V

    .line 2288
    monitor-enter p0

    .line 2289
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 2290
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 2291
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2292
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2294
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2296
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2300
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2301
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2302
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2304
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void

    .line 2294
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3357
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 3359
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3360
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 3362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3368
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 3370
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3371
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 3373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected updateBlockedUids(IZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    .line 4139
    :try_start_0
    const-string v3, "alarm"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService;

    .line 4141
    .local v1, "mAlarmMgrSvc":Lcom/android/server/AlarmManagerService;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/AlarmManagerService;->updateBlockedUids(IZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4146
    .end local v1    # "mAlarmMgrSvc":Lcom/android/server/AlarmManagerService;
    :goto_0
    :try_start_1
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    .line 4148
    .local v2, "mPowerMgrSvc":Lcom/android/server/power/PowerManagerService;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateBlockedUids(IZ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4152
    .end local v2    # "mPowerMgrSvc":Lcom/android/server/power/PowerManagerService;
    :goto_1
    return-void

    .line 4142
    :catch_0
    move-exception v0

    .line 4143
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could Not Update blocked Uids with alarmManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4149
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4150
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could Not Update blocked Uids with powerManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateLockdownVpn()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 4054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 4055
    const-string v1, "ConnectivityService"

    const-string v2, "Lockdown VPN only available to AID_SYSTEM"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    :goto_0
    return v0

    .line 4060
    :cond_0
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 4061
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v1, :cond_2

    .line 4062
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4063
    const-string v1, "ConnectivityService"

    const-string v2, "KeyStore locked; unable to create LockdownTracker"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4067
    :cond_1
    new-instance v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 4068
    .local v6, "profileName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 4070
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4071
    .local v7, "user":I
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v8

    .line 4072
    :try_start_0
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 4074
    monitor-exit v8

    .line 4079
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4074
    .restart local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v7    # "user":I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4076
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    goto :goto_1
.end method

.method static synthetic access_stopUsingNetworkFeature(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;ZI)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$FeatureUser;
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;ZI)I

    move-result v0

    return v0
.end method
