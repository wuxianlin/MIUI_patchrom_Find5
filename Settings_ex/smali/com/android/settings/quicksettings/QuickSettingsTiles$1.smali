.class Lcom/android/settings/quicksettings/QuickSettingsTiles$1;
.super Ljava/lang/Object;
.source "QuickSettingsTiles.java"

# interfaces
.implements Lcom/android/settings/quicksettings/DraggableGridView$OnRearrangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/quicksettings/QuickSettingsTiles;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 196
    iput-object p1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$1;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$1;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    invoke-virtual {v1}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$1;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    #getter for: Lcom/android/settings/quicksettings/QuickSettingsTiles;->mConfigRibbon:Z
    invoke-static {v2}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->access$000(Lcom/android/settings/quicksettings/QuickSettingsTiles;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->getCurrentTiles(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->getTileListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 210
    .local v0, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$1;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    invoke-virtual {v1}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->getTileStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$1;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    #getter for: Lcom/android/settings/quicksettings/QuickSettingsTiles;->mConfigRibbon:Z
    invoke-static {v3}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->access$000(Lcom/android/settings/quicksettings/QuickSettingsTiles;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->saveCurrentTiles(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 213
    return-void
.end method

.method public onRearrange(II)V
    .locals 5
    .parameter "oldIndex"
    .parameter "newIndex"

    .prologue
    .line 198
    iget-object v2, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$1;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    invoke-virtual {v2}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$1;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    #getter for: Lcom/android/settings/quicksettings/QuickSettingsTiles;->mConfigRibbon:Z
    invoke-static {v3}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->access$000(Lcom/android/settings/quicksettings/QuickSettingsTiles;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->getCurrentTiles(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->getTileListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 200
    .local v1, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    .local v0, oldTile:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 202
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 203
    iget-object v2, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$1;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    invoke-virtual {v2}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->getTileStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$1;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    #getter for: Lcom/android/settings/quicksettings/QuickSettingsTiles;->mConfigRibbon:Z
    invoke-static {v4}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->access$000(Lcom/android/settings/quicksettings/QuickSettingsTiles;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->saveCurrentTiles(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 205
    return-void
.end method
