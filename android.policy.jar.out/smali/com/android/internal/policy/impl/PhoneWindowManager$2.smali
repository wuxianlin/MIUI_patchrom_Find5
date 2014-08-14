.class Lcom/android/internal/policy/impl/PhoneWindowManager$2;
.super Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEdgeGestureActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;I)V
    .locals 3
    .parameter "touchX"
    .parameter "touchY"
    .parameter "position"
    .parameter "flags"

    .prologue
    .line 751
    const/4 v0, 0x0

    .line 753
    .local v0, target:Landroid/view/WindowManagerPolicy$WindowState;
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->TOP:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_1

    .line 754
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 764
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 765
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 766
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->dropEventsUntilLift()Z

    .line 767
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mEdgeListenerActivated:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$302(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 771
    :goto_1
    return-void

    .line 755
    :cond_1
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->BOTTOM:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v1, :cond_2

    .line 756
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 757
    :cond_2
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->LEFT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarLeftInLandscape:Z

    if-eqz v1, :cond_3

    .line 759
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 760
    :cond_3
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->RIGHT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-nez v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 769
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->restoreListenerState()V

    goto :goto_1
.end method
