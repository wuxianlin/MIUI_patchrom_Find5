.class Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "HWValueSliderPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/hardware/HWValueSliderPreference;
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
            "Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field originalValue:I

.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 243
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;->value:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;->originalValue:I

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 240
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 250
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 251
    iget v0, p0, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;->originalValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    return-void
.end method
