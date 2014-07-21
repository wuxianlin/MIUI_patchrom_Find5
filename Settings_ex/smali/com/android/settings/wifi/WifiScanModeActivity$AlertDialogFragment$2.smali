.class Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$2;
.super Ljava/lang/Object;
.source "WifiScanModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$2;->this$0:Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$2;->this$0:Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiScanModeActivity;

    #calls: Lcom/android/settings/wifi/WifiScanModeActivity;->doPositiveClick()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiScanModeActivity;->access$100(Lcom/android/settings/wifi/WifiScanModeActivity;)V

    .line 133
    return-void
.end method
