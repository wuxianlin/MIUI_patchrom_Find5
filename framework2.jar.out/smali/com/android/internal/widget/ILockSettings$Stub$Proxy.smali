.class Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 221
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .locals 6
    .parameter "password"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 413
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 416
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 421
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 424
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 427
    return v2

    .line 424
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public checkPattern(Ljava/lang/String;I)Z
    .locals 6
    .parameter "pattern"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 378
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 381
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 389
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 392
    return v2

    .line 389
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 7
    .parameter "key"
    .parameter "defaultValue"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 284
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 287
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    if-eqz p2, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v4, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    .local v2, _result:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    return v2

    .end local v2           #_result:Z
    :cond_0
    move v4, v3

    .line 289
    goto :goto_0

    :cond_1
    move v2, v3

    .line 293
    goto :goto_1

    .line 296
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "com.android.internal.widget.ILockSettings"

    return-object v0
.end method

.method public getLockPatternSize(I)B
    .locals 6
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 344
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 347
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 354
    .local v2, _result:B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    return v2

    .line 354
    .end local v2           #_result:B
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 7
    .parameter "key"
    .parameter "defaultValue"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 304
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 307
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 310
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v4, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 316
    .local v2, _result:J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 319
    return-wide v2

    .line 316
    .end local v2           #_result:J
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "key"
    .parameter "defaultValue"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 324
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 327
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 333
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 336
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    return-object v2

    .line 336
    .end local v2           #_result:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public havePassword(I)Z
    .locals 6
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 450
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 453
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 460
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 463
    return v2

    .line 460
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public havePattern(I)Z
    .locals 6
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 432
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 435
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 442
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 445
    return v2

    .line 442
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public removeUser(I)V
    .locals 5
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 468
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 470
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 473
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 479
    return-void

    .line 476
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 5
    .parameter "key"
    .parameter "value"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 235
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 246
    return-void

    :cond_0
    move v2, v3

    .line 237
    goto :goto_0

    .line 243
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .locals 5
    .parameter "password"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 397
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 399
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 409
    return-void

    .line 406
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setLockPattern(Ljava/lang/String;I)V
    .locals 5
    .parameter "pattern"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 362
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 364
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 374
    return-void

    .line 371
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 5
    .parameter "key"
    .parameter "value"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 250
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 252
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 255
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    return-void

    .line 260
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "key"
    .parameter "value"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 267
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 269
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    return-void

    .line 277
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
