.class Lcom/android/settings/accessibility/ListDialogPreference$1;
.super Ljava/lang/Object;
.source "ListDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ListDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ListDialogPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ListDialogPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    long-to-int v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #calls: Lcom/android/settings/accessibility/ListDialogPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/ListDialogPreference;->access$100(Lcom/android/settings/accessibility/ListDialogPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    long-to-int v2, p4

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/ListDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 153
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 156
    :cond_1
    return-void
.end method
