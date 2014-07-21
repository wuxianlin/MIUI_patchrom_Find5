.class public Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleGlobalGesturePreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 34
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 43
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_accessibility_global_gesture_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 29
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
