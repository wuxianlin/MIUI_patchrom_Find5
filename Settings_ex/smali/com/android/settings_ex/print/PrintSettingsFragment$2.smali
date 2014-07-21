.class Lcom/android/settings_ex/print/PrintSettingsFragment$2;
.super Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/print/PrintSettingsFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-direct {p0, p2}, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    #calls: Lcom/android/settings_ex/print/PrintSettingsFragment;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->access$100(Lcom/android/settings_ex/print/PrintSettingsFragment;)V

    .line 107
    return-void
.end method
