.class public Landroid/media/dolby/DolbyMobileAudioEffectClient;
.super Ljava/lang/Object;
.source "DolbyMobileAudioEffectClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DolbyMobileAudioEffectClient"


# instance fields
.field private mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

.field private mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    .line 44
    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    .line 223
    new-instance v0, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;

    invoke-direct {v0, p0}, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;-><init>(Landroid/media/dolby/DolbyMobileAudioEffectClient;)V

    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    .line 269
    new-instance v0, Landroid/media/dolby/DolbyMobileAudioEffectClient$2;

    invoke-direct {v0, p0}, Landroid/media/dolby/DolbyMobileAudioEffectClient$2;-><init>(Landroid/media/dolby/DolbyMobileAudioEffectClient;)V

    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    .line 296
    new-instance v0, Landroid/media/dolby/DolbyMobileAudioEffectClient$3;

    invoke-direct {v0, p0}, Landroid/media/dolby/DolbyMobileAudioEffectClient$3;-><init>(Landroid/media/dolby/DolbyMobileAudioEffectClient;)V

    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/IDolbyMobileSystemInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/dolby/DolbyMobileAudioEffectClient;Landroid/media/dolby/IDolbyMobileSystemInterface;)Landroid/media/dolby/IDolbyMobileSystemInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    return-object p1
.end method

