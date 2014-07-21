.class Lcom/koushikdutta/superuser/PinViewHelper$4;
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

.field final synthetic val$password:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/PinViewHelper;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/koushikdutta/superuser/PinViewHelper$4;->this$0:Lcom/koushikdutta/superuser/PinViewHelper;

    iput-object p2, p0, Lcom/koushikdutta/superuser/PinViewHelper$4;->val$password:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/koushikdutta/superuser/PinViewHelper$4;->this$0:Lcom/koushikdutta/superuser/PinViewHelper;

    iget-object v1, p0, Lcom/koushikdutta/superuser/PinViewHelper$4;->val$password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/PinViewHelper;->onEnter(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/koushikdutta/superuser/PinViewHelper$4;->val$password:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method
