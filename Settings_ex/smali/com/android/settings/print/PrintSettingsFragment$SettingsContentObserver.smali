.class abstract Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SettingsContentObserver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 328
    return-void
.end method


# virtual methods
.method public register(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "contentResolver"

    .prologue
    .line 331
    const-string v0, "enabled_print_services"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 333
    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "contentResolver"

    .prologue
    .line 336
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 337
    return-void
.end method
