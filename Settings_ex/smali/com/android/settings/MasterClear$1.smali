.class Lcom/android/settings/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/MasterClear;->mPinConfirmed:Z
    invoke-static {v0, v1}, Lcom/android/settings/MasterClear;->access$002(Lcom/android/settings/MasterClear;Z)Z

    .line 130
    iget-object v0, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    #calls: Lcom/android/settings/MasterClear;->runRestrictionsChallenge()Z
    invoke-static {v0}, Lcom/android/settings/MasterClear;->access$100(Lcom/android/settings/MasterClear;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    const/16 v1, 0x37

    #calls: Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings/MasterClear;->access$200(Lcom/android/settings/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    #calls: Lcom/android/settings/MasterClear;->showFinalConfirmation()V
    invoke-static {v0}, Lcom/android/settings/MasterClear;->access$300(Lcom/android/settings/MasterClear;)V

    goto :goto_0
.end method
