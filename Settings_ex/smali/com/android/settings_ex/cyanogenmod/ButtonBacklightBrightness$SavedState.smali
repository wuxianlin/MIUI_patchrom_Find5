.class Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "ButtonBacklightBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;
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
            "Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field button:I

.field keyboard:I

.field timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$SavedState;->timeout:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$SavedState;->button:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$SavedState;->keyboard:I

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 313
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 314
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 326
    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$SavedState;->timeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$SavedState;->button:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$SavedState;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    return-void
.end method
