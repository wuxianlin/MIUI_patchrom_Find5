.class Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;
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
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;II)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;II)V

    .line 215
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->update()V

    .line 216
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 222
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080035

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 224
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v4, 0x7f080039

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v4, 0x7f08003a

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v4, 0x7f08003b

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 225
    .local v1, items:[Ljava/lang/String;
    new-instance v2, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5$1;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 243
    return-void
.end method

.method update()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 188
    const/4 v0, -0x1

    .line 189
    .local v0, res:I
    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/superuser/util/Settings;->getMultiuserMode(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 201
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/superuser/Helper;->isAdminUser(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->setEnabled(Z)Lcom/koushikdutta/widgets/ListItem;

    .line 203
    const-string v1, ""

    .line 204
    .local v1, s:Ljava/lang/String;
    if-eq v0, v3, :cond_0

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v3, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v4, 0x7f08003c

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->setSummary(Ljava/lang/String;)Lcom/koushikdutta/widgets/ListItem;

    .line 212
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 191
    :pswitch_0
    const v0, 0x7f080037

    .line 192
    goto :goto_0

    .line 194
    :pswitch_1
    const v0, 0x7f080036

    .line 195
    goto :goto_0

    .line 197
    :pswitch_2
    const v0, 0x7f080038

    goto :goto_0

    .line 209
    :cond_2
    if-eq v0, v3, :cond_1

    .line 210
    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_1

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
