.class Lcom/android/settings_ex/users/AppRestrictionsFragment$3;
.super Ljava/lang/Thread;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/AppRestrictionsFragment;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    #calls: Lcom/android/settings_ex/users/AppRestrictionsFragment;->applyUserAppsStates()V
    invoke-static {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->access$100(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V

    .line 325
    return-void
.end method
