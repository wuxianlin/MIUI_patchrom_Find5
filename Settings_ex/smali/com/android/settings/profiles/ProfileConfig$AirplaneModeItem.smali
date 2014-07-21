.class Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;
.super Ljava/lang/Object;
.source "ProfileConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/profiles/ProfileConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AirplaneModeItem"
.end annotation


# instance fields
.field mCheckbox:Lcom/android/settings/profiles/ProfileAirplaneModePreference;

.field mSettings:Landroid/app/AirplaneModeSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    return-void
.end method
