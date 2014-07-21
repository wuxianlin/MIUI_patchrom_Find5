.class Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;
.super Ljava/lang/Object;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/accessibility/ToggleSwitch;Z)Z
    .locals 4
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 285
    if-eqz p2, :cond_0

    .line 286
    invoke-virtual {p1, v3}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    #calls: Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V
    invoke-static {v0, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$200(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    .line 294
    :goto_0
    return v2

    .line 290
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    const/4 v1, 0x2

    #calls: Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$300(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    goto :goto_0
.end method
