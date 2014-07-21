.class Lcom/android/settings/RingerVolumePreference$5$2;
.super Ljava/lang/Object;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RingerVolumePreference$5;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/RingerVolumePreference$5;


# direct methods
.method constructor <init>(Lcom/android/settings/RingerVolumePreference$5;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/settings/RingerVolumePreference$5$2;->this$1:Lcom/android/settings/RingerVolumePreference$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference$5$2;->this$1:Lcom/android/settings/RingerVolumePreference$5;

    iget-object v0, v0, Lcom/android/settings/RingerVolumePreference$5;->this$0:Lcom/android/settings/RingerVolumePreference;

    #getter for: Lcom/android/settings/RingerVolumePreference;->mWaiverDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/RingerVolumePreference;->access$400(Lcom/android/settings/RingerVolumePreference;)Landroid/app/Dialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 337
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference$5$2;->this$1:Lcom/android/settings/RingerVolumePreference$5;

    iget-object v0, v0, Lcom/android/settings/RingerVolumePreference$5;->this$0:Lcom/android/settings/RingerVolumePreference;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/RingerVolumePreference;->mDialogClicked:Z
    invoke-static {v0, v1}, Lcom/android/settings/RingerVolumePreference;->access$302(Lcom/android/settings/RingerVolumePreference;Z)Z

    .line 339
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference$5$2;->this$1:Lcom/android/settings/RingerVolumePreference$5;

    iget-object v0, v0, Lcom/android/settings/RingerVolumePreference$5;->this$0:Lcom/android/settings/RingerVolumePreference;

    invoke-virtual {v0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safe_headset_volume"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    :cond_0
    return-void
.end method
