.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "config"
    .parameter "racoon"
    .parameter "mtpd"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 911
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 912
    const-string v2, "LegacyVpnRunner"

    invoke-direct {p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 883
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 886
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 891
    new-instance v2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 913
    #setter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->access$802(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    .line 914
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "racoon"

    aput-object v3, v2, v4

    const-string v3, "mtpd"

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 916
    new-array v2, v7, [[Ljava/lang/String;

    aput-object p3, v2, v4

    aput-object p4, v2, v6

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 917
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/net/LocalSocket;

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 925
    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 928
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    #getter for: Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$1800(Lcom/android/server/connectivity/Vpn;)Landroid/net/IConnectivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->findConnectionTypeForIface(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 935
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 936
    #getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$1900(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 937
    return-void

    .line 930
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 931
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method private checkpoint(Z)V
    .locals 8
    .parameter "yield"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 970
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 971
    .local v0, now:J
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 972
    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 973
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 980
    :goto_0
    return-void

    .line 974
    :cond_0
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 975
    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc8

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 977
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 978
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private execute()V
    .locals 34

    .prologue
    .line 984
    const/16 v16, 0x0

    .line 987
    .local v16, initFinished:Z
    const/16 v29, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 990
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v7, arr$:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    aget-object v10, v7, v14

    .line 991
    .local v10, daemon:Ljava/lang/String;
    :goto_1
    invoke-static {v10}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 992
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1184
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #daemon:Ljava/lang/String;
    .end local v14           #i$:I
    .end local v17           #len$:I
    :catch_0
    move-exception v12

    .line 1185
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    const-string v29, "LegacyVpnRunner"

    const-string v30, "Aborting"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1188
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v30 .. v30}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1191
    :goto_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1194
    if-nez v16, :cond_1e

    .line 1195
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v7       #arr$:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    .restart local v17       #len$:I
    const/4 v14, 0x0

    .restart local v14       #i$:I
    :goto_3
    move/from16 v0, v17

    if-ge v14, v0, :cond_1e

    aget-object v10, v7, v14

    .line 1196
    .restart local v10       #daemon:Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1195
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 990
    .end local v12           #e:Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 997
    .end local v10           #daemon:Ljava/lang/String;
    :cond_1
    :try_start_4
    new-instance v25, Ljava/io/File;

    const-string v29, "/data/misc/vpn/state"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 998
    .local v25, state:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 999
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1000
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string v30, "Cannot delete the state"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1194
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v17           #len$:I
    .end local v25           #state:Ljava/io/File;
    :catchall_0
    move-exception v29

    if-nez v16, :cond_1b

    .line 1195
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v7       #arr$:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    .restart local v17       #len$:I
    const/4 v14, 0x0

    .restart local v14       #i$:I
    :goto_4
    move/from16 v0, v17

    if-ge v14, v0, :cond_1b

    aget-object v10, v7, v14

    .line 1196
    .restart local v10       #daemon:Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1195
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1002
    .end local v10           #daemon:Ljava/lang/String;
    .restart local v25       #state:Ljava/io/File;
    :cond_2
    :try_start_5
    new-instance v29, Ljava/io/File;

    const-string v30, "/data/misc/vpn/abort"

    invoke-direct/range {v29 .. v30}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->delete()Z

    .line 1003
    const/16 v16, 0x1

    .line 1006
    const/16 v21, 0x0

    .line 1007
    .local v21, restart:Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .local v7, arr$:[[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v17

    if-ge v14, v0, :cond_5

    aget-object v6, v7, v14

    .line 1008
    .local v6, arguments:[Ljava/lang/String;
    if-nez v21, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    const/16 v21, 0x1

    .line 1007
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1008
    :cond_4
    const/16 v21, 0x0

    goto :goto_6

    .line 1010
    .end local v6           #arguments:[Ljava/lang/String;
    :cond_5
    if-nez v21, :cond_6

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v31, "execute"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v29 .. v31}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1194
    if-nez v16, :cond_21

    .line 1195
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v7, arr$:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_7
    move/from16 v0, v17

    if-ge v14, v0, :cond_21

    aget-object v10, v7, v14

    .line 1196
    .restart local v10       #daemon:Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1195
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 1014
    .end local v10           #daemon:Ljava/lang/String;
    .local v7, arr$:[[Ljava/lang/String;
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v31, "execute"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v29 .. v31}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1017
    const/4 v13, 0x0

    .end local v7           #arr$:[[Ljava/lang/String;
    .local v13, i:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v13, v0, :cond_d

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v29, v0

    aget-object v6, v29, v13

    .line 1019
    .restart local v6       #arguments:[Ljava/lang/String;
    if-nez v6, :cond_8

    .line 1017
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 1024
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v29, v0

    aget-object v10, v29, v13

    .line 1025
    .restart local v10       #daemon:Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1028
    :goto_9
    invoke-static {v10}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_9

    .line 1029
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_9

    .line 1033
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v29, v0

    new-instance v30, Landroid/net/LocalSocket;

    invoke-direct/range {v30 .. v30}, Landroid/net/LocalSocket;-><init>()V

    aput-object v30, v29, v13

    .line 1034
    new-instance v4, Landroid/net/LocalSocketAddress;

    sget-object v29, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v29

    invoke-direct {v4, v10, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1040
    .local v4, address:Landroid/net/LocalSocketAddress;
    :goto_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v29, v0

    aget-object v29, v29, v13

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1047
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v29, v0

    aget-object v29, v29, v13

    const/16 v30, 0x1f4

    invoke-virtual/range {v29 .. v30}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v29, v0

    aget-object v29, v29, v13

    invoke-virtual/range {v29 .. v29}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    .line 1051
    .local v19, out:Ljava/io/OutputStream;
    move-object v7, v6

    .local v7, arr$:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_b
    move/from16 v0, v17

    if-ge v14, v0, :cond_b

    aget-object v5, v7, v14

    .line 1052
    .local v5, argument:Ljava/lang/String;
    sget-object v29, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 1053
    .local v9, bytes:[B
    array-length v0, v9

    move/from16 v29, v0

    const v30, 0xffff

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_a

    .line 1054
    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string v30, "Argument is too large"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1042
    .end local v5           #argument:Ljava/lang/String;
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v9           #bytes:[B
    .end local v19           #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v29

    .line 1045
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_a

    .line 1056
    .restart local v5       #argument:Ljava/lang/String;
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v9       #bytes:[B
    .restart local v19       #out:Ljava/io/OutputStream;
    :cond_a
    array-length v0, v9

    move/from16 v29, v0

    shr-int/lit8 v29, v29, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1057
    array-length v0, v9

    move/from16 v29, v0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1058
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 1059
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1051
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 1061
    .end local v5           #argument:Ljava/lang/String;
    .end local v9           #bytes:[B
    :cond_b
    const/16 v29, 0xff

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1062
    const/16 v29, 0xff

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1063
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v29, v0

    aget-object v29, v29, v13

    invoke-virtual/range {v29 .. v29}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v15

    .line 1069
    .local v15, in:Ljava/io/InputStream;
    :goto_c
    :try_start_9
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_7

    .line 1075
    :goto_d
    const/16 v29, 0x1

    :try_start_a
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_c

    .line 1088
    .end local v4           #address:Landroid/net/LocalSocketAddress;
    .end local v6           #arguments:[Ljava/lang/String;
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #daemon:Ljava/lang/String;
    .end local v15           #in:Ljava/io/InputStream;
    .end local v19           #out:Ljava/io/OutputStream;
    :cond_c
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1080
    :cond_d
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_f

    .line 1082
    const/4 v13, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v13, v0, :cond_c

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v29, v0

    aget-object v10, v29, v13

    .line 1084
    .restart local v10       #daemon:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v29, v0

    aget-object v29, v29, v13

    if-eqz v29, :cond_e

    invoke-static {v10}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 1085
    new-instance v29, Ljava/lang/IllegalStateException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " is dead"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1082
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 1092
    .end local v10           #daemon:Ljava/lang/String;
    :cond_f
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "\n"

    const/16 v31, -0x1

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v20

    .line 1093
    .local v20, parameters:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_10

    .line 1094
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string v30, "Cannot parse the state"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1098
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    const/16 v30, 0x0

    aget-object v30, v20, v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    const/16 v30, 0x1

    aget-object v30, v20, v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v29, v0

    if-eqz v29, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_12

    .line 1103
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    const/16 v30, 0x2

    aget-object v30, v20, v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1107
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v29, v0

    if-eqz v29, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    if-nez v29, :cond_14

    .line 1108
    :cond_13
    const/16 v29, 0x3

    aget-object v29, v20, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1109
    .local v11, dnsServers:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_14

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    const-string v30, " "

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1115
    .end local v11           #dnsServers:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v29, v0

    if-eqz v29, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    if-nez v29, :cond_16

    .line 1116
    :cond_15
    const/16 v29, 0x4

    aget-object v29, v20, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 1117
    .local v23, searchDomains:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_16

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    const-string v30, " "

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1123
    .end local v23           #searchDomains:Ljava/lang/String;
    :cond_16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    .local v8, builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_17

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/RouteInfo;

    .line 1125
    .local v22, route:Landroid/net/RouteInfo;
    invoke-virtual/range {v22 .. v22}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "->"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 1126
    .local v24, split:[Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x0

    aget-object v30, v24, v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1128
    .end local v22           #route:Landroid/net/RouteInfo;
    .end local v24           #split:[Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v30 .. v30}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    #calls: Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v29 .. v31}, Lcom/android/server/connectivity/Vpn;->access$2100(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-result-wide v26

    .line 1132
    .local v26, token:J
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v30 .. v30}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/ConnectivityService$VpnCallback;->setMarkedForwarding(Ljava/lang/String;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v30 .. v30}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v31, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v31 .. v31}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Lcom/android/server/ConnectivityService$VpnCallback;->setRoutes(Ljava/lang/String;Ljava/util/List;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1135
    :try_start_c
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v30, v0

    monitor-enter v30
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 1141
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1144
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v31, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v31 .. v31}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    #calls: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_18

    .line 1148
    new-instance v29, Ljava/lang/IllegalStateException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v32, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v32 .. v32}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " is gone"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1183
    :catchall_1
    move-exception v29

    monitor-exit v30
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v29

    .line 1135
    :catchall_2
    move-exception v29

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v29
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 1152
    :cond_18
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v31, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v31 .. v31}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    #setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    new-instance v31, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v31 .. v31}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    #setter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$702(Lcom/android/server/connectivity/Vpn;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;

    .line 1155
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-wide v26

    .line 1157
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v31, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v32, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v32 .. v32}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v33, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v33 .. v33}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v31, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mUserId:I
    invoke-static/range {v31 .. v31}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)I

    move-result v31

    move-object/from16 v0, v29

    move/from16 v1, v31

    #calls: Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1160
    :try_start_11
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v18

    .line 1166
    .local v18, mgr:Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-result-wide v26

    .line 1168
    :try_start_12
    invoke-virtual/range {v18 .. v18}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_19
    :goto_10
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/UserInfo;

    .line 1169
    .local v28, user:Landroid/content/pm/UserInfo;
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-result v29

    if-eqz v29, :cond_19

    .line 1171
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    #calls: Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto :goto_10

    .line 1172
    :catch_2
    move-exception v12

    .line 1173
    .restart local v12       #e:Ljava/lang/Exception;
    :try_start_14
    const-string v29, "LegacyVpnRunner"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Failed to add user "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " to owner\'s VPN"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_10

    .line 1179
    .end local v12           #e:Ljava/lang/Exception;
    .end local v28           #user:Landroid/content/pm/UserInfo;
    :catchall_3
    move-exception v29

    :try_start_15
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v29

    .line 1160
    .end local v18           #mgr:Landroid/os/UserManager;
    :catchall_4
    move-exception v29

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v29

    .line 1179
    .restart local v18       #mgr:Landroid/os/UserManager;
    :cond_1a
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1181
    const-string v29, "LegacyVpnRunner"

    const-string v31, "Connected!"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v32, "execute"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1183
    monitor-exit v30
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1194
    if-nez v16, :cond_23

    .line 1195
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v7       #arr$:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/4 v14, 0x0

    .local v14, i$:I
    :goto_11
    move/from16 v0, v17

    if-ge v14, v0, :cond_23

    aget-object v10, v7, v14

    .line 1196
    .restart local v10       #daemon:Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1195
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    .line 1201
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v8           #builder:Ljava/lang/StringBuilder;
    .end local v10           #daemon:Ljava/lang/String;
    .end local v13           #i:I
    .end local v14           #i$:I
    .end local v17           #len$:I
    .end local v18           #mgr:Landroid/os/UserManager;
    .end local v20           #parameters:[Ljava/lang/String;
    .end local v21           #restart:Z
    .end local v25           #state:Ljava/io/File;
    .end local v26           #token:J
    :cond_1b
    if-eqz v16, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v30 .. v30}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_1d

    .line 1202
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v30, v0

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v32, "execute"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v30 .. v32}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1194
    :cond_1d
    throw v29

    .line 1072
    .restart local v4       #address:Landroid/net/LocalSocketAddress;
    .restart local v6       #arguments:[Ljava/lang/String;
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v10       #daemon:Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v14       #i$:I
    .restart local v15       #in:Ljava/io/InputStream;
    .restart local v17       #len$:I
    .restart local v19       #out:Ljava/io/OutputStream;
    .restart local v21       #restart:Z
    .restart local v25       #state:Ljava/io/File;
    :catch_3
    move-exception v29

    goto/16 :goto_d

    .line 1201
    .end local v4           #address:Landroid/net/LocalSocketAddress;
    .end local v6           #arguments:[Ljava/lang/String;
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #daemon:Ljava/lang/String;
    .end local v13           #i:I
    .end local v14           #i$:I
    .end local v15           #in:Ljava/io/InputStream;
    .end local v17           #len$:I
    .end local v19           #out:Ljava/io/OutputStream;
    .end local v21           #restart:Z
    .end local v25           #state:Ljava/io/File;
    .restart local v12       #e:Ljava/lang/Exception;
    :cond_1e
    if-eqz v16, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_20

    .line 1202
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v31, "execute"

    .end local v12           #e:Ljava/lang/Exception;
    :goto_12
    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v29 .. v31}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1205
    :cond_20
    return-void

    .line 1201
    .restart local v14       #i$:I
    .restart local v17       #len$:I
    .restart local v21       #restart:Z
    .restart local v25       #state:Ljava/io/File;
    :cond_21
    if-eqz v16, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_20

    .line 1202
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v31, "execute"

    goto :goto_12

    .line 1201
    .end local v14           #i$:I
    .restart local v8       #builder:Ljava/lang/StringBuilder;
    .restart local v13       #i:I
    .restart local v18       #mgr:Landroid/os/UserManager;
    .restart local v20       #parameters:[Ljava/lang/String;
    .restart local v26       #token:J
    :cond_23
    if-eqz v16, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_20

    .line 1202
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v31, "execute"

    goto :goto_12

    .line 1189
    .end local v8           #builder:Ljava/lang/StringBuilder;
    .end local v13           #i:I
    .end local v17           #len$:I
    .end local v18           #mgr:Landroid/os/UserManager;
    .end local v20           #parameters:[Ljava/lang/String;
    .end local v21           #restart:Z
    .end local v25           #state:Ljava/io/File;
    .end local v26           #token:J
    .restart local v12       #e:Ljava/lang/Exception;
    :catch_4
    move-exception v29

    goto/16 :goto_2
