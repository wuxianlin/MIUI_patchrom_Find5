.class Lcom/koushikdutta/superuser/PinViewHelper$3;
.super Ljava/lang/Object;
.source "PinViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/PinViewHelper;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/PinViewHelper;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/PinViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/koushikdutta/superuser/PinViewHelper$3;->this$0:Lcom/koushikdutta/superuser/PinViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/koushikdutta/superuser/PinViewHelper$3;->this$0:Lcom/koushikdutta/superuser/PinViewHelper;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/PinViewHelper;->onCancel()V

    .line 61
    return-void
.end method
