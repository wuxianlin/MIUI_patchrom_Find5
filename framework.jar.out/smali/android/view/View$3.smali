.class Landroid/view/View$3;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/View;->destroyLayer(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 13159
    iput-object p1, p0, Landroid/view/View$3;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 13165
    iget-object v0, p0, Landroid/view/View$3;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;
    invoke-static {v0}, Landroid/view/View;->access$2400(Landroid/view/View;)Landroid/view/HardwareLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    .line 13166
    iget-object v0, p0, Landroid/view/View$3;->this$0:Landroid/view/View;

    const/4 v1, 0x0

    #setter for: Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;
    invoke-static {v0, v1}, Landroid/view/View;->access$2402(Landroid/view/View;Landroid/view/HardwareLayer;)Landroid/view/HardwareLayer;

    .line 13168
    iget-object v0, p0, Landroid/view/View$3;->this$0:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 13169
    iget-object v0, p0, Landroid/view/View$3;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateParentCaches()V

    .line 13170
    return-void
.end method
