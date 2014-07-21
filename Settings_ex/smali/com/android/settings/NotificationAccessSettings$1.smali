.class Lcom/android/settings/NotificationAccessSettings$1;
.super Landroid/database/ContentObserver;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationAccessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationAccessSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/NotificationAccessSettings$1;->this$0:Lcom/android/settings/NotificationAccessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings$1;->this$0:Lcom/android/settings/NotificationAccessSettings;

    invoke-virtual {v0}, Lcom/android/settings/NotificationAccessSettings;->updateList()V

    .line 72
    return-void
.end method
