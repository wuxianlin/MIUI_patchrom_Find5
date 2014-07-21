.class Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;
.super Landroid/support/v13/app/FragmentStatePagerAdapter;
.source "ProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/profiles/ProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProfilesPagerAdapter"
.end annotation


# instance fields
.field frags:[Landroid/app/Fragment;

.field final synthetic this$0:Lcom/android/settings/profiles/ProfilesSettings;

.field titles:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/ProfilesSettings;Landroid/app/FragmentManager;)V
    .locals 5
    .parameter
    .parameter "fm"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    iput-object p1, p0, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    .line 311
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 306
    new-array v0, v2, [Landroid/app/Fragment;

    new-instance v1, Lcom/android/settings/profiles/ProfilesList;

    invoke-direct {v1}, Lcom/android/settings/profiles/ProfilesList;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/settings/profiles/AppGroupList;

    invoke-direct {v1}, Lcom/android/settings/profiles/AppGroupList;-><init>()V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;->frags:[Landroid/app/Fragment;

    .line 307
    new-array v0, v2, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    const v2, 0x7f0800e6

    invoke-virtual {v1, v2}, Lcom/android/settings/profiles/ProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    const v2, 0x7f0800e8

    invoke-virtual {v1, v2}, Lcom/android/settings/profiles/ProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;->titles:[Ljava/lang/String;

    .line 312
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;->frags:[Landroid/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;->frags:[Landroid/app/Fragment;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "position"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;->titles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public refreshAppGroups()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;->frags:[Landroid/app/Fragment;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/settings/profiles/AppGroupList;

    invoke-virtual {v0}, Lcom/android/settings/profiles/AppGroupList;->refreshList()V

    .line 335
    return-void
.end method

.method public refreshProfiles()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;->frags:[Landroid/app/Fragment;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/settings/profiles/ProfilesList;

    invoke-virtual {v0}, Lcom/android/settings/profiles/ProfilesList;->refreshList()V

    .line 331
    return-void
.end method
