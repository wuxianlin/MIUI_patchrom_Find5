.class Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleCaptioningPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->installActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/accessibility/ToggleSwitch;Z)Z
    .locals 4
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_captioning_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    #getter for: Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    #getter for: Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v2

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 148
    return v1

    :cond_0
    move v0, v1

    .line 144
    goto :goto_0

    .line 147
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method
