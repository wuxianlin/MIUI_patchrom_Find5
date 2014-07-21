.class Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingRow"
.end annotation


# instance fields
.field backlight:I

.field lux:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "lux"
    .parameter "backlight"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    .line 74
    iput p2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    .line 75
    return-void
.end method
