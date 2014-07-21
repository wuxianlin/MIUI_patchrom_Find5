.class Landroid/media/dolby/DolbyMobileAudioEffectClient$2;
.super Landroid/media/dolby/IDolbyMobileServiceCallbacks$Stub;
.source "DolbyMobileAudioEffectClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dolby/DolbyMobileAudioEffectClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;


# direct methods
.method constructor <init>(Landroid/media/dolby/DolbyMobileAudioEffectClient;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$2;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-direct {p0}, Landroid/media/dolby/IDolbyMobileServiceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectOnChanged(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "callback onEffectOnChanged()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-eqz p1, :cond_0

    move v0, v1

    .line 280
    .local v0, status:I
    :goto_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$2;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    #getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$300(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$2;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    #getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$300(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    return-void

    .end local v0           #status:I
    :cond_0
    move v0, v2

    .line 279
    goto :goto_0
.end method

.method public onPresetChanged(II)V
    .locals 3
    .parameter "presetCategory"
    .parameter "preset"

    .prologue
    .line 291
    const-string v0, "DolbyMobileAudioEffectClient"

    const-string v1, "callback onPresetChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$2;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    #getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$300(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$2;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    #getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$300(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    return-void
.end method
