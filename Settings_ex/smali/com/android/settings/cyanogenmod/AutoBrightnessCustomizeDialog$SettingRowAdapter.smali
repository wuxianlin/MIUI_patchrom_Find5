.class Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AutoBrightnessCustomizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingRowAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;>;"
    const/4 v0, 0x0

    .line 706
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    .line 707
    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 708
    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->setNotifyOnChange(Z)V

    .line 709
    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 705
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->isLastItem(I)Z

    move-result v0

    return v0
.end method

.method private isLastItem(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canSplitRow(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 716
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->isLastItem(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 722
    :cond_0
    :goto_0
    return v2

    .line 720
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 721
    .local v1, row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 722
    .local v0, next:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    iget v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    iget v4, v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    add-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getBacklightValues()[I
    .locals 4

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getCount()I

    move-result v0

    .line 750
    .local v0, count:I
    new-array v2, v0, [I

    .line 752
    .local v2, values:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 753
    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v3, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    aput v3, v2, v1

    .line 752
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 755
    :cond_0
    return-object v2
.end method

.method public getLuxValues()[I
    .locals 5

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getCount()I

    move-result v0

    .line 739
    .local v0, count:I
    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [I

    .line 741
    .local v2, lux:[I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 742
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v3, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    aput v3, v2, v4

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    :cond_0
    return-object v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 820
    if-nez p2, :cond_0

    .line 821
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040012

    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 823
    new-instance v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$1;)V

    .line 824
    .local v0, holder:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;
    const v3, 0x7f0d001d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->lux:Landroid/widget/TextView;

    .line 825
    const v3, 0x7f0d001e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->backlight:Landroid/widget/SeekBar;

    .line 826
    const v3, 0x7f0d0020

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->percent:Landroid/widget/TextView;

    .line 827
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 829
    iget-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->backlight:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    const/high16 v5, 0x437f

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->brightnessToProgress(F)I
    invoke-static {v4, v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$600(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 830
    iget-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->backlight:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$1;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 854
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 856
    .local v2, row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->isLastItem(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const v1, 0x7f0801c1

    .line 860
    .local v1, resId:I
    :goto_1
    iget-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->lux:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->backlight:Landroid/widget/SeekBar;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 863
    iget-object v3, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->backlight:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    iget v5, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    int-to-float v5, v5

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->brightnessToProgress(F)I
    invoke-static {v4, v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$600(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 864
    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;->updatePercent()V

    .line 866
    return-object p2

    .line 851
    .end local v0           #holder:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;
    .end local v1           #resId:I
    .end local v2           #row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;

    .restart local v0       #holder:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter$Holder;
    goto :goto_0

    .line 856
    .restart local v2       #row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    :cond_1
    const v1, 0x7f0801c0

    goto :goto_1
.end method

.method public initFromSettings([I[I)V
    .locals 5
    .parameter "lux"
    .parameter "values"

    .prologue
    .line 726
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 727
    .local v1, settings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 728
    new-instance v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_1
    aget v4, p2, v0

    invoke-direct {v3, v2, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 728
    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    goto :goto_1

    .line 730
    :cond_1
    new-instance v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    aget v4, p2, v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->clear()V

    .line 733
    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->addAll(Ljava/util/Collection;)V

    .line 734
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->notifyDataSetChanged()V

    .line 735
    return-void
.end method

.method public removeRow(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->remove(Ljava/lang/Object;)V

    .line 786
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->sanitizeValuesAndNotify()V

    goto :goto_0
.end method

.method public sanitizeValuesAndNotify()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 801
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getCount()I

    move-result v0

    .line 803
    .local v0, count:I
    invoke-virtual {p0, v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iput v6, v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    .line 804
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 805
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 806
    .local v2, lastRow:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 808
    .local v3, thisRow:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    iget v4, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    add-int/lit8 v4, v4, 0x1

    iget v5, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    .line 809
    iget v4, v2, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    iget v5, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    .end local v2           #lastRow:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    .end local v3           #thisRow:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #setter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mIsDefault:Z
    invoke-static {v4, v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$2002(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Z)Z

    .line 813
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$700(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->notifyDataSetChanged()V

    .line 814
    return-void
.end method

.method public setLuxForRow(II)V
    .locals 2
    .parameter "position"
    .parameter "newLux"

    .prologue
    .line 790
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 792
    .local v0, row:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->isLastItem(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    if-ne v1, p2, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iput p2, v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    .line 797
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->sanitizeValuesAndNotify()V

    goto :goto_0
.end method

.method public splitRow(II)V
    .locals 5
    .parameter "position"
    .parameter "splitLux"

    .prologue
    .line 759
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->canSplitRow(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 778
    :goto_0
    return-void

    .line 763
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .local v2, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, p1, :cond_1

    .line 765
    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 768
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 769
    .local v1, lastRow:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    new-instance v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v4, v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    invoke-direct {v3, p2, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    add-int/lit8 v0, p1, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 772
    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 775
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->clear()V

    .line 776
    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->addAll(Ljava/util/Collection;)V

    .line 777
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->sanitizeValuesAndNotify()V

    goto :goto_0
.end method
