.class public abstract Lcom/android/display/IPPService$Stub;
.super Landroid/os/Binder;
.source "IPPService.java"

# interfaces
.implements Lcom/android/display/IPPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/display/IPPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/display/IPPService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.display.IPPService"

    invoke-virtual {p0, p0, v0}, Lcom/android/display/IPPService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/display/IPPService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.android.display.IPPService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/display/IPPService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/display/IPPService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/display/IPPService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/display/IPPService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.android.display.IPPService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.android.display.IPPService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/display/IPPService$Stub;->startPP()Z

    move-result v4

    .line 49
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v4           #_result:Z
    :sswitch_2
    const-string v7, "com.android.display.IPPService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/display/IPPService$Stub;->stopPP()Z

    move-result v4

    .line 57
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v4           #_result:Z
    :sswitch_3
    const-string v7, "com.android.display.IPPService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 72
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/display/IPPService$Stub;->updateHSIC(IIII)Z

    move-result v4

    .line 73
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:Z
    :sswitch_4
    const-string v7, "com.android.display.IPPService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/display/IPPService$Stub;->getPPStatus()Z

    move-result v4

    .line 81
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
