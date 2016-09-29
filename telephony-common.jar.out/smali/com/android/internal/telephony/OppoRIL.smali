.class public Lcom/android/internal/telephony/OppoRIL;
.super Lcom/android/internal/telephony/RIL;
.source "OppoRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/OppoRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 47
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 49
    .local v1, "response":I
    packed-switch v1, :pswitch_data_0

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 56
    return-void

    .line 50
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/OppoRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    .local v2, "ret":Ljava/lang/Object;
    packed-switch v1, :pswitch_data_1

    .line 44
    .end local v2    # "ret":Ljava/lang/Object;
    :goto_0
    return-void

    .line 60
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/OppoRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 63
    const-string/jumbo v3, "ril.socket.reset"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p0, v6, v5}, Lcom/android/internal/telephony/OppoRIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 67
    :cond_0
    const-string/jumbo v3, "ril.socket.reset"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v3, p0, Lcom/android/internal/telephony/OppoRIL;->mPreferredNetworkType:I

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/OppoRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 69
    iget v3, p0, Lcom/android/internal/telephony/OppoRIL;->mCdmaSubscription:I

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/OppoRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 70
    check-cast v2, [I

    .end local v2    # "ret":Ljava/lang/Object;
    aget v3, v2, v6

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/OppoRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x40a
        :pswitch_0
    .end packed-switch

    .line 58
    :pswitch_data_1
    .packed-switch 0x40a
        :pswitch_1
    .end packed-switch
.end method
