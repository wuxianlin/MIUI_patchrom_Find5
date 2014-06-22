.class public Lcom/android/internal/telephony/CallModify;
.super Ljava/lang/Object;
.source "CallModify.java"


# static fields
.field public static E_CANCELLED:I

.field public static E_SUCCESS:I

.field public static E_UNUSED:I


# instance fields
.field public call_details:Lcom/android/internal/telephony/CallDetails;

.field public call_index:I

.field public error:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/CallModify;->E_SUCCESS:I

    .line 35
    const/4 v0, 0x7

    sput v0, Lcom/android/internal/telephony/CallModify;->E_CANCELLED:I

    .line 36
    const/16 v0, 0x10

    sput v0, Lcom/android/internal/telephony/CallModify;->E_UNUSED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallDetails;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallModify;-><init>(Lcom/android/internal/telephony/CallDetails;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;I)V
    .locals 1
    .parameter "callDetails"
    .parameter "callIndex"

    .prologue
    .line 49
    sget v0, Lcom/android/internal/telephony/CallModify;->E_SUCCESS:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/CallModify;-><init>(Lcom/android/internal/telephony/CallDetails;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;II)V
    .locals 0
    .parameter "callDetails"
    .parameter "callIndex"
    .parameter "err"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    .line 54
    iput p2, p0, Lcom/android/internal/telephony/CallModify;->call_index:I

    .line 55
    iput p3, p0, Lcom/android/internal/telephony/CallModify;->error:I

    .line 56
    return-void
.end method


# virtual methods
.method public error()Z
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/telephony/CallModify;->error:I

    sget v1, Lcom/android/internal/telephony/CallModify;->E_UNUSED:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/CallModify;->error:I

    sget v1, Lcom/android/internal/telephony/CallModify;->E_SUCCESS:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallDetails(Lcom/android/internal/telephony/CallDetails;)V
    .locals 1
    .parameter "calldetails"

    .prologue
    .line 59
    new-instance v0, Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CallDetails;-><init>(Lcom/android/internal/telephony/CallDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallModify;->call_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallModify;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
