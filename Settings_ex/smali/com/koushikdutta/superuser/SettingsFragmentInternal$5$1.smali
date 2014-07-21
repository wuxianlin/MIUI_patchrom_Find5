.class Lcom/koushikdutta/superuser/SettingsFragmentInternal$5$1;
.super Ljava/lang/Object;
.source "SettingsFragmentInternal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 228
    packed-switch p2, :pswitch_data_0

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->update()V

    .line 240
    return-void

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setMultiuserMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setMultiuserMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 236
    :pswitch_2
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setMultiuserMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
