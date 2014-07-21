.class Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/RecentLocationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageEntryClickedListener"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/location/RecentLocationApps;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/location/RecentLocationApps;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "packageName"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;->this$0:Lcom/android/settings_ex/location/RecentLocationApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 66
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;->this$0:Lcom/android/settings_ex/location/RecentLocationApps;

    #getter for: Lcom/android/settings_ex/location/RecentLocationApps;->mActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings_ex/location/RecentLocationApps;->access$000(Lcom/android/settings_ex/location/RecentLocationApps;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08080b

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method
