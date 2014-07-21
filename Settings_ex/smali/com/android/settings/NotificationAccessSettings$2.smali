.class Lcom/android/settings/NotificationAccessSettings$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/settings/NotificationAccessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/NotificationAccessSettings$2;->this$0:Lcom/android/settings/NotificationAccessSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings$2;->this$0:Lcom/android/settings/NotificationAccessSettings;

    invoke-virtual {v0}, Lcom/android/settings/NotificationAccessSettings;->updateList()V

    .line 79
    return-void
.end method
