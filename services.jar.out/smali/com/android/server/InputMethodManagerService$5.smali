.class Lcom/android/server/InputMethodManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/StatusBarManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/InputMethodManagerService;->mUiContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/server/InputMethodManagerService;->access$1202(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;)Landroid/content/Context;

    .line 854
    return-void
.end method
