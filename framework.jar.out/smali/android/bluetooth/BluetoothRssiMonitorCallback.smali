.class public abstract Landroid/bluetooth/BluetoothRssiMonitorCallback;
.super Ljava/lang/Object;
.source "BluetoothRssiMonitorCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlert(II)V
    .locals 0
    .parameter "evtType"
    .parameter "rssi"

    .prologue
    .line 48
    return-void
.end method

.method public onReadRssiThreshold(IIII)V
    .locals 0
    .parameter "thresh_min"
    .parameter "thresh_max"
    .parameter "alert"
    .parameter "status"

    .prologue
    .line 44
    return-void
.end method

.method public onStarted()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onStopped()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
