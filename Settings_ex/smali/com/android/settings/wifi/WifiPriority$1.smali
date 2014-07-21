.class Lcom/android/settings/wifi/WifiPriority$1;
.super Ljava/lang/Object;
.source "WifiPriority.java"

# interfaces
.implements Lcom/android/settings/cyanogenmod/TouchInterceptor$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiPriority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiPriority;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPriority;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPriority$1;->this$0:Lcom/android/settings/wifi/WifiPriority;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 44
    if-ne p1, p2, :cond_0

    .line 67
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPriority$1;->this$0:Lcom/android/settings/wifi/WifiPriority;

    #getter for: Lcom/android/settings/wifi/WifiPriority;->mAdapter:Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiPriority;->access$000(Lcom/android/settings/wifi/WifiPriority;)Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter;->getNetworks()Ljava/util/List;

    move-result-object v2

    .line 48
    .local v2, mNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 49
    .local v4, o:Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v2, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 53
    .local v0, cc:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 54
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 55
    .local v3, network:Landroid/net/wifi/WifiConfiguration;
    sub-int v5, v0, v1

    iput v5, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 58
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPriority$1;->this$0:Lcom/android/settings/wifi/WifiPriority;

    #getter for: Lcom/android/settings/wifi/WifiPriority;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiPriority;->access$100(Lcom/android/settings/wifi/WifiPriority;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    .end local v3           #network:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPriority$1;->this$0:Lcom/android/settings/wifi/WifiPriority;

    #getter for: Lcom/android/settings/wifi/WifiPriority;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiPriority;->access$100(Lcom/android/settings/wifi/WifiPriority;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 65
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPriority$1;->this$0:Lcom/android/settings/wifi/WifiPriority;

    #getter for: Lcom/android/settings/wifi/WifiPriority;->mAdapter:Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiPriority;->access$000(Lcom/android/settings/wifi/WifiPriority;)Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter;

    move-result-object v5

    #calls: Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter;->reloadNetworks()V
    invoke-static {v5}, Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter;->access$200(Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter;)V

    .line 66
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPriority$1;->this$0:Lcom/android/settings/wifi/WifiPriority;

    #getter for: Lcom/android/settings/wifi/WifiPriority;->mNetworksListView:Lcom/android/settings/cyanogenmod/TouchInterceptor;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiPriority;->access$300(Lcom/android/settings/wifi/WifiPriority;)Lcom/android/settings/cyanogenmod/TouchInterceptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/cyanogenmod/TouchInterceptor;->invalidateViews()V

    goto :goto_0
.end method
