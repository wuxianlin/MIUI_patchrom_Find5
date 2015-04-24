.class public Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;
.super Lcom/android/internal/telephony/CallManager$CmHandler;
.source "ExtCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ExtCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExtCmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ExtCallManager;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/ExtCallManager;)V
    .locals 0

    .prologue
    .line 999
    iput-object p1, p0, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;->this$0:Lcom/android/internal/telephony/ExtCallManager;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager$CmHandler;-><init>(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1004
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1024
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CallManager$CmHandler;->handleMessage(Landroid/os/Message;)V

    .line 1026
    :goto_0
    :sswitch_0
    return-void

    .line 1007
    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1008
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    .line 1009
    .local v2, "sub":I
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;->this$0:Lcom/android/internal/telephony/ExtCallManager;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;->this$0:Lcom/android/internal/telephony/ExtCallManager;

    # invokes: Lcom/android/internal/telephony/ExtCallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v3}, Lcom/android/internal/telephony/ExtCallManager;->access$000(Lcom/android/internal/telephony/ExtCallManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1011
    :cond_0
    :try_start_0
    const-string v3, "ExtCallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "silently drop incoming call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1013
    :catch_0
    move-exception v1

    .line 1014
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v3, "ExtCallManager"

    const-string v4, "new ringing connection"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1017
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;->this$0:Lcom/android/internal/telephony/ExtCallManager;

    iget-object v4, v3, Lcom/android/internal/telephony/ExtCallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {v4, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1004
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method
