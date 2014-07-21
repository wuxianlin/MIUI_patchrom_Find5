.class Lcom/koushikdutta/superuser/SettingsFragmentInternal$2;
.super Lcom/koushikdutta/superuser/PinViewHelper;
.source "SettingsFragmentInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragmentInternal;->setPin()V
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
    .line 78
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$2;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    iput-object p5, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$2;->val$d:Landroid/app/Dialog;

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/superuser/PinViewHelper;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/koushikdutta/superuser/PinViewHelper;->onCancel()V

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$2;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 88
    return-void
.end method

.method public onEnter(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/koushikdutta/superuser/PinViewHelper;->onEnter(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$2;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->confirmPin(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$2;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 83
    return-void
.end method
