.class public Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
.super Landroid/preference/Preference;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceHeader"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "titleRes"

    .prologue
    .line 492
    const/4 v0, 0x0

    const v1, 0x101008c

    invoke-direct {p0, p1, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 493
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;->setTitle(I)V

    .line 494
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "context"
    .parameter "title"

    .prologue
    .line 497
    const/4 v0, 0x0

    const v1, 0x101008c

    invoke-direct {p0, p1, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 498
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;->setTitle(Ljava/lang/CharSequence;)V

    .line 499
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method
