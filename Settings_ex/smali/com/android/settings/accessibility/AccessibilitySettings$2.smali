.class Lcom/android/settings/accessibility/AccessibilitySettings$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$300(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$200(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 152
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 157
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 162
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 167
    return-void
.end method
