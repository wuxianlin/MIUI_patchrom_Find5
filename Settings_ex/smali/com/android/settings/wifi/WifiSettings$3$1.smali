.class Lcom/android/settings/wifi/WifiSettings$3$1;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiSettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings$3;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$3$1;->this$1:Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 235
    const v0, 0x7f0d02fe

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$3$1;->this$1:Lcom/android/settings/wifi/WifiSettings$3;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x2

    #calls: Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 237
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
