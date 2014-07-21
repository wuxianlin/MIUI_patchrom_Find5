.class Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentStarter"
.end annotation


# instance fields
.field private final mClass:Ljava/lang/String;

.field private final mTitleRes:I

.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "className"
    .parameter "title"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p2, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->mClass:Ljava/lang/String;

    .line 366
    iput p3, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->mTitleRes:I

    .line 367
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->mClass:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->mTitleRes:I

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->mClass:Ljava/lang/String;

    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.accounts.LAUNCHING_LOCATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 380
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
