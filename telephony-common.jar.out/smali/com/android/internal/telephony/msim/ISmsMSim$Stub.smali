.class public abstract Lcom/android/internal/telephony/msim/ISmsMSim$Stub;
.super Landroid/os/Binder;
.source "ISmsMSim.java"

# interfaces
.implements Lcom/android/internal/telephony/msim/ISmsMSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/ISmsMSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/ISmsMSim$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.msim.ISmsMSim"

.field static final TRANSACTION_copyMessageToIccEf:I = 0x3

.field static final TRANSACTION_disableCellBroadcast:I = 0xb

.field static final TRANSACTION_disableCellBroadcastRange:I = 0xd

.field static final TRANSACTION_enableCellBroadcast:I = 0xa

.field static final TRANSACTION_enableCellBroadcastRange:I = 0xc

.field static final TRANSACTION_getAllMessagesFromIccEf:I = 0x1

.field static final TRANSACTION_getImsSmsFormat:I = 0x11

.field static final TRANSACTION_getPreferredSmsSubscription:I = 0x12

.field static final TRANSACTION_getPremiumSmsPermission:I = 0xe

.field static final TRANSACTION_isImsSmsSupported:I = 0x10

.field static final TRANSACTION_isSMSPromptEnabled:I = 0x13

.field static final TRANSACTION_sendData:I = 0x4

.field static final TRANSACTION_sendDataWithOrigPort:I = 0x5

.field static final TRANSACTION_sendMultipartText:I = 0x8

.field static final TRANSACTION_sendMultipartTextWithOptions:I = 0x9

.field static final TRANSACTION_sendText:I = 0x6

.field static final TRANSACTION_sendTextWithOptions:I = 0x7

.field static final TRANSACTION_setPremiumSmsPermission:I = 0xf

