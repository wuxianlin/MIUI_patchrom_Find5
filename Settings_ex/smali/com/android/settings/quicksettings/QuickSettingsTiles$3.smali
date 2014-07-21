.class Lcom/android/settings/quicksettings/QuickSettingsTiles$3;
.super Ljava/lang/Object;
.source "QuickSettingsTiles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/quicksettings/QuickSettingsTiles;->resetTiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;


# direct methods
.method constructor <init>(Lcom/android/settings/quicksettings/QuickSettingsTiles;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$3;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$3;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    invoke-virtual {v0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$3;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    #getter for: Lcom/android/settings/quicksettings/QuickSettingsTiles;->mConfigRibbon:Z
    invoke-static {v1}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->access$000(Lcom/android/settings/quicksettings/QuickSettingsTiles;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->resetTiles(Landroid/content/Context;Z)V

    .line 280
    iget-object v0, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$3;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    invoke-virtual {v0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->genTiles()V

    .line 281
    return-void
.end method
