.class public Lcom/android/settings_ex/accessibility/ColorPreference;
.super Lcom/android/settings_ex/accessibility/ListDialogPreference;
.source "ColorPreference.java"


# instance fields
.field private mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

.field private mPreviewEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setDialogLayoutResource(I)V

    .line 43
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setListItemLayoutResource(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected getTitleAt(I)Ljava/lang/CharSequence;
    .locals 10
    .parameter "index"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/settings_ex/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 69
    .local v3, title:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 78
    .end local v3           #title:Ljava/lang/CharSequence;
    :goto_0
    return-object v3

    .line 74
    .restart local v3       #title:Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accessibility/ColorPreference;->getValueAt(I)I

    move-result v4

    .line 75
    .local v4, value:I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 76
    .local v2, r:I
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 77
    .local v1, g:I
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 78
    .local v0, b:I
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080941

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected onBindListItem(Landroid/view/View;I)V
    .locals 7
    .parameter "view"
    .parameter "index"

    .prologue
    .line 114
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accessibility/ColorPreference;->getValueAt(I)I

    move-result v1

    .line 115
    .local v1, argb:I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 117
    .local v0, alpha:I
    const v6, 0x7f0d0054

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 118
    .local v4, swatch:Landroid/widget/ImageView;
    const/16 v6, 0xff

    if-ge v0, v6, :cond_1

    .line 119
    const v6, 0x7f020133

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 124
    :goto_0
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 125
    .local v2, foreground:Landroid/graphics/drawable/Drawable;
    instance-of v6, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_2

    .line 126
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .end local v2           #foreground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 131
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accessibility/ColorPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 132
    .local v5, title:Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 133
    const v6, 0x7f0d0055

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 134
    .local v3, summary:Landroid/widget/TextView;
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .end local v3           #summary:Landroid/widget/TextView;
    :cond_0
    return-void

    .line 121
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 128
    .restart local v2       #foreground:Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings_ex/accessibility/ListDialogPreference;->onBindView(Landroid/view/View;)V

    .line 85
    iget-boolean v3, p0, Lcom/android/settings_ex/accessibility/ColorPreference;->mPreviewEnabled:Z

    if-eqz v3, :cond_0

    .line 86
    const v3, 0x7f0d0165

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 87
    .local v1, previewImage:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->getValue()I

    move-result v0

    .line 88
    .local v0, argb:I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v4, 0xff

    if-ge v3, v4, :cond_1

    .line 89
    const v3, 0x7f020133

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 94
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    if-nez v3, :cond_2

    .line 95
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, p0, Lcom/android/settings_ex/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    .line 96
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 102
    .local v2, summary:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v3, 0x3f80

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 110
    .end local v0           #argb:I
    .end local v1           #previewImage:Landroid/widget/ImageView;
    .end local v2           #summary:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 91
    .restart local v0       #argb:I
    .restart local v1       #previewImage:Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_1

    .line 105
    .restart local v2       #summary:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 108
    :cond_4
    const v3, 0x3e4ccccd

    goto :goto_3
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/settings_ex/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
