.class Lcom/koushikdutta/superuser/SettingsFragmentInternal$9;
.super Lcom/koushikdutta/widgets/ListItem;
.source "SettingsFragmentInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragmentInternal;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$9;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 318
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$9;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v3}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080019

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 320
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    .line 321
    .local v2, seconds:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 322
    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$9;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v4, 0x7f080024

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v1, 0x1

    mul-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    new-instance v3, Lcom/koushikdutta/superuser/SettingsFragmentInternal$9$1;

    invoke-direct {v3, p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$9$1;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal$9;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 332
    return-void
.end method
