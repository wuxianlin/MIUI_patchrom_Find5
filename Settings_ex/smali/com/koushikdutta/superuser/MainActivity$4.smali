.class Lcom/koushikdutta/superuser/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MainActivity;->doInstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/MainActivity;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/koushikdutta/superuser/MainActivity$4;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/koushikdutta/superuser/MainActivity$4;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/MainActivity;->doSystemInstall()V

    .line 238
    return-void
.end method
