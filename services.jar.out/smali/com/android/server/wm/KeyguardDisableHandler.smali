.class public Lcom/android/server/wm/KeyguardDisableHandler;
.super Landroid/os/Handler;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;
    }
.end annotation


# static fields
.field private static final ALLOW_DISABLE_NO:I = 0x0

.field private static final ALLOW_DISABLE_UNKNOWN:I = -0x1

.field private static final ALLOW_DISABLE_YES:I = 0x1

.field static final KEYGUARD_DISABLE:I = 0x1

.field static final KEYGUARD_POLICY_CHANGED:I = 0x3

.field static final KEYGUARD_REENABLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyguardDisableHandler"


# instance fields
.field private mAllowDisableKeyguard:I

.field final mContext:Landroid/content/Context;

.field mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

.field final mPolicy:Landroid/view/WindowManagerPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V
    .locals 1
    .parameter "context"
    .parameter "policy"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/KeyguardDisableHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/KeyguardDisableHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardDisableHandler;->updateAllowDisableState()V

    return-void
.end method

.method private updateAllowDisableState()V
    .locals 5

    .prologue
    .line 86
    iget-object v3, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 88
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    .line 91
    .local v2, userId:I
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v1

    .line 93
    .local v1, quality:I
    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput v3, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1           #quality:I
    .end local v2           #userId:I
    :cond_0
    :goto_1
    return-void

    .line 93
    .restart local v1       #quality:I
    .restart local v2       #userId:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 95
    .end local v1           #quality:I
    .end local v2           #userId:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 57
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    invoke-direct {v1, p0, p0}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;-><init>(Lcom/android/server/wm/KeyguardDisableHandler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    .line 61
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 64
    .local v0, pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/IBinder;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v0           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/IBinder;Ljava/lang/String;>;"
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->release(Landroid/os/IBinder;)V

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->isAcquired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardDisableHandler;->updateAllowDisableState()V

    .line 78
    :goto_1
    iget v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    if-eq v1, v2, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    goto :goto_0

    .line 76
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    goto :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