.end method

.method private monitorDaemons()V
    .locals 10

    .prologue
    .line 1212
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1234
    :goto_0
    return-void

    .line 1218
    :cond_0
    const-wide/16 v6, 0x7d0

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 1219
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 1220
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v3

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-static {v6}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v1, v0, v4

    .line 1229
    .local v1, daemon:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1228
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1219
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #daemon:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1225
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 1226
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v6, "LegacyVpnRunner"

    const-string v7, "interrupted during monitorDaemons(); stopping services"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1228
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 1229
    .restart local v1       #daemon:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1228
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1232
    .end local v1           #daemon:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_2
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v9, "babysit"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1228
    throw v6

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catchall_0
    move-exception v6

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_4
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 1229
    .restart local v1       #daemon:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1228
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1232
    .end local v1           #daemon:Ljava/lang/String;
    .restart local v2       #e:Ljava/lang/InterruptedException;
    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v8, "babysit"

    .end local v2           #e:Ljava/lang/InterruptedException;
    :goto_5
    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .restart local v3       #i:I
    :cond_4
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v8, "babysit"

    goto :goto_5
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 3
    .parameter "interfaze"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    const-string v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 944
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 7

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 949
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .local v0, arr$:[Landroid/net/LocalSocket;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 950
    .local v3, socket:Landroid/net/LocalSocket;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 949
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 952
    .end local v3           #socket:Landroid/net/LocalSocket;
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v6, "exit"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 954
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_1
    return-void

    .line 955
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 961
    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1

    .line 963
    :try_start_0
    const-string v0, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute()V

    .line 965
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->monitorDaemons()V

    .line 966
    monitor-exit v1

    .line 967
    return-void

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
