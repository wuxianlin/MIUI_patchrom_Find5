.class Lcom/android/settings_ex/RingerVolumePreference$5$3;
.super Ljava/lang/Object;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RingerVolumePreference$5;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/RingerVolumePreference$5;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RingerVolumePreference$5;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/settings_ex/RingerVolumePreference$5$3;->this$1:Lcom/android/settings_ex/RingerVolumePreference$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference$5$3;->this$1:Lcom/android/settings_ex/RingerVolumePreference$5;

    iget-object v0, v0, Lcom/android/settings_ex/RingerVolumePreference$5;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    #getter for: Lcom/android/settings_ex/RingerVolumePreference;->mWaiverDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings_ex/RingerVolumePreference;->access$400(Lcom/android/settings_ex/RingerVolumePreference;)Landroid/app/Dialog;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference$5$3;->this$1:Lcom/android/settings_ex/RingerVolumePreference$5;

    iget-object v0, v0, Lcom/android/settings_ex/RingerVolumePreference$5;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    #getter for: Lcom/android/settings_ex/RingerVolumePreference;->mDialogClicked:Z
    invoke-static {v0}, Lcom/android/settings_ex/RingerVolumePreference;->access$300(Lcom/android/settings_ex/RingerVolumePreference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference$5$3;->this$1:Lcom/android/settings_ex/RingerVolumePreference$5;

    iget-object v0, v0, Lcom/android/settings_ex/RingerVolumePreference$5;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    #getter for: Lcom/android/settings_ex/RingerVolumePreference;->mSafeHeadsetVolume:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/RingerVolumePreference;->access$600(Lcom/android/settings_ex/RingerVolumePreference;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference$5$3;->this$1:Lcom/android/settings_ex/RingerVolumePreference$5;

    iget-object v0, v0, Lcom/android/settings_ex/RingerVolumePreference$5;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/RingerVolumePreference;->mWaiverDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/RingerVolumePreference;->access$402(Lcom/android/settings_ex/RingerVolumePreference;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 358
    :cond_1
    return-void
.end method
