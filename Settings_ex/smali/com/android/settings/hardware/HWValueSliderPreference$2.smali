.class Lcom/android/settings/hardware/HWValueSliderPreference$2;
.super Ljava/lang/Object;
.source "HWValueSliderPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/hardware/HWValueSliderPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/hardware/HWValueSliderPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/hardware/HWValueSliderPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/hardware/HWValueSliderPreference$2;->this$0:Lcom/android/settings/hardware/HWValueSliderPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/hardware/HWValueSliderPreference$2;->this$0:Lcom/android/settings/hardware/HWValueSliderPreference;

    #getter for: Lcom/android/settings/hardware/HWValueSliderPreference;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/settings/hardware/HWValueSliderPreference;->access$200(Lcom/android/settings/hardware/HWValueSliderPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/hardware/HWValueSliderPreference$2;->this$0:Lcom/android/settings/hardware/HWValueSliderPreference;

    #getter for: Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;
    invoke-static {v1}, Lcom/android/settings/hardware/HWValueSliderPreference;->access$000(Lcom/android/settings/hardware/HWValueSliderPreference;)Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->getDefaultValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/hardware/HWValueSliderPreference$2;->this$0:Lcom/android/settings/hardware/HWValueSliderPreference;

    #getter for: Lcom/android/settings/hardware/HWValueSliderPreference;->mMin:I
    invoke-static {v2}, Lcom/android/settings/hardware/HWValueSliderPreference;->access$100(Lcom/android/settings/hardware/HWValueSliderPreference;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 135
    return-void
.end method
