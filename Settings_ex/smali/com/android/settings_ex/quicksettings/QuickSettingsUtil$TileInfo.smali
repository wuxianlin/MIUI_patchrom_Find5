.class public Lcom/android/settings_ex/quicksettings/QuickSettingsUtil$TileInfo;
.super Ljava/lang/Object;
.source "QuickSettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/quicksettings/QuickSettingsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileInfo"
.end annotation


# instance fields
.field private mIcon:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mTitleResId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "titleResId"
    .parameter "icon"

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/android/settings_ex/quicksettings/QuickSettingsUtil$TileInfo;->mId:Ljava/lang/String;

    .line 351
    iput p2, p0, Lcom/android/settings_ex/quicksettings/QuickSettingsUtil$TileInfo;->mTitleResId:I

    .line 352
    iput-object p3, p0, Lcom/android/settings_ex/quicksettings/QuickSettingsUtil$TileInfo;->mIcon:Ljava/lang/String;

    .line 353
    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/quicksettings/QuickSettingsUtil$TileInfo;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings_ex/quicksettings/QuickSettingsUtil$TileInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/android/settings_ex/quicksettings/QuickSettingsUtil$TileInfo;->mTitleResId:I

    return v0
.end method
