.class Lcom/android/server/wm/WindowManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService;->mUiContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->access$002(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)Landroid/content/Context;

    .line 306
    return-void
.end method
