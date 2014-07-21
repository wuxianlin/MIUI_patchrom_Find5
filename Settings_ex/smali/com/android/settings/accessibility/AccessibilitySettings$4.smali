.class Lcom/android/settings/accessibility/AccessibilitySettings$4;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
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
    .line 183
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$4;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$4;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$400(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    .line 187
    return-void
.end method
