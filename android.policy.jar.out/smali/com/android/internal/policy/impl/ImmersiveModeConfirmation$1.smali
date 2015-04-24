.class Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;
.super Landroid/content/BroadcastReceiver;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mUiContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$102(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;Landroid/content/Context;)Landroid/content/Context;

    .line 83
    return-void
.end method
