.class Lcom/android/internal/telephony/cat/SendSMSParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field pdu:Ljava/lang/String;

.field smscAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textmessage"
    .parameter "smscaddress"
    .parameter "smsPdu"

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 225
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->smscAddress:Ljava/lang/String;

    .line 226
    iput-object p4, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->pdu:Ljava/lang/String;

    .line 227
    return-void
.end method
