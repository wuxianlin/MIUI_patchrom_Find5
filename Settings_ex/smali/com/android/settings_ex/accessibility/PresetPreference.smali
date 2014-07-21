.class public Lcom/android/settings_ex/accessibility/PresetPreference;
.super Lcom/android/settings_ex/accessibility/ListDialogPreference;
.source "PresetPreference.java"


# instance fields
.field private final mCaptioningManager:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/PresetPreference;->setDialogLayoutResource(I)V

    .line 38
    const v0, 0x7f0400a9

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/PresetPreference;->setListItemLayoutResource(I)V

    .line 40
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/PresetPreference;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 42
    return-void
.end method


# virtual methods
.method protected onBindListItem(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "index"

    .prologue
    .line 52
    const v4, 0x7f0d00cd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    .line 53
    .local v0, previewText:Lcom/android/internal/widget/SubtitleView;
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accessibility/PresetPreference;->getValueAt(I)I

    move-result v3

    .line 54
    .local v3, value:I
    iget-object v4, p0, Lcom/android/settings_ex/accessibility/PresetPreference;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v4, v0, v3}, Lcom/android/settings_ex/accessibility/ToggleCaptioningPreferenceFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;I)V

    .line 57
    const/high16 v4, 0x42c0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accessibility/PresetPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 60
    .local v2, title:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 61
    const v4, 0x7f0d0055

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, summary:Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .end local v1           #summary:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/PresetPreference;->getValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

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
