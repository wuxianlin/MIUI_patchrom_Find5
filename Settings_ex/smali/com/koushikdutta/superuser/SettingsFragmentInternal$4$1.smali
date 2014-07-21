.class Lcom/koushikdutta/superuser/SettingsFragmentInternal$4$1;
.super Ljava/lang/Object;
.source "SettingsFragmentInternal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 164
    packed-switch p2, :pswitch_data_0

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->update()V

    .line 179
    return-void

    .line 166
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->setSuperuserAccess(I)V

    goto :goto_0

    .line 169
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->setSuperuserAccess(I)V

    goto :goto_0

    .line 172
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->setSuperuserAccess(I)V

    goto :goto_0

    .line 175
    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->setSuperuserAccess(I)V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
