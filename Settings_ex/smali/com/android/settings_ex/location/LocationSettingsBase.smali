.class public abstract Lcom/android/settings_ex/location/LocationSettingsBase;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LocationSettingsBase.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings_ex/SettingsPreferenceFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mActive:Z

.field private mCurrentMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mActive:Z

    return-void
.end method

.method protected static isRestricted(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 76
    .local v0, um:Landroid/os/UserManager;
    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected static sendModeChangingIntent(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CURRENT_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v1, "NEW_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 57
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 117
    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    .line 123
    :goto_0
    return-object v0

    .line 119
    :pswitch_0
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "(name=?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "location_mode"

    aput-object v7, v5, v6

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->refreshLocationMode()V

    .line 130
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/location/LocationSettingsBase;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public abstract onModeChanged(IZ)V
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mActive:Z

    .line 69
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mActive:Z

    .line 63
    return-void
.end method

.method public refreshLocationMode()V
    .locals 4

    .prologue
    .line 107
    iget-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mActive:Z

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, mode:I
    iput v0, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mCurrentMode:I

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/location/LocationSettingsBase;->isRestricted(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 113
    .end local v0           #mode:I
    :cond_0
    return-void
.end method

.method public setLocationMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/location/LocationSettingsBase;->isRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    const-string v0, "LocationSettingsBase"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "LocationSettingsBase"

    const-string v1, "Restricted user, not setting location mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 88
    iget-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mActive:Z

    if-eqz v0, :cond_1

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/location/LocationSettingsBase;->mCurrentMode:I

    invoke-static {v0, v1, p1}, Lcom/android/settings_ex/location/LocationSettingsBase;->sendModeChangingIntent(Landroid/content/Context;II)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->refreshLocationMode()V

    goto :goto_0
.end method
