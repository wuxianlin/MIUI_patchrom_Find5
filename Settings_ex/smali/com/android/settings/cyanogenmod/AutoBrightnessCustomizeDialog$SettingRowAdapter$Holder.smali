.class Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field backlight:Landroid/widget/SeekBar;

.field lux:Landroid/widget/TextView;

.field percent:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;)V

    return-void
.end method


# virtual methods
.method public updatePercent()V
    .locals 7

    .prologue
    .line 875
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->backlight:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->backlight:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 876
    .local v0, percentValue:I
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->percent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801c2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    return-void
.end method
