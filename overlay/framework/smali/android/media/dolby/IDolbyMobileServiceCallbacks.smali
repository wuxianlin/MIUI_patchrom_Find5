.class public interface abstract Landroid/media/dolby/IDolbyMobileServiceCallbacks;
.super Ljava/lang/Object;
.source "IDolbyMobileServiceCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/dolby/IDolbyMobileServiceCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEffectOnChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPresetChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
