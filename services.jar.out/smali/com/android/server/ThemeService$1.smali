.class Lcom/android/server/ThemeService$1;
.super Landroid/content/BroadcastReceiver;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThemeService;


# direct methods
.method constructor <init>(Lcom/android/server/ThemeService;)V
    .locals 0

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z
    invoke-static {v1}, Lcom/android/server/ThemeService;->access$900(Lcom/android/server/ThemeService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1018
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1019
    .local v0, "components":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "mods_homescreen"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    iget-object v1, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    # invokes: Lcom/android/server/ThemeService;->updateProvider(Ljava/util/Map;)V
    invoke-static {v1, v0}, Lcom/android/server/ThemeService;->access$1000(Lcom/android/server/ThemeService;Ljava/util/Map;)V

    .line 1024
    .end local v0    # "components":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v1, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z
    invoke-static {v1, v2}, Lcom/android/server/ThemeService;->access$902(Lcom/android/server/ThemeService;Z)Z

    goto :goto_0
.end method
