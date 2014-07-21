.class Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;
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
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;III)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;III)V

    .line 151
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->update()V

    .line 152
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 158
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08004b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 160
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v4, 0x7f08004c

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v4, 0x7f08004d

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v4, 0x7f08004e

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v4, 0x7f08004f

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 161
    .local v1, items:[Ljava/lang/String;
    new-instance v2, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4$1;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 182
    return-void
.end method

.method update()V
    .locals 2

    .prologue
    const v1, 0x7f08004f

    .line 132
    invoke-static {}, Lcom/koushikdutta/superuser/util/Settings;->getSuperuserAccess()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 146
    invoke-virtual {p0, v1}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    .line 149
    :goto_0
    return-void

    .line 134
    :pswitch_0
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 137
    :pswitch_1
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 140
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 143
    :pswitch_3
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
