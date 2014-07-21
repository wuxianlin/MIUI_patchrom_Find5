.class Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;
.super Landroid/app/AlertDialog;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowSplitDialog"
.end annotation


# instance fields
.field private mLabel:Landroid/widget/TextView;

.field private mMaxLux:I

.field private mMinLux:I

.field private mPosition:I

.field private mValue:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "position"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    .line 622
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 623
    iput p3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mPosition:I

    .line 624
    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 612
    iget v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mMinLux:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 612
    iget v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mMaxLux:I

    return v0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mValue:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog$1;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 702
    return-void
.end method

.method private initValues()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 669
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$700(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mPosition:I

    invoke-virtual {v1, v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 671
    .local v0, row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    iget v1, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mMinLux:I

    .line 672
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$700(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mPosition:I

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->isLastItem(I)Z
    invoke-static {v1, v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->access$400(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mMaxLux:I

    .line 674
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801cc

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mMinLux:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    iget v6, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mMaxLux:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mValue:Landroid/widget/EditText;

    iget v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mMinLux:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 677
    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$700(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v1, v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 662
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 664
    .local v0, splitLux:I
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$700(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mPosition:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->splitRow(II)V

    .line 666
    .end local v0           #splitLux:I
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040014

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 629
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 631
    .local v0, context:Landroid/content/Context;
    const v2, 0x7f0d0022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mLabel:Landroid/widget/TextView;

    .line 632
    const v2, 0x7f0d0023

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mValue:Landroid/widget/EditText;

    .line 634
    const v2, 0x7f0801c6

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->setTitle(I)V

    .line 635
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->setCancelable(Z)V

    .line 636
    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->setView(Landroid/view/View;)V

    .line 638
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->initValues()V

    .line 639
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->initListener()V

    .line 641
    const/4 v2, -0x1

    const v3, 0x7f0801f0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 642
    const/4 v2, -0x2

    const v3, 0x7f0804f7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 644
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 645
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 656
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 657
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mValue:Landroid/widget/EditText;

    const-string v1, "AutoBrightnessCustomize:Split:splitLux"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 658
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 649
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 650
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "AutoBrightnessCustomize:Split:splitLux"

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSplitDialog;->mValue:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 651
    return-object v0
.end method
