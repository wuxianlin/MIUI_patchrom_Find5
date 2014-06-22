.class final Lcom/android/server/power/ShutdownThread$4;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 199
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 200
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$002(Z)Z

    .line 201
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 203
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
