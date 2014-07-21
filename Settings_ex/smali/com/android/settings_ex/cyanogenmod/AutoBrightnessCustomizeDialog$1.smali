.class Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$1;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$1;->this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 96
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 90
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 91
    .local v0, lux:I
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$1;->this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->mSensorLevel:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->access$000(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$1;->this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v2}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801be

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method
