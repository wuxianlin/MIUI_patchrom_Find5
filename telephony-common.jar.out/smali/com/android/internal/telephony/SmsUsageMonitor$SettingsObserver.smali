.class Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmsUsageMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsUsageMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->this$0:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 229
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 230
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x1

    .line 234
    const-string v1, "sms_short_code_confirmation"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->this$0:Lcom/android/internal/telephony/SmsUsageMonitor;

    # getter for: Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->access$100(Lcom/android/internal/telephony/SmsUsageMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->this$0:Lcom/android/internal/telephony/SmsUsageMonitor;

    # getter for: Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/SmsUsageMonitor;->access$000(Lcom/android/internal/telephony/SmsUsageMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sms_short_code_confirmation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 241
    :cond_0
    :goto_1
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :cond_2
    const-string v0, "sms_outgoing_check_max_count"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->this$0:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->this$0:Lcom/android/internal/telephony/SmsUsageMonitor;

    # getter for: Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->access$000(Lcom/android/internal/telephony/SmsUsageMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sms_outgoing_check_max_count"

    const/16 v3, 0x1e

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->access$202(Lcom/android/internal/telephony/SmsUsageMonitor;I)I

    goto :goto_1
.end method
