.class Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 276
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 281
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 291
    return-void
.end method
