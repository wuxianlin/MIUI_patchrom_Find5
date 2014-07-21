.class Landroid/media/dolby/DolbyMobileAudioEffectClient$3;
.super Landroid/os/Handler;
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
    .line 297
    iput-object p1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$3;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 301
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 325
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 304
    :pswitch_0
    const-string v1, "DolbyMobileAudioEffectClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage(EFFECT_ON_OFF_CHANGE_MSG): isOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 308
    .local v0, isOn:Z
    :goto_1
    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$3;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    #getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;
    invoke-static {v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$200(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/DolbyMobileClientCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$3;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    #getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;
    invoke-static {v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$200(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/DolbyMobileClientCallbacks;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/media/dolby/DolbyMobileClientCallbacks;->onEffectOnChanged(Z)V

    goto :goto_0

    .line 305
    .end local v0           #isOn:Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 315
    :pswitch_1
    const-string v1, "DolbyMobileAudioEffectClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage(PRESET_CHANGE_MSG): preset category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$3;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    #getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;
    invoke-static {v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$200(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/DolbyMobileClientCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$3;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    #getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;
    invoke-static {v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$200(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/DolbyMobileClientCallbacks;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3}, Landroid/media/dolby/DolbyMobileClientCallbacks;->onPresetChanged(II)V

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
