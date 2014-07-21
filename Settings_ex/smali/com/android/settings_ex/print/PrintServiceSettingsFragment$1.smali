.class Lcom/android/settings_ex/print/PrintServiceSettingsFragment$1;
.super Lcom/android/settings_ex/print/PrintServiceSettingsFragment$SettingsContentObserver;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-direct {p0, p2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    #calls: Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateUiForServiceState()V
    invoke-static {v0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->access$000(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V

    .line 91
    return-void
.end method
