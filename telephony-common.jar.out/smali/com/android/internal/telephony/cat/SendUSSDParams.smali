.class Lcom/android/internal/telephony/cat/SendUSSDParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field ussdString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textmessage"
    .parameter "ussdstring"

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 235
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdString:Ljava/lang/String;

    .line 236
    return-void
.end method
