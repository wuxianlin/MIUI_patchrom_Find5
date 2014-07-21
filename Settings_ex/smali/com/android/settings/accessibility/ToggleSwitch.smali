.class public Lcom/android/settings/accessibility/ToggleSwitch;
.super Landroid/widget/Switch;
.source "ToggleSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settings/accessibility/ToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedInternal(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 48
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;

    .line 35
    return-void
.end method
