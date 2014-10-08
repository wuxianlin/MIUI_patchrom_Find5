.class public abstract Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;
.super Landroid/os/Binder;
.source "IPhoneSubInfoMSim.java"

# interfaces
.implements Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

.field static final TRANSACTION_getCompleteVoiceMailNumber:I = 0x9

.field static final TRANSACTION_getDeviceId:I = 0x1

.field static final TRANSACTION_getDeviceSvn:I = 0x2

.field static final TRANSACTION_getIccSerialNumber:I = 0x4

.field static final TRANSACTION_getLine1AlphaTag:I = 0x6

.field static final TRANSACTION_getLine1Number:I = 0x5

.field static final TRANSACTION_getMsisdn:I = 0x7

.field static final TRANSACTION_getSubscriberId:I = 0x3

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0xa

.field static final TRANSACTION_getVoiceMailNumber:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 46
    :sswitch_0
    const-string v3, "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v0           #_arg0:I
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->getDeviceSvn(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0           #_arg0:I
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v0           #_arg0:I
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->getIccSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v0           #_arg0:I
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v3, "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->getLine1Number(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v0           #_arg0:I
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v0           #_arg0:I
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v3, "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->getMsisdn(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v0           #_arg0:I
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v3, "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    .end local v0           #_arg0:I
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v3, "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->getCompleteVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v0           #_arg0:I
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v3, "com.android.internal.telephony.msim.IPhoneSubInfoMSim"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
