.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2$1;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2$1;->this$1:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2$1;->this$1:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08066e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method
