.class Lcom/koushikdutta/superuser/SettingsFragmentInternal$12$1;
.super Ljava/lang/Object;
.source "SettingsFragmentInternal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 420
    packed-switch p2, :pswitch_data_0

    .line 425
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setTheme(Landroid/content/Context;I)V

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;->update()V

    .line 429
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;

    iget-object v2, v2, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/koushikdutta/superuser/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 430
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 431
    return-void

    .line 422
    :pswitch_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setTheme(Landroid/content/Context;I)V

    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
