.class Lcom/android/settings/accessibility/AccessibilitySettings$3;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
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
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$000(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$100(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    .line 180
    return-void
.end method
