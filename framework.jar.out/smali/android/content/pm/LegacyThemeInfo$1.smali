.class final Landroid/content/pm/LegacyThemeInfo$1;
.super Ljava/lang/Object;
.source "LegacyThemeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LegacyThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/content/pm/LegacyThemeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/LegacyThemeInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 198
    new-instance v0, Landroid/content/pm/LegacyThemeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/LegacyThemeInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/LegacyThemeInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Landroid/content/pm/LegacyThemeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/LegacyThemeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/LegacyThemeInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 202
    new-array v0, p1, [Landroid/content/pm/LegacyThemeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Landroid/content/pm/LegacyThemeInfo$1;->newArray(I)[Landroid/content/pm/LegacyThemeInfo;

    move-result-object v0

    return-object v0
.end method
