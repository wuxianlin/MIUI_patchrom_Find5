.class Lcom/android/settings/hardware/DisplayGamma$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "DisplayGamma.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/hardware/DisplayGamma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/hardware/DisplayGamma$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field controlCount:I

.field currentColors:[[Ljava/lang/String;

.field originalColors:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lcom/android/settings/hardware/DisplayGamma$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/hardware/DisplayGamma$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/hardware/DisplayGamma$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/settings/hardware/DisplayGamma$SavedState;->controlCount:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/hardware/DisplayGamma$SavedState;->originalColors:[Ljava/lang/String;

    .line 260
    iget v1, p0, Lcom/android/settings/hardware/DisplayGamma$SavedState;->controlCount:I

    new-array v1, v1, [[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/hardware/DisplayGamma$SavedState;->currentColors:[[Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/settings/hardware/DisplayGamma$SavedState;->controlCount:I

    if-ge v0, v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/settings/hardware/DisplayGamma$SavedState;->currentColors:[[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 254
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 268
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 269
    iget v1, p0, Lcom/android/settings/hardware/DisplayGamma$SavedState;->controlCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v1, p0, Lcom/android/settings/hardware/DisplayGamma$SavedState;->originalColors:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/settings/hardware/DisplayGamma$SavedState;->controlCount:I

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/settings/hardware/DisplayGamma$SavedState;->currentColors:[[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method
