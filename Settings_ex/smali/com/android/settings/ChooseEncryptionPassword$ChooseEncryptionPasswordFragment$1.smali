.class Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$1;
.super Landroid/os/Handler;
.source "ChooseEncryptionPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$1;->this$0:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$1;->this$0:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    invoke-virtual {v1, v0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->updateStage(Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;)V

    .line 119
    :cond_0
    return-void
.end method
