.class Lcom/android/settings/users/AppRestrictionsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$000(Lcom/android/settings/users/AppRestrictionsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #calls: Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppsStates()V
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$100(Lcom/android/settings/users/AppRestrictionsFragment;)V

    .line 132
    :cond_0
    return-void
.end method
