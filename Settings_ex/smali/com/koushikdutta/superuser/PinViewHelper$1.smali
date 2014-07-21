.class Lcom/koushikdutta/superuser/PinViewHelper$1;
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

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/PinViewHelper;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/koushikdutta/superuser/PinViewHelper$1;->this$0:Lcom/koushikdutta/superuser/PinViewHelper;

    iput-object p2, p0, Lcom/koushikdutta/superuser/PinViewHelper$1;->val$password:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/koushikdutta/superuser/PinViewHelper$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/koushikdutta/superuser/PinViewHelper$1;->val$password:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/koushikdutta/superuser/PinViewHelper$1;->val$password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/superuser/PinViewHelper$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
