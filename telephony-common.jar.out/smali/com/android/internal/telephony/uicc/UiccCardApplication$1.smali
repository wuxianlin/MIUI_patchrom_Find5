.class Lcom/android/internal/telephony/uicc/UiccCardApplication$1;
.super Landroid/os/Handler;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 396
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$000(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] while being destroyed. Ignoring."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 443
    :goto_0
    return-void

    .line 402
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 441
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 409
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, -0x1

    .line 410
    .local v1, attemptsRemaining:I
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 411
    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v5, :cond_1

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 413
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v3, v0, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    .line 417
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$300(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v1

    .line 419
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 420
    .local v2, response:Landroid/os/Message;
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 421
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 422
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 415
    .end local v2           #response:Landroid/os/Message;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v3, v0, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    goto :goto_1

    .line 425
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #attemptsRemaining:I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 426
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$400(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 429
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 430
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$500(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 433
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 434
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$600(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 437
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 438
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$700(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
