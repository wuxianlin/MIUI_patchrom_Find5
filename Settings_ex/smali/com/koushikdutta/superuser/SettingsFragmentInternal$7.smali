.class Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;
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
    .line 258
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;II)V

    .line 274
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;->update()V

    .line 275
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 280
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08002f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 282
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v4, 0x7f080030

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v4, 0x7f080002

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    const v4, 0x7f080001

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 283
    .local v1, items:[Ljava/lang/String;
    new-instance v2, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7$1;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 300
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 301
    return-void
.end method

.method update()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->getAutomaticResponse(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 271
    :goto_0
    return-void

    .line 262
    :pswitch_0
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 265
    :pswitch_1
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 268
    :pswitch_2
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
