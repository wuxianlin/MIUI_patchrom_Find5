.class public Lcom/android/internal/telephony/Qualcomm42RIL;
.super Lcom/android/internal/telephony/RIL;
.source "Qualcomm42RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field static final RIL_REQUEST_GET_DATA_CALL_PROFILE:I = 0x6f

.field static final RIL_REQUEST_GET_DATA_SUBSCRIPTION:I = 0x79

.field static final RIL_REQUEST_GET_UICC_SUBSCRIPTION:I = 0x78

.field static final RIL_REQUEST_IMS_REGISTRATION_STATE:I = 0x6d

.field static final RIL_REQUEST_IMS_SEND_SMS:I = 0x6e

.field static final RIL_REQUEST_SET_DATA_SUBSCRIPTION:I = 0x77

.field static final RIL_REQUEST_SET_UICC_SUBSCRIPTION:I = 0x76

.field static final RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0x40c

.field static final RIL_UNSOL_TETHERED_MODE_STATE_CHANGED:I = 0x40d


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 44
    return-void
.end method


# virtual methods
.method public getCellInfoList(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 51
    const-string v0, "[STUB] > getCellInfoList"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Qualcomm42RIL;->riljLog(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public getDataCallProfile(ILandroid/os/Message;)V
    .locals 3
    .parameter "appType"
    .parameter "result"

    .prologue
    .line 96
    const/16 v1, 0x6f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 100
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/Qualcomm42RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Qualcomm42RIL;->riljLog(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Qualcomm42RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 107
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 63
    const/16 v1, 0x6d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 66
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/Qualcomm42RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Qualcomm42RIL;->riljLog(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Qualcomm42RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 69
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 1
    .parameter "rateInMillis"
    .parameter "response"

    .prologue
    .line 59
    const-string v0, "[STUB] > setCellInfoListRate"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Qualcomm42RIL;->riljLog(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setDataSubscription(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 89
    const/16 v1, 0x77

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 90
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/Qualcomm42RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Qualcomm42RIL;->riljLog(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Qualcomm42RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 92
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 3
    .parameter "slotId"
    .parameter "appIndex"
    .parameter "subId"
    .parameter "subStatus"
    .parameter "result"

    .prologue
    .line 74
    const/16 v1, 0x76

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 76
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/Qualcomm42RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Qualcomm42RIL;->riljLog(Ljava/lang/String;)V

    .line 80
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Qualcomm42RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 86
    return-void
.end method
