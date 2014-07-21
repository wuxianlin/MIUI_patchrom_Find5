.class Lcom/android/settings/tts/TtsEnginePreference$5;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEnginePreference;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference$5;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    iput-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference$5;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference$5;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 234
    return-void
.end method
