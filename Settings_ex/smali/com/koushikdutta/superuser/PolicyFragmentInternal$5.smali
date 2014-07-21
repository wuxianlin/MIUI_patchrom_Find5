.class Lcom/koushikdutta/superuser/PolicyFragmentInternal$5;
.super Ljava/lang/Object;
.source "PolicyFragmentInternal.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/PolicyFragmentInternal;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
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
    .line 294
    iput-object p1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 301
    iget-object v0, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    new-instance v1, Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-direct {v1}, Lcom/koushikdutta/superuser/SettingsFragment;-><init>()V

    iget-object v2, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    const v3, 0x7f080011

    invoke-virtual {v2, v3}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->setContent(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;ZLjava/lang/String;)V

    .line 307
    :goto_0
    return v4

    .line 305
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/superuser/PolicyFragmentInternal$5;->openSettingsNative(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method openSettingsNative(Landroid/view/MenuItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->createSettingsNativeFragment()Lcom/koushikdutta/superuser/SettingsNativeFragment;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->setContent(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;ZLjava/lang/String;)V

    .line 297
    return-void
.end method
