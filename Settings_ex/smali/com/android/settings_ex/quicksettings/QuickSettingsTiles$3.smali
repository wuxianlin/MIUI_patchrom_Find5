.class Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$3;
.super Ljava/lang/Object;
.source "QuickSettingsTiles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/quicksettings/QuickSettingsTiles;->resetTiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/quicksettings/QuickSettingsTiles;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/quicksettings/QuickSettingsTiles;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$3;->this$0:Lcom/android/settings_ex/quicksettings/QuickSettingsTiles;

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
    iget-object v0, p0, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$3;->this$0:Lcom/android/settings_ex/quicksettings/QuickSettingsTiles;

    invoke-virtual {v0}, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$3;->this$0:Lcom/android/settings_ex/quicksettings/QuickSettingsTiles;

    #getter for: Lcom/android/settings_ex/quicksettings/QuickSettingsTiles;->mConfigRibbon:Z
    invoke-static {v1}, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles;->access$000(Lcom/android/settings_ex/quicksettings/QuickSettingsTiles;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/quicksettings/QuickSettingsUtil;->resetTiles(Landroid/content/Context;Z)V

    .line 280
    iget-object v0, p0, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$3;->this$0:Lcom/android/settings_ex/quicksettings/QuickSettingsTiles;

    invoke-virtual {v0}, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles;->genTiles()V

    .line 281
    return-void
.end method
