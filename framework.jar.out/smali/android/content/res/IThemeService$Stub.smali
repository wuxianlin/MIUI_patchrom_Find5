.class public abstract Landroid/content/res/IThemeService$Stub;
.super Landroid/os/Binder;
.source "IThemeService.java"

# interfaces
.implements Landroid/content/res/IThemeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/IThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/IThemeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.res.IThemeService"

.field static final TRANSACTION_applyDefaultTheme:I = 0x4

.field static final TRANSACTION_getProgress:I = 0x6

.field static final TRANSACTION_isThemeApplying:I = 0x5

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_requestThemeChange:I = 0x3

.field static final TRANSACTION_requestThemeChangeUpdates:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.content.res.IThemeService"

    invoke-virtual {p0, p0, v0}, Landroid/content/res/IThemeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.content.res.IThemeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/res/IThemeService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/content/res/IThemeService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/content/res/IThemeService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/res/IThemeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v3, "android.content.res.IThemeService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "android.content.res.IThemeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/res/IThemeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeChangeListener;

    move-result-object v0

    .line 51
    .local v0, _arg0:Landroid/content/res/IThemeChangeListener;
    invoke-virtual {p0, v0}, Landroid/content/res/IThemeService$Stub;->requestThemeChangeUpdates(Landroid/content/res/IThemeChangeListener;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Landroid/content/res/IThemeChangeListener;
    :sswitch_2
    const-string v3, "android.content.res.IThemeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/res/IThemeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeChangeListener;

    move-result-object v0

    .line 60
    .restart local v0       #_arg0:Landroid/content/res/IThemeChangeListener;
    invoke-virtual {p0, v0}, Landroid/content/res/IThemeService$Stub;->removeUpdates(Landroid/content/res/IThemeChangeListener;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v0           #_arg0:Landroid/content/res/IThemeChangeListener;
    :sswitch_3
    const-string v3, "android.content.res.IThemeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 71
    .local v1, _arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/content/res/IThemeService$Stub;->requestThemeChange(Ljava/lang/String;Ljava/util/List;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4
    const-string v3, "android.content.res.IThemeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/content/res/IThemeService$Stub;->applyDefaultTheme()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    :sswitch_5
    const-string v3, "android.content.res.IThemeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/res/IThemeService$Stub;->isThemeApplying(Ljava/lang/String;)Z

    move-result v2

    .line 88
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 94
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_6
    const-string v3, "android.content.res.IThemeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/res/IThemeService$Stub;->getProgress(Ljava/lang/String;)I

    move-result v2

    .line 98
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
