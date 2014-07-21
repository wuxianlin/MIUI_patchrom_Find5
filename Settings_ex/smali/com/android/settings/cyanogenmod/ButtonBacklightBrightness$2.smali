.class Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$2;
.super Ljava/lang/Object;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;

    #getter for: Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->access$000(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;

    #getter for: Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->access$100(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;

    #getter for: Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->access$100(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->reset()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;

    #getter for: Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->access$200(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;

    #getter for: Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->access$200(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->reset()V

    .line 145
    :cond_1
    return-void
.end method
