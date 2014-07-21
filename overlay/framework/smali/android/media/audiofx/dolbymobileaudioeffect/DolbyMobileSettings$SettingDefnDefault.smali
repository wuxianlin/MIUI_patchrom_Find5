.class public Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;
.super Ljava/lang/Object;
.source "DolbyMobileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SettingDefnDefault"
.end annotation


# instance fields
.field public setting:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;

.field public value:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "feature"
    .parameter "parameter"

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(III)V

    .line 324
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "feature"
    .parameter "parameter"
    .parameter "value"

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;

    invoke-direct {v0, p1, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;-><init>(II)V

    iput-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;->setting:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;

    .line 328
    iput p3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;->value:I

    .line 329
    return-void
.end method
