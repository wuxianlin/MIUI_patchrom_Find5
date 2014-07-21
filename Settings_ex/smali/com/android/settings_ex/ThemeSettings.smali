.class public Lcom/android/settings_ex/ThemeSettings;
.super Landroid/preference/PreferenceFragment;
.source "ThemeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f05005a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ThemeSettings;->addPreferencesFromResource(I)V

    .line 29
    return-void
.end method
