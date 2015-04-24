.class Lcom/android/server/MSimTelephonyRegistry$1;
.super Landroid/os/Handler;
.source "MSimTelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MSimTelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MSimTelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/MSimTelephonyRegistry;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/MSimTelephonyRegistry$1;->this$0:Lcom/android/server/MSimTelephonyRegistry;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 150
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 160
    :cond_0
    return-void

    .line 152
    :pswitch_0
    const-string v2, "MSimTelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_USER_SWITCHED userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    .line 154
    .local v0, "numPhones":I
    const/4 v1, 0x0

    .local v1, "sub":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry$1;->this$0:Lcom/android/server/MSimTelephonyRegistry;

    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry$1;->this$0:Lcom/android/server/MSimTelephonyRegistry;

    # getter for: Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;
    invoke-static {v3}, Lcom/android/server/MSimTelephonyRegistry;->access$000(Lcom/android/server/MSimTelephonyRegistry;)[Landroid/os/Bundle;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v1}, Lcom/android/server/MSimTelephonyRegistry;->notifyCellLocation(Landroid/os/Bundle;I)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
