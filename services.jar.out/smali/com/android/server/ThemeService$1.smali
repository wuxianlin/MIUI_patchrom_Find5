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
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    #getter for: Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z
    invoke-static {v1}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 753
    .local v0, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "mods_homescreen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v1, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    const-string v2, ""

    #calls: Lcom/android/server/ThemeService;->updateProvider(Ljava/util/List;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/android/server/ThemeService;->access$400(Lcom/android/server/ThemeService;Ljava/util/List;Ljava/lang/String;)V

    .line 758
    .end local v0           #components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z
    invoke-static {v1, v2}, Lcom/android/server/ThemeService;->access$302(Lcom/android/server/ThemeService;Z)Z

    goto :goto_0
.end method
