.class Lcom/android/settings/quicksettings/QuickSettingsTiles$TileAdapter$Entry;
.super Ljava/lang/Object;
.source "QuickSettingsTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/quicksettings/QuickSettingsTiles$TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field public final tile:Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

.field public final tileTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;Ljava/lang/String;)V
    .locals 0
    .parameter "tile"
    .parameter "tileTitle"

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$TileAdapter$Entry;->tile:Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    .line 293
    iput-object p2, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$TileAdapter$Entry;->tileTitle:Ljava/lang/String;

    .line 294
    return-void
.end method
