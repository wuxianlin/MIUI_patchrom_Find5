.class final Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;
.super Lcom/android/internal/policy/IKeyguardExitCallback$Stub;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardExitDelegate"
.end annotation


# instance fields
.field private mOnKeyguardExitResult:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 0
    .parameter
    .parameter "onKeyguardExitResult"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 91
    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .locals 1
    .parameter "success"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 99
    :cond_0
    return-void
.end method
