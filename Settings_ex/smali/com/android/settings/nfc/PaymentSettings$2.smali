.class Lcom/android/settings/nfc/PaymentSettings$2;
.super Landroid/os/Handler;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/PaymentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/PaymentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings$2;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$2;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    .line 169
    return-void
.end method
