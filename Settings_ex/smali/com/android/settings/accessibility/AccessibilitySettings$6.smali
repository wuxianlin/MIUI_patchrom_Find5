.class Lcom/android/settings/accessibility/AccessibilitySettings$6;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 630
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 638
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    const/4 v5, 0x1

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V
    invoke-static {v4, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$500(Lcom/android/settings/accessibility/AccessibilitySettings;I)V

    .line 639
    const-string v4, "ro.screenreader.market"

    const-string v5, "market://search?q=pname:com.google.android.marvin.talkback"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, screenreaderMarketLink:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 643
    .local v2, marketUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 646
    .local v1, marketIntent:Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v4, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    const-string v4, "AccessibilitySettings"

    const-string v5, "Couldn\'t start play store activity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
