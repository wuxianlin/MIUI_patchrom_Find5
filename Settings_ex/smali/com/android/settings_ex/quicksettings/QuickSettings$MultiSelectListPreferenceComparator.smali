.class Lcom/android/settings_ex/quicksettings/QuickSettings$MultiSelectListPreferenceComparator;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/quicksettings/QuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectListPreferenceComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private pref:Landroid/preference/MultiSelectListPreference;

.field final synthetic this$0:Lcom/android/settings_ex/quicksettings/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/quicksettings/QuickSettings;Landroid/preference/MultiSelectListPreference;)V
    .locals 0
    .parameter
    .parameter "p"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings_ex/quicksettings/QuickSettings$MultiSelectListPreferenceComparator;->this$0:Lcom/android/settings_ex/quicksettings/QuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/android/settings_ex/quicksettings/QuickSettings$MultiSelectListPreferenceComparator;->pref:Landroid/preference/MultiSelectListPreference;

    .line 171
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/quicksettings/QuickSettings$MultiSelectListPreferenceComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/quicksettings/QuickSettings$MultiSelectListPreferenceComparator;->pref:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/quicksettings/QuickSettings$MultiSelectListPreferenceComparator;->pref:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p2}, Landroid/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method
