.class public Lcom/android/settings_ex/Settings$AppOpsSummaryActivity;
.super Lcom/android/settings_ex/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppOpsSummaryActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1216
    invoke-direct {p0}, Lcom/android/settings_ex/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1219
    const-class v0, Lcom/android/settings_ex/applications/AppOpsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    const/4 v0, 0x1

    .line 1222
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/Settings;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
