.class Lcom/koushikdutta/superuser/SettingsFragmentInternal$11$1;
.super Ljava/lang/Object;
.source "SettingsFragmentInternal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$11$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 375
    packed-switch p2, :pswitch_data_0

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$11$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;->update()V

    .line 387
    return-void

    .line 377
    :pswitch_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$11$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setNotificationType(Landroid/content/Context;I)V

    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$11$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setNotificationType(Landroid/content/Context;I)V

    goto :goto_0

    .line 383
    :pswitch_2
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$11$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setNotificationType(Landroid/content/Context;I)V

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
