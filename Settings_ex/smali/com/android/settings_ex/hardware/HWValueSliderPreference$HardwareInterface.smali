.class public interface abstract Lcom/android/settings_ex/hardware/HWValueSliderPreference$HardwareInterface;
.super Ljava/lang/Object;
.source "HWValueSliderPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/hardware/HWValueSliderPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "HardwareInterface"
.end annotation


# virtual methods
.method public abstract getCurrentValue()I
.end method

.method public abstract getDefaultValue()I
.end method

.method public abstract getMaxValue()I
.end method

.method public abstract getMinValue()I
.end method

.method public abstract getPreferenceName()Ljava/lang/String;
.end method

.method public abstract getWarningThreshold()I
.end method

.method public abstract setValue(I)Z
.end method
