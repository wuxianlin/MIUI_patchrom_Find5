.class Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog$1;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 689
    const/4 v1, 0x0

    .line 691
    .local v1, ok:Z
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 692
    .local v0, newLux:I
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mMinLux:I
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->access$1800(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;)I

    move-result v3

    if-lt v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mMaxLux:I
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->access$1900(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-gt v0, v3, :cond_1

    const/4 v1, 0x1

    .line 696
    .end local v0           #newLux:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 697
    .local v2, okButton:Landroid/widget/Button;
    if-eqz v2, :cond_0

    .line 698
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 700
    :cond_0
    return-void

    .line 692
    .end local v2           #okButton:Landroid/widget/Button;
    .restart local v0       #newLux:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 693
    .end local v0           #newLux:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 683
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 686
    return-void
.end method
