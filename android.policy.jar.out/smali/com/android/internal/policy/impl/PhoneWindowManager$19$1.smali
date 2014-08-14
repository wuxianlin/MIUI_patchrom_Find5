.class Lcom/android/internal/policy/impl/PhoneWindowManager$19$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$19;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$19;)V
    .locals 0
    .parameter

    .prologue
    .line 4557
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$19$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4561
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$19$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$19;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4562
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$19$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$19;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4563
    monitor-exit v1

    .line 4564
    return-void

    .line 4563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
