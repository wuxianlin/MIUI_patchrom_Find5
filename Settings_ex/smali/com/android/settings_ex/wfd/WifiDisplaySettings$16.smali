.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .parameter "router"
    .parameter "info"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    #calls: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 640
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .parameter "router"
    .parameter "info"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    #calls: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 645
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .parameter "router"
    .parameter "info"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    #calls: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 650
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .parameter "router"
    .parameter "type"
    .parameter "info"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    #calls: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 655
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .parameter "router"
    .parameter "type"
    .parameter "info"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    #calls: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 660
    return-void
.end method
