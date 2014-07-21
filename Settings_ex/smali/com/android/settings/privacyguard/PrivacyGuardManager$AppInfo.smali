.class public final Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
.super Ljava/lang/Object;
.source "PrivacyGuardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacyguard/PrivacyGuardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppInfo"
.end annotation


# instance fields
.field enabled:Z

.field packageName:Ljava/lang/String;

.field privacyGuardEnabled:Z

.field title:Ljava/lang/String;

.field uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
