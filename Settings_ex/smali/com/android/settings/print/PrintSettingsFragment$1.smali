.class Lcom/android/settings/print/PrintSettingsFragment$1;
.super Landroid/os/Handler;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    #calls: Lcom/android/settings/print/PrintSettingsFragment;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$100(Lcom/android/settings/print/PrintSettingsFragment;)V

    .line 99
    return-void
.end method
