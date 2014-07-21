.class Lcom/koushikdutta/superuser/SettingsFragmentInternal$10;
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
    .line 336
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$10;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;II)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 339
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 340
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$10;->this$0:Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$10;->getChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setLogging(Landroid/content/Context;Z)V

    .line 341
    return-void
.end method