.field static final TRANSACTION_updateMessageOnIccEf:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.android.internal.telephony.msim.ISmsMSim"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;
    .locals 2
    .parameter "obj"

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-string v1, "com.android.internal.telephony.msim.ISmsMSim"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/msim/ISmsMSim;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/android/internal/telephony/msim/ISmsMSim;

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/msim/ISmsMSim$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
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
    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 397
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 56
    :sswitch_0
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x1

    goto :goto_0

    .line 61
    :sswitch_1
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 66
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->getAllMessagesFromIccEf(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    .line 67
    .local v22, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 69
    const/4 v2, 0x1

    goto :goto_0

    .line 73
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_2
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 79
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 81
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 83
    .local v6, _arg3:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg4:I
    move-object/from16 v2, p0

    .line 84
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->updateMessageOnIccEf(Ljava/lang/String;II[BI)Z

    move-result v21

    .line 85
    .local v21, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v21, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 91
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:[B
    .end local v7           #_arg4:I
    .end local v21           #_result:Z
    :sswitch_3
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 97
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 99
    .local v5, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 101
    .restart local v6       #_arg3:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    .line 102
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->copyMessageToIccEf(Ljava/lang/String;I[B[BI)Z

    move-result v21

    .line 103
    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v21, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 104
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 109
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:[B
    .end local v7           #_arg4:I
    .end local v21           #_result:Z
    :sswitch_4
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 119
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 121
    .local v7, _arg4:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 128
    .local v8, _arg5:Landroid/app/PendingIntent;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 135
    .local v9, _arg6:Landroid/app/PendingIntent;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, _arg7:I
    move-object/from16 v2, p0

    .line 136
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 125
    .end local v8           #_arg5:Landroid/app/PendingIntent;
    .end local v9           #_arg6:Landroid/app/PendingIntent;
    .end local v10           #_arg7:I
    :cond_2
    const/4 v8, 0x0

    .restart local v8       #_arg5:Landroid/app/PendingIntent;
    goto :goto_3

    .line 132
    :cond_3
    const/4 v9, 0x0

    .restart local v9       #_arg6:Landroid/app/PendingIntent;
    goto :goto_4

    .line 142
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:I
    .end local v7           #_arg4:[B
    .end local v8           #_arg5:Landroid/app/PendingIntent;
    .end local v9           #_arg6:Landroid/app/PendingIntent;
    :sswitch_5
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 148
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 150
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 152
    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 154
    .local v7, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 156
    .local v8, _arg5:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 157
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 163
    .restart local v9       #_arg6:Landroid/app/PendingIntent;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 164
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 170
    .local v10, _arg7:Landroid/app/PendingIntent;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg8:I
    move-object/from16 v2, p0

    .line 171
    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->sendDataWithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 160
    .end local v9           #_arg6:Landroid/app/PendingIntent;
    .end local v10           #_arg7:Landroid/app/PendingIntent;
    .end local v11           #_arg8:I
    :cond_4
    const/4 v9, 0x0

    .restart local v9       #_arg6:Landroid/app/PendingIntent;
    goto :goto_5

    .line 167
    :cond_5
    const/4 v10, 0x0

    .restart local v10       #_arg7:Landroid/app/PendingIntent;
    goto :goto_6

    .line 177
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:[B
    .end local v9           #_arg6:Landroid/app/PendingIntent;
    .end local v10           #_arg7:Landroid/app/PendingIntent;
    :sswitch_6
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 183
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 185
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 188
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 194
    .local v7, _arg4:Landroid/app/PendingIntent;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 195
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 201
    .local v8, _arg5:Landroid/app/PendingIntent;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg6:I
    move-object/from16 v2, p0

    .line 202
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 191
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    .end local v8           #_arg5:Landroid/app/PendingIntent;
    .end local v9           #_arg6:I
    :cond_6
    const/4 v7, 0x0

    .restart local v7       #_arg4:Landroid/app/PendingIntent;
    goto :goto_7

    .line 198
    :cond_7
    const/4 v8, 0x0

    .restart local v8       #_arg5:Landroid/app/PendingIntent;
    goto :goto_8

    .line 208
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    .end local v8           #_arg5:Landroid/app/PendingIntent;
    :sswitch_7
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 214
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 216
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 218
    .restart local v6       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 219
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 225
    .restart local v7       #_arg4:Landroid/app/PendingIntent;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 226
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 232
    .restart local v8       #_arg5:Landroid/app/PendingIntent;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 234
    .restart local v9       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, _arg7:I
    move-object/from16 v2, p0

    .line 235
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;II)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 222
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    .end local v8           #_arg5:Landroid/app/PendingIntent;
    .end local v9           #_arg6:I
    .end local v10           #_arg7:I
    :cond_8
    const/4 v7, 0x0

    .restart local v7       #_arg4:Landroid/app/PendingIntent;
    goto :goto_9

    .line 229
    :cond_9
    const/4 v8, 0x0

    .restart local v8       #_arg5:Landroid/app/PendingIntent;
    goto :goto_a

    .line 241
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    .end local v8           #_arg5:Landroid/app/PendingIntent;
    :sswitch_8
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 247
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 249
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 251
    .local v16, _arg3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 253
    .local v17, _arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .line 255
    .local v18, _arg5:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg6:I
    move-object/from16 v12, p0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move/from16 v19, v9

    .line 256
    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 262
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v9           #_arg6:I
    .end local v16           #_arg3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v18           #_arg5:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_9
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 266
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 268
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 270
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 272
    .restart local v16       #_arg3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 274
    .restart local v17       #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .line 276
    .restart local v18       #_arg5:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 278
    .restart local v9       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10       #_arg7:I
    move-object/from16 v12, p0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move/from16 v19, v9

    move/from16 v20, v10

    .line 279
    invoke-virtual/range {v12 .. v20}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;II)V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 285
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v9           #_arg6:I
    .end local v10           #_arg7:I
    .end local v16           #_arg3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v18           #_arg5:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_a
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 289
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 290
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->enableCellBroadcast(II)Z

    move-result v21

    .line 291
    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v21, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 292
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 297
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v21           #_result:Z
    :sswitch_b
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 301
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 302
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->disableCellBroadcast(II)Z

    move-result v21

    .line 303
    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v21, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 304
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 309
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v21           #_result:Z
    :sswitch_c
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 313
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 315
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 316
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->enableCellBroadcastRange(III)Z

    move-result v21

    .line 317
    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v21, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 318
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 323
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v21           #_result:Z
    :sswitch_d
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 327
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 329
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 330
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->disableCellBroadcastRange(III)Z

    move-result v21

    .line 331
    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v21, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 332
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 337
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v21           #_result:Z
    :sswitch_e
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 342
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->getPremiumSmsPermission(Ljava/lang/String;I)I

    move-result v21

    .line 343
    .local v21, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 349
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v21           #_result:I
    :sswitch_f
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 353
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 355
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 356
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->setPremiumSmsPermission(Ljava/lang/String;II)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 362
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :sswitch_10
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 365
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->isImsSmsSupported(I)Z

    move-result v21

    .line 366
    .local v21, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-eqz v21, :cond_e

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 367
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 372
    .end local v3           #_arg0:I
    .end local v21           #_result:Z
    :sswitch_11
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 375
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->getImsSmsFormat(I)Ljava/lang/String;

    move-result-object v21

    .line 376
    .local v21, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 382
    .end local v3           #_arg0:I
    .end local v21           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->getPreferredSmsSubscription()I

    move-result v21

    .line 384
    .local v21, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 390
    .end local v21           #_result:I
    :sswitch_13
    const-string v2, "com.android.internal.telephony.msim.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->isSMSPromptEnabled()Z

    move-result v21

    .line 392
    .local v21, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    if-eqz v21, :cond_f

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 393
    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    .line 52
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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
