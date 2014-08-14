.class public Landroid/app/ComposedIconInfo;
.super Ljava/lang/Object;
.source "ComposedIconInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ComposedIconInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

.field public iconDensity:I

.field public iconMask:Landroid/graphics/drawable/BitmapDrawable;

.field public iconScale:F

.field public iconSize:I

.field public iconUpon:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Landroid/app/ComposedIconInfo$1;

    invoke-direct {v0}, Landroid/app/ComposedIconInfo$1;-><init>()V

    sput-object v0, Landroid/app/ComposedIconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "source"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 37
    .local v1, bmpClassLoader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Landroid/app/ComposedIconInfo;->iconScale:F

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/ComposedIconInfo;->iconDensity:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/ComposedIconInfo;->iconSize:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 41
    .local v0, backCount:I
    if-lez v0, :cond_0

    .line 42
    new-array v3, v0, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v3, p0, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 44
    iget-object v4, p0, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v2

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    .end local v2           #i:I
    :cond_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Landroid/app/ComposedIconInfo;->iconMask:Landroid/graphics/drawable/BitmapDrawable;

    .line 48
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Landroid/app/ComposedIconInfo;->iconUpon:Landroid/graphics/drawable/BitmapDrawable;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ComposedIconInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/app/ComposedIconInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v5, 0x0

    .line 58
    iget v4, p0, Landroid/app/ComposedIconInfo;->iconScale:F

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 59
    iget v4, p0, Landroid/app/ComposedIconInfo;->iconDensity:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v4, p0, Landroid/app/ComposedIconInfo;->iconSize:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v4, p0, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v4, v4

    :goto_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v4, p0, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    .line 63
    iget-object v0, p0, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    .local v0, arr$:[Landroid/graphics/drawable/BitmapDrawable;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 64
    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_2
    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61
    .end local v0           #arr$:[Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .restart local v0       #arr$:[Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_1
    move-object v4, v5

    .line 64
    goto :goto_2

    .line 67
    .end local v0           #arr$:[Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget-object v4, p0, Landroid/app/ComposedIconInfo;->iconMask:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/app/ComposedIconInfo;->iconMask:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_3
    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    iget-object v4, p0, Landroid/app/ComposedIconInfo;->iconUpon:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/app/ComposedIconInfo;->iconUpon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_3
    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    return-void

    :cond_4
    move-object v4, v5

    .line 67
    goto :goto_3
.end method
