.class Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;
.super Lcom/koushikdutta/superuser/PinViewHelper;
.source "SettingsFragmentInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragmentInternal;->checkPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    iput-object p5, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;->val$d:Landroid/app/Dialog;

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/superuser/PinViewHelper;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/koushikdutta/superuser/PinViewHelper;->onCancel()V

    .line 113
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 114
    return-void
.end method

.method public onEnter(Ljava/lang/String;)V
    .locals 4
    .parameter "password"

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/koushikdutta/superuser/PinViewHelper;->onEnter(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/koushikdutta/superuser/util/Settings;->checkPin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-super {p0, p1}, Lcom/koushikdutta/superuser/PinViewHelper;->onEnter(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setPin(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->pinItem:Lcom/koushikdutta/widgets/ListItem;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    .line 104
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v2, 0x7f080055

    invoke-virtual {v1, v2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