.method static synthetic access$100(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/DolbyMobileClientCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public bindToRemoteRunningService(Landroid/app/Activity;)V
    .locals 10
    .parameter "activity"

    .prologue
    .line 77
    const-string v7, "DolbyMobileAudioEffectClient"

    const-string v8, "activity bindToRemoteRunningService()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, audioSessionId:I
    new-instance v2, Landroid/content/Intent;

    const-class v7, Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, bindIntent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 84
    .local v3, callerIntent:Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 86
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 87
    .local v5, intentExtras:Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 89
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v6

    .line 90
    .local v6, numExtras:I
    const-string v7, "DolbyMobileAudioEffectClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callerIntent.getExtras() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v7, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 94
    const-string v7, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 95
    const-string v7, "DolbyMobileAudioEffectClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioEffect.EXTRA_AUDIO_SESSION = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    const-string v7, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v7, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 102
    const-string v7, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, audioSessionPkgName:Ljava/lang/String;
    const-string v7, "DolbyMobileAudioEffectClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioEffect.EXTRA_PACKAGE_NAME = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v7, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .end local v1           #audioSessionPkgName:Ljava/lang/String;
    :cond_1
    const-string v7, "android.media.extra.CONTENT_TYPE"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 110
    const-string v7, "android.media.extra.CONTENT_TYPE"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 111
    .local v4, catInt:I
    const-string v7, "DMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.media.extra.CONTENT_TYPE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v7, "android.media.extra.CONTENT_TYPE"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    .end local v4           #catInt:I
    .end local v5           #intentExtras:Landroid/os/Bundle;
    .end local v6           #numExtras:I
    :cond_2
    iget-object v7, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v8, 0x1

    invoke-virtual {p1, v2, v7, v8}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 122
    return-void
.end method

.method public bindToRemoteRunningService(Landroid/app/Service;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 191
    const-string v1, "DolbyMobileAudioEffectClient"

    const-string v2, "service bindToRemoteRunningService()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, bindIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 198
    return-void
.end method

.method public bindToRemoteRunningService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 153
    const-string v1, "DolbyMobileAudioEffectClient"

    const-string v2, "context bindToRemoteRunningService()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, bindIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 160
    return-void
.end method

.method public getCurrentPreset()I
    .locals 5

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, currentPreset:I
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 396
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getCurrentPreset() FAILED: mDolbyMobileSystem = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 404
    .end local v0           #currentPreset:I
    .local v1, currentPreset:I
    :goto_0
    return v1

    .line 400
    .end local v1           #currentPreset:I
    .restart local v0       #currentPreset:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->currentPreset()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 404
    .end local v0           #currentPreset:I
    .restart local v1       #currentPreset:I
    goto :goto_0

    .line 401
    .end local v1           #currentPreset:I
    .restart local v0       #currentPreset:I
    :catch_0
    move-exception v2

    .line 402
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getCurrentPreset() FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDMSystemInterface()Landroid/media/dolby/IDolbyMobileSystemInterface;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    return-object v0
.end method

.method public getDolbyEffectOn()Z
    .locals 5

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, currentEffectOn:Z
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 335
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getDolbyEffectOn() FAILED: mDolbyMobileSystem = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 343
    .end local v0           #currentEffectOn:Z
    .local v1, currentEffectOn:I
    :goto_0
    return v1

    .line 339
    .end local v1           #currentEffectOn:I
    .restart local v0       #currentEffectOn:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getEffectOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 343
    .restart local v1       #currentEffectOn:I
    goto :goto_0

    .line 340
    .end local v1           #currentEffectOn:I
    :catch_0
    move-exception v2

    .line 341
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getDolbyEffectOn() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalAudioHeadsetByPass()Z
    .locals 5

    .prologue
    .line 514
    const/4 v1, 0x0

    .line 515
    .local v1, globalAudioHeadsetByPass:Z
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 516
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalAudioHeadsetByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 524
    .end local v1           #globalAudioHeadsetByPass:Z
    .local v2, globalAudioHeadsetByPass:I
    :goto_0
    return v2

    .line 520
    .end local v2           #globalAudioHeadsetByPass:I
    .restart local v1       #globalAudioHeadsetByPass:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalAudioHeadsetByPass()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 524
    .restart local v2       #globalAudioHeadsetByPass:I
    goto :goto_0

    .line 521
    .end local v2           #globalAudioHeadsetByPass:I
    :catch_0
    move-exception v0

    .line 522
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalAudioHeadsetByPass() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalAudioPreset()I
    .locals 5

    .prologue
    .line 484
    const/4 v1, 0x0

    .line 485
    .local v1, globalAudioPreset:I
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 486
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalAudioPreset() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 494
    .end local v1           #globalAudioPreset:I
    .local v2, globalAudioPreset:I
    :goto_0
    return v2

    .line 490
    .end local v2           #globalAudioPreset:I
    .restart local v1       #globalAudioPreset:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalAudioPreset()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 494
    .end local v1           #globalAudioPreset:I
    .restart local v2       #globalAudioPreset:I
    goto :goto_0

    .line 491
    .end local v2           #globalAudioPreset:I
    .restart local v1       #globalAudioPreset:I
    :catch_0
    move-exception v0

    .line 492
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalAudioPreset() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalAudioSpeakerByPass()Z
    .locals 5

    .prologue
    .line 544
    const/4 v1, 0x0

    .line 545
    .local v1, globalAudioSpeakerByPass:Z
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 546
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalAudioSpeakerByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 555
    .end local v1           #globalAudioSpeakerByPass:Z
    .local v2, globalAudioSpeakerByPass:I
    :goto_0
    return v2

    .line 551
    .end local v2           #globalAudioSpeakerByPass:I
    .restart local v1       #globalAudioSpeakerByPass:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalAudioSpeakerByPass()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 555
    .restart local v2       #globalAudioSpeakerByPass:I
    goto :goto_0

    .line 552
    .end local v2           #globalAudioSpeakerByPass:I
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalAudioSpeakerByPass() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalEffectOn()Z
    .locals 5

    .prologue
    .line 454
    const/4 v1, 0x1

    .line 455
    .local v1, globalEffectOn:Z
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 456
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalEffectOn() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 464
    .end local v1           #globalEffectOn:Z
    .local v2, globalEffectOn:I
    :goto_0
    return v2

    .line 460
    .end local v2           #globalEffectOn:I
    .restart local v1       #globalEffectOn:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalEffectOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 464
    .restart local v2       #globalEffectOn:I
    goto :goto_0

    .line 461
    .end local v2           #globalEffectOn:I
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalEffectOn() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalVideoHeadsetByPass()Z
    .locals 5

    .prologue
    .line 606
    const/4 v1, 0x0

    .line 607
    .local v1, globalVideoHeadsetByPass:Z
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 608
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalVideoHeadsetByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 616
    .end local v1           #globalVideoHeadsetByPass:Z
    .local v2, globalVideoHeadsetByPass:I
    :goto_0
    return v2

    .line 612
    .end local v2           #globalVideoHeadsetByPass:I
    .restart local v1       #globalVideoHeadsetByPass:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalVideoHeadsetByPass()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 616
    .restart local v2       #globalVideoHeadsetByPass:I
    goto :goto_0

    .line 613
    .end local v2           #globalVideoHeadsetByPass:I
    :catch_0
    move-exception v0

    .line 614
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalVideoHeadsetByPass() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalVideoPreset()I
    .locals 5

    .prologue
    .line 575
    const/4 v1, 0x0

    .line 576
    .local v1, globalVideoPreset:I
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 577
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalVideoPreset() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 586
    .end local v1           #globalVideoPreset:I
    .local v2, globalVideoPreset:I
    :goto_0
    return v2

    .line 582
    .end local v2           #globalVideoPreset:I
    .restart local v1       #globalVideoPreset:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalVideoPreset()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 586
    .end local v1           #globalVideoPreset:I
    .restart local v2       #globalVideoPreset:I
    goto :goto_0

    .line 583
    .end local v2           #globalVideoPreset:I
    .restart local v1       #globalVideoPreset:I
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalVideoPreset() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalVideoSpeakerByPass()Z
    .locals 5

    .prologue
    .line 636
    const/4 v1, 0x0

    .line 637
    .local v1, globalVideoSpeakerByPass:Z
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 638
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalVideoSpeakerByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 647
    .end local v1           #globalVideoSpeakerByPass:Z
    .local v2, globalVideoSpeakerByPass:I
    :goto_0
    return v2

    .line 643
    .end local v2           #globalVideoSpeakerByPass:I
    .restart local v1       #globalVideoSpeakerByPass:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalVideoSpeakerByPass()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 647
    .restart local v2       #globalVideoSpeakerByPass:I
    goto :goto_0

    .line 644
    .end local v2           #globalVideoSpeakerByPass:I
    :catch_0
    move-exception v0

    .line 645
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalVideoSpeakerByPass() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPresetCategory()I
    .locals 5

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, currentCategory:I
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 366
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getPresetCategory() FAILED: mDolbyMobileSystem = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 374
    .end local v0           #currentCategory:I
    .local v1, currentCategory:I
    :goto_0
    return v1

    .line 370
    .end local v1           #currentCategory:I
    .restart local v0       #currentCategory:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getPresetCategory()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 374
    .end local v0           #currentCategory:I
    .restart local v1       #currentCategory:I
    goto :goto_0

    .line 371
    .end local v1           #currentCategory:I
    .restart local v0       #currentCategory:I
    :catch_0
    move-exception v2

    .line 372
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getPresetCategory() FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerCallback(Landroid/media/dolby/DolbyMobileClientCallbacks;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    .line 55
    :cond_0
    return-void
.end method

.method public selectPreset(I)V
    .locals 4
    .parameter "presetIndex"

    .prologue
    .line 408
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 409
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "selectPreset() FAILED: mDolbyMobileSystem = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    const/4 v0, 0x0

    .line 414
    .local v0, currentPreset:I
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->currentPreset()I

    move-result v0

    .line 415
    if-eq p1, v0, :cond_0

    .line 416
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->selectPreset(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "selectPreset() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDolbyEffect(II)V
    .locals 3
    .parameter "category"
    .parameter "preset"

    .prologue
    .line 424
    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v1, :cond_0

    .line 425
    const-string v1, "DolbyMobileAudioEffectClient"

    const-string v2, "setDolbyEffect() FAILED: mDolbyMobileSystem = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_0
    return-void

    .line 433
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setPresetCategory(I)V

    .line 434
    invoke-virtual {p0, p2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->selectPreset(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DolbyMobileAudioEffectClient"

    const-string v2, "setDolbyEffect() FAILED."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDolbyEffectByPass(Z)V
    .locals 3
    .parameter "byPass"

    .prologue
    .line 442
    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v1, :cond_0

    .line 443
    const-string v1, "DolbyMobileAudioEffectClient"

    const-string v2, "setDolbyEffectByPass() FAILED: mDolbyMobileSystem = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_0
    return-void

    .line 447
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v1, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setEffectByPass(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DolbyMobileAudioEffectClient"

    const-string v2, "setDolbyEffectByPass() FAILED: mDolbyMobileSystem = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDolbyEffectOn(Z)V
    .locals 4
    .parameter "effectOn"

    .prologue
    .line 347
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 348
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setDolbyEffectOn() FAILED: mDolbyMobileSystem = null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    const/4 v0, 0x0

    .line 354
    .local v0, currentEffectOn:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getEffectOn()Z

    move-result v0

    .line 355
    if-eq p1, v0, :cond_0

    .line 356
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setEffectOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setDolbyEffectOn() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalAudioHeadsetByPass(Z)V
    .locals 4
    .parameter "byPass"

    .prologue
    .line 528
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 529
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalAudioHeadsetByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    const/4 v1, 0x0

    .line 534
    .local v1, globalAudioHeadsetByPass:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalAudioHeadsetByPass()Z

    move-result v1

    .line 535
    if-eq p1, v1, :cond_0

    .line 536
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalAudioHeadsetByPass(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalAudioHeadsetByPass() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalAudioPreset(I)V
    .locals 4
    .parameter "preset"

    .prologue
    .line 498
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 499
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalAudioPreset() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    const/4 v1, 0x0

    .line 504
    .local v1, globalAudioPreset:I
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalAudioPreset()I

    move-result v1

    .line 505
    if-eq p1, v1, :cond_0

    .line 506
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalAudioPreset(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalAudioPreset() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalAudioSpeakerByPass(Z)V
    .locals 4
    .parameter "byPass"

    .prologue
    .line 559
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 560
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalAudioSpeakerByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    const/4 v1, 0x0

    .line 565
    .local v1, globalAudioSpeakerByPass:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalAudioSpeakerByPass()Z

    move-result v1

    .line 566
    if-eq p1, v1, :cond_0

    .line 567
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalAudioSpeakerByPass(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalAudioSpeakerByPass() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalEffectOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 468
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 469
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalEffectOn() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const/4 v1, 0x1

    .line 474
    .local v1, globalEffectOn:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalEffectOn()Z

    move-result v1

    .line 475
    if-eq p1, v1, :cond_0

    .line 476
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalEffectOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalEffectOn() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalVideoHeadsetByPass(Z)V
    .locals 4
    .parameter "byPass"

    .prologue
    .line 620
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 621
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalVideoHeadsetByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    const/4 v1, 0x0

    .line 626
    .local v1, globalVideoHeadsetByPass:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalVideoHeadsetByPass()Z

    move-result v1

    .line 627
    if-eq p1, v1, :cond_0

    .line 628
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalVideoHeadsetByPass(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalVideoHeadsetByPass() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalVideoPreset(I)V
    .locals 4
    .parameter "preset"

    .prologue
    .line 590
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 591
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalVideoPreset() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    const/4 v1, 0x0

    .line 596
    .local v1, globalVideoPreset:I
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalVideoPreset()I

    move-result v1

    .line 597
    if-eq p1, v1, :cond_0

    .line 598
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalVideoPreset(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalEffectOn() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalVideoSpeakerByPass(Z)V
    .locals 4
    .parameter "byPass"

    .prologue
    .line 651
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 652
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalVideoSpeakerByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    const/4 v1, 0x0

    .line 657
    .local v1, globalVideoSpeakerByPass:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalVideoSpeakerByPass()Z

    move-result v1

    .line 658
    if-eq p1, v1, :cond_0

    .line 659
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalVideoSpeakerByPass(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalVideoSpeakerByPass() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPresetCategory(I)V
    .locals 4
    .parameter "category"

    .prologue
    .line 378
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 379
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setPresetCategory() FAILED: mDolbyMobileSystem = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const/4 v0, 0x0

    .line 384
    .local v0, currentCategory:I
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getPresetCategory()I

    move-result v0

    .line 385
    if-eq p1, v0, :cond_0

    .line 386
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setPresetCategory(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setPresetCategory() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unBindFromRemoteRunningService(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 129
    const-string v0, "DolbyMobileAudioEffectClient"

    const-string v1, "activity DMGlobalAudioEffectControlPanel.unBindFromRemoteRunningService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_0
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    invoke-interface {v0, v1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->unregisterCallback(Landroid/media/dolby/IDolbyMobileServiceCallbacks;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 146
    :cond_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0

    .line 134
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public unBindFromRemoteRunningService(Landroid/app/Service;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 205
    const-string v0, "DolbyMobileAudioEffectClient"

    const-string v1, "service DMGlobalAudioEffectControlPanel.unBindFromRemoteRunningService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :try_start_0
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    invoke-interface {v0, v1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->unregisterCallback(Landroid/media/dolby/IDolbyMobileServiceCallbacks;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Service;->unbindService(Landroid/content/ServiceConnection;)V

    .line 222
    :cond_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0

    .line 210
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public unBindFromRemoteRunningService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 167
    const-string v0, "DolbyMobileAudioEffectClient"

    const-string v1, "context DMGlobalAudioEffectControlPanel.unBindFromRemoteRunningService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    invoke-interface {v0, v1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->unregisterCallback(Landroid/media/dolby/IDolbyMobileServiceCallbacks;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 184
    :cond_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0

    .line 172
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/media/dolby/DolbyMobileClientCallbacks;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    if-ne v0, p1, :cond_0

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    .line 62
    :cond_0
    return-void
.end method
