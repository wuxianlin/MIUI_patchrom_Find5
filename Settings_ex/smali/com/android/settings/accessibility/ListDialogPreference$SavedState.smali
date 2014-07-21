.class Lcom/android/settings/accessibility/ListDialogPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "ListDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ListDialogPreference;
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
            "Lcom/android/settings/accessibility/ListDialogPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/android/settings/accessibility/ListDialogPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/accessibility/ListDialogPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->value:I

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 302
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 303
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 297
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 298
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    return-void
.end method
