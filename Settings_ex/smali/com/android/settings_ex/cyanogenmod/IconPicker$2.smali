.class Lcom/android/settings_ex/cyanogenmod/IconPicker$2;
.super Ljava/lang/Object;
.source "IconPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cyanogenmod/IconPicker;->showChosen(ILjava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/IconPicker;

.field final synthetic val$adapter:Lcom/android/settings_ex/cyanogenmod/IconPicker$IconAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cyanogenmod/IconPicker;Lcom/android/settings_ex/cyanogenmod/IconPicker$IconAdapter;ILandroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$2;->this$0:Lcom/android/settings_ex/cyanogenmod/IconPicker;

    iput-object p2, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$2;->val$adapter:Lcom/android/settings_ex/cyanogenmod/IconPicker$IconAdapter;

    iput p3, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$2;->val$type:I

    iput-object p4, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
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
    .line 120
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "resource_name"

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$2;->val$adapter:Lcom/android/settings_ex/cyanogenmod/IconPicker$IconAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings_ex/cyanogenmod/IconPicker$IconAdapter;->getItemReference(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$2;->this$0:Lcom/android/settings_ex/cyanogenmod/IconPicker;

    #getter for: Lcom/android/settings_ex/cyanogenmod/IconPicker;->mIconListener:Lcom/android/settings_ex/cyanogenmod/IconPicker$OnIconPickListener;
    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/IconPicker;->access$100(Lcom/android/settings_ex/cyanogenmod/IconPicker;)Lcom/android/settings_ex/cyanogenmod/IconPicker$OnIconPickListener;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$2;->val$type:I

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/android/settings_ex/cyanogenmod/IconPicker$OnIconPickListener;->iconPicked(IILandroid/content/Intent;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 124
    return-void
.end method
