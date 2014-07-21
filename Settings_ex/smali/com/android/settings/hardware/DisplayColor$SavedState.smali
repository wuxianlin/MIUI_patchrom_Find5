.class Lcom/android/settings/hardware/DisplayColor$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "DisplayColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/hardware/DisplayColor;
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
            "Lcom/android/settings/hardware/DisplayColor$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentColors:[Ljava/lang/String;

.field originalColors:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/android/settings/hardware/DisplayColor$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/hardware/DisplayColor$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/hardware/DisplayColor$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/hardware/DisplayColor$SavedState;->originalColors:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/hardware/DisplayColor$SavedState;->currentColors:[Ljava/lang/String;

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 197
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 207
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/hardware/DisplayColor$SavedState;->originalColors:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/hardware/DisplayColor$SavedState;->currentColors:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 210
    return-void
.end method
