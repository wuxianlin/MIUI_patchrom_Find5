.class Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$2;
.super Ljava/lang/Object;
.source "EntryEditDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->createDialogView(JLandroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$2;->this$0:Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, contactListIntent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$2;->this$0:Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 162
    return-void
.end method
