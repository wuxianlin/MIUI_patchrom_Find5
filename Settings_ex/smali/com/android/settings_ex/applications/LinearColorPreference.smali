.class public Lcom/android/settings_ex/applications/LinearColorPreference;
.super Landroid/preference/Preference;
.source "LinearColorPreference.java"


# instance fields
.field mColoredRegions:I

.field mGreenRatio:F

.field mOnRegionTappedListener:Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

.field mRedRatio:F

.field mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mColoredRegions:I

    .line 33
    const v0, 0x7f040098

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/LinearColorPreference;->setLayoutResource(I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 57
    const v1, 0x7f0d018a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/LinearColorBar;

    .line 59
    .local v0, colors:Lcom/android/settings_ex/applications/LinearColorBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LinearColorBar;->setShowIndicator(Z)V

    .line 60
    const v1, -0x55afd0

    const v2, -0x5555d0

    const v3, -0xcf55b0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/LinearColorBar;->setColors(III)V

    .line 61
    iget v1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mRedRatio:F

    iget v2, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mYellowRatio:F

    iget v3, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mGreenRatio:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 62
    iget v1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mColoredRegions:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LinearColorBar;->setColoredRegions(I)V

    .line 63
    iget-object v1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mOnRegionTappedListener:Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LinearColorBar;->setOnRegionTappedListener(Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;)V

    .line 64
    return-void
.end method

.method public setColoredRegions(I)V
    .locals 0
    .parameter "regions"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mColoredRegions:I

    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorPreference;->notifyChanged()V

    .line 51
    return-void
.end method

.method public setOnRegionTappedListener(Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mOnRegionTappedListener:Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorPreference;->notifyChanged()V

    .line 46
    return-void
.end method

.method public setRatios(FFF)V
    .locals 0
    .parameter "red"
    .parameter "yellow"
    .parameter "green"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mRedRatio:F

    .line 38
    iput p2, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mYellowRatio:F

    .line 39
    iput p3, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mGreenRatio:F

    .line 40
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorPreference;->notifyChanged()V

    .line 41
    return-void
.end method
