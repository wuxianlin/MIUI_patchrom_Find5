.class Lcom/koushikdutta/superuser/PolicyFragmentInternal$3;
.super Ljava/lang/Object;
.source "PolicyFragmentInternal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/PolicyFragmentInternal;->showErrorDialog(Lcom/koushikdutta/superuser/db/UidPolicy;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/PolicyFragmentInternal;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$3;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 224
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 225
    return-void
.end method
