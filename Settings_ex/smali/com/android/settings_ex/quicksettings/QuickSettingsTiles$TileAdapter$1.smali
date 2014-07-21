.class Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$1;
.super Ljava/lang/Object;
.source "QuickSettingsTiles.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter;->sortItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter;Ljava/text/Collator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$1;->this$0:Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter;

    iput-object p2, p0, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$Entry;Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$Entry;)I
    .locals 3
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$1;->val$collator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$Entry;->tileTitle:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$Entry;->tileTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    check-cast p1, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$Entry;

    .end local p1
    check-cast p2, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$Entry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$1;->compare(Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$Entry;Lcom/android/settings_ex/quicksettings/QuickSettingsTiles$TileAdapter$Entry;)I

    move-result v0

    return v0
.end method
