.class public Lcom/android/settings/location/RadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/location/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/location/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/location/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/location/RadioButtonPreference;->mListener:Lcom/android/settings/location/RadioButtonPreference$OnClickListener;

    .line 46
    const v0, 0x7f0400a5

    invoke-virtual {p0, v0}, Lcom/android/settings/location/RadioButtonPreference;->setWidgetLayoutResource(I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 72
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    .local v0, title:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 75
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/location/RadioButtonPreference;->mListener:Lcom/android/settings/location/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/location/RadioButtonPreference;->mListener:Lcom/android/settings/location/RadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/location/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings/location/RadioButtonPreference;)V

    .line 66
    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/location/RadioButtonPreference;->mListener:Lcom/android/settings/location/RadioButtonPreference$OnClickListener;

    .line 59
    return-void
.end method
