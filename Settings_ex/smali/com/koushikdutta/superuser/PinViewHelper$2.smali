.class Lcom/koushikdutta/superuser/PinViewHelper$2;
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
    .line 46
    iput-object p1, p0, Lcom/koushikdutta/superuser/PinViewHelper$2;->this$0:Lcom/koushikdutta/superuser/PinViewHelper;

    iput-object p2, p0, Lcom/koushikdutta/superuser/PinViewHelper$2;->val$password:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/koushikdutta/superuser/PinViewHelper$2;->val$password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, curPass:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/koushikdutta/superuser/PinViewHelper$2;->val$password:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    return-void
.end method
