.class public Landroid/app/ActivityManager$TaskThumbnails;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskThumbnails"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$TaskThumbnails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mainThumbnail:Landroid/graphics/Bitmap;

.field public numSubThumbbails:I

.field public retriever:Landroid/app/IThumbnailRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 916
    new-instance v0, Landroid/app/ActivityManager$TaskThumbnails$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskThumbnails$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$TaskThumbnails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskThumbnails;->readFromParcel(Landroid/os/Parcel;)V

    .line 927
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 872
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskThumbnails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x0

    return v0
.end method

.method public getSubThumbnail(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "index"

    .prologue
    .line 885
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityManager$TaskThumbnails;->retriever:Landroid/app/IThumbnailRetriever;

    invoke-interface {v1, p1}, Landroid/app/IThumbnailRetriever;->getThumbnail(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 887
    :goto_0
    return-object v1

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 907
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 912
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnails;->numSubThumbbails:I

    .line 913
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IThumbnailRetriever$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailRetriever;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$TaskThumbnails;->retriever:Landroid/app/IThumbnailRetriever;

    .line 914
    return-void

    .line 910
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 896
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 897
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 898
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 902
    :goto_0
    iget v0, p0, Landroid/app/ActivityManager$TaskThumbnails;->numSubThumbbails:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnails;->retriever:Landroid/app/IThumbnailRetriever;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 904
    return-void

    .line 900
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
