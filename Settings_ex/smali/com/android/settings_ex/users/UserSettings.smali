.class public Lcom/android/settings_ex/users/UserSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final USER_DRAWABLES:[I


# instance fields
.field private mAddUser:Landroid/preference/Preference;

.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsOwner:Z

.field private mMePreference:Landroid/preference/Preference;

.field private mNicknamePreference:Lcom/android/settings_ex/SelectableEditTextPreference;

.field private mProfileExists:Z

.field private mRemovingUserId:I

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/users/UserSettings;->USER_DRAWABLES:[I

    return-void

    :array_0
    .array-data 0x4
        0x18t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 138
    const-string v1, "restrictions_pin_set"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 127
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    .line 128
    iput v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddedUserId:I

    .line 132
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 134
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 135
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mIsOwner:Z

    .line 141
    new-instance v0, Lcom/android/settings_ex/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/UserSettings$1;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/android/settings_ex/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/UserSettings$2;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/users/UserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/users/UserSettings;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->createLimitedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/settings_ex/users/UserSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/users/UserSettings;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/users/UserSettings;->onManageUserClicked(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/users/UserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/users/UserSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/users/UserSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/UserManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/users/UserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->getProfileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addUserNow(I)V
    .locals 2
    .parameter "userType"

    .prologue
    .line 571
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 572
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z

    .line 574
    new-instance v0, Lcom/android/settings_ex/users/UserSettings$11;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/users/UserSettings$11;-><init>(Lcom/android/settings_ex/users/UserSettings;I)V

    invoke-virtual {v0}, Lcom/android/settings_ex/users/UserSettings$11;->start()V

    .line 596
    monitor-exit v1

    .line 597
    return-void

    .line 596
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private assignDefaultPhoto(Landroid/content/pm/UserInfo;)V
    .locals 5
    .parameter "user"

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/users/UserSettings;->USER_DRAWABLES:[I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object v4, Lcom/android/settings_ex/users/UserSettings;->USER_DRAWABLES:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 703
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 704
    return-void
.end method

.method private assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings_ex/Utils;->copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 690
    :cond_0
    return-void
.end method

.method private createLimitedUser()Landroid/content/pm/UserInfo;
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 341
    iget-object v10, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080b66

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 344
    .local v7, newUserInfo:Landroid/content/pm/UserInfo;
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    .line 345
    .local v9, userId:I
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 346
    .local v8, user:Landroid/os/UserHandle;
    iget-object v10, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v11, "no_modify_accounts"

    invoke-virtual {v10, v11, v13, v8}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 347
    iget-object v10, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v11, "no_share_location"

    invoke-virtual {v10, v11, v13, v8}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "location_providers_allowed"

    const-string v12, ""

    invoke-static {v10, v11, v12, v9}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 350
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget-object v11, Lcom/android/settings_ex/users/UserSettings;->USER_DRAWABLES:[I

    sget-object v12, Lcom/android/settings_ex/users/UserSettings;->USER_DRAWABLES:[I

    array-length v12, v12

    rem-int v12, v9, v12

    aget v11, v11, v12

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 353
    .local v4, bitmap:Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, v9, v4}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 356
    .local v2, am:Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 357
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 358
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v3, v5

    .line 359
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {v2, v0, v8}, Landroid/accounts/AccountManager;->addSharedAccount(Landroid/accounts/Account;Landroid/os/UserHandle;)Z

    .line 358
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 362
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_0
    return-object v7
.end method

.method private createTrustedUser()Landroid/content/pm/UserInfo;
    .locals 4

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080b65

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 368
    .local v0, newUserInfo:Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 371
    :cond_0
    return-object v0
.end method

.method private encircle(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "iconResId"

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 766
    .local v0, icon:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "icon"

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings_ex/users/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings_ex/users/CircleFramedDrawable;

    move-result-object v0

    .line 771
    .local v0, circled:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 6
    .parameter "profileName"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    const v3, 0x7f080b53

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 280
    .local v1, myUserId:I
    iget-object v2, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v2, p0, Lcom/android/settings_ex/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 693
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings_ex/Utils;->getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 695
    iput-boolean v2, p0, Lcom/android/settings_ex/users/UserSettings;->mProfileExists:Z

    .line 697
    :cond_0
    return-object v0
.end method

.method private hasLockscreenSecurity()Z
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, lpu:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .parameter "user"

    .prologue
    .line 761
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchChooseLockscreen()V
    .locals 3

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, chooseLockIntent:Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 297
    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, missingIcons:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 669
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings_ex/users/UserSettings$12;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/users/UserSettings$12;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/users/UserSettings$12;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 684
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    iput-boolean v1, p0, Lcom/android/settings_ex/users/UserSettings;->mProfileExists:Z

    .line 255
    new-instance v0, Lcom/android/settings_ex/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/UserSettings$3;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/UserSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 274
    return-void
.end method

.method private onAddUserClicked(I)V
    .locals 3
    .parameter "userType"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_0
    iget v0, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 315
    packed-switch p1, :pswitch_data_0

    .line 328
    :cond_0
    :goto_0
    monitor-exit v1

    .line 329
    return-void

    .line 317
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 320
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 323
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onManageUserClicked(IZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/users/UserSettings;->mIsOwner:Z

    if-eqz v1, :cond_1

    .line 377
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 378
    const-string v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    const-string v0, "new_user"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ex/users/RestrictedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080b98

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 386
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 387
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 388
    const-string v1, "show_nickname"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 390
    :cond_2
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_3

    const v3, 0x7f080521

    .line 393
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 390
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_4

    const v3, 0x7f080529

    goto :goto_1

    :cond_4
    const v3, 0x7f080527

    goto :goto_1
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    :try_start_0
    iget v0, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 334
    iput p1, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V

    .line 337
    :cond_0
    monitor-exit v1

    .line 338
    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUserCreated(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 400
    iput p1, p0, Lcom/android/settings_ex/users/UserSettings;->mAddedUserId:I

    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private removeThisUser()V
    .locals 3

    .prologue
    .line 562
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 563
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "UserSettings"

    const-string v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUserNow()V
    .locals 2

    .prologue
    .line 546
    iget v0, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->removeThisUser()V

    .line 558
    :goto_0
    return-void

    .line 549
    :cond_0
    new-instance v0, Lcom/android/settings_ex/users/UserSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/UserSettings$10;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/settings_ex/users/UserSettings$10;->start()V

    goto :goto_0
.end method

.method private setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 3
    .parameter "pref"
    .parameter "user"

    .prologue
    .line 707
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 708
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 709
    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 711
    :cond_0
    return-void
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mNicknamePreference:Lcom/android/settings_ex/SelectableEditTextPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/SelectableEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 716
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 717
    return-void
.end method

.method private switchUserNow(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 601
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateUserList()V
    .locals 13

    .prologue
    const v12, 0x7f020018

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 608
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 665
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    .line 611
    .local v10, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 612
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 613
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 615
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v7, missingIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 618
    .local v9, user:Landroid/content/pm/UserInfo;
    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 619
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    .line 632
    .local v0, pref:Landroid/preference/Preference;
    :goto_2
    invoke-direct {p0, v9}, Lcom/android/settings_ex/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 633
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f080b51

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 639
    :cond_2
    :goto_4
    iget-object v1, v9, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v3, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    .line 641
    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-direct {p0, v12}, Lcom/android/settings_ex/users/UserSettings;->encircle(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 621
    .end local v0           #pref:Landroid/preference/Preference;
    :cond_3
    new-instance v0, Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, v9, Landroid/content/pm/UserInfo;->id:I

    iget-boolean v4, p0, Lcom/android/settings_ex/users/UserSettings;->mIsOwner:Z

    if-eqz v4, :cond_5

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, p0

    :goto_5
    iget-boolean v5, p0, Lcom/android/settings_ex/users/UserSettings;->mIsOwner:Z

    if-eqz v5, :cond_6

    move-object v5, p0

    :goto_6
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 624
    .restart local v0       #pref:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 627
    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_4

    .line 628
    const v1, 0x7f080b52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 630
    :cond_4
    iget-object v1, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .end local v0           #pref:Landroid/preference/Preference;
    :cond_5
    move-object v4, v2

    .line 621
    goto :goto_5

    :cond_6
    move-object v5, v2

    goto :goto_6

    .line 633
    .restart local v0       #pref:Landroid/preference/Preference;
    :cond_7
    const v1, 0x7f080b50

    goto :goto_3

    .line 636
    :cond_8
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 637
    const v1, 0x7f080b4d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4

    .line 644
    :cond_9
    invoke-direct {p0, v0, v9}, Lcom/android/settings_ex/users/UserSettings;->setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_1

    .line 649
    .end local v0           #pref:Landroid/preference/Preference;
    .end local v9           #user:Landroid/content/pm/UserInfo;
    :cond_a
    iget-boolean v1, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z

    if-eqz v1, :cond_b

    .line 650
    new-instance v0, Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, -0xa

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 652
    .restart local v0       #pref:Landroid/preference/Preference;
    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 653
    const v1, 0x7f080b65

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 654
    invoke-direct {p0, v12}, Lcom/android/settings_ex/users/UserSettings;->encircle(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 655
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 657
    .end local v0           #pref:Landroid/preference/Preference;
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 660
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 661
    invoke-direct {p0, v7}, Lcom/android/settings_ex/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    .line 663
    :cond_c
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_d

    .line 664
    .local v8, moreUsers:Z
    :goto_7
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .end local v8           #moreUsers:Z
    :cond_d
    move v8, v11

    .line 663
    goto :goto_7
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 813
    const v0, 0x7f080b90

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 301
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 303
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 304
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->addUserNow(I)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 776
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/users/UserPreference;

    if-eqz v1, :cond_0

    .line 777
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/users/UserPreference;->getUserId()I

    move-result v0

    .line 778
    .local v0, userId:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 787
    .end local v0           #userId:I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 780
    .restart local v0       #userId:I
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->onRemoveUserClicked(I)V

    goto :goto_0

    .line 783
    :pswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/users/UserSettings;->onManageUserClicked(IZ)V

    goto :goto_0

    .line 778
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01a3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    if-eqz p1, :cond_1

    .line 178
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddedUserId:I

    .line 181
    :cond_0
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 187
    const v0, 0x7f05005f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->addPreferencesFromResource(I)V

    .line 188
    const-string v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    .line 189
    new-instance v0, Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v2

    :goto_0
    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    const-string v1, "user_me"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 193
    iget-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mIsOwner:Z

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    const v1, 0x7f080b52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 196
    :cond_2
    const-string v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 198
    iget-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mIsOwner:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 199
    :cond_3
    const-string v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->removePreference(Ljava/lang/String;)V

    .line 201
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->loadProfile()V

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->setHasOptionsMenu(Z)V

    .line 203
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 204
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/settings_ex/users/UserSettings;->mHandler:Landroid/os/Handler;

    move-object v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 207
    return-void

    .end local v6           #filter:Landroid/content/IntentFilter;
    :cond_5
    move-object v4, p0

    .line 189
    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 16
    .parameter "dialogId"

    .prologue
    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 418
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_0

    const/4 v9, 0x0

    .line 541
    :goto_0
    return-object v9

    .line 419
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 541
    const/4 v9, 0x0

    goto :goto_0

    .line 421
    :pswitch_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    if-ne v1, v5, :cond_1

    const v1, 0x7f080b67

    :goto_1
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    if-ne v1, v5, :cond_3

    const v1, 0x7f080b6a

    :goto_2
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f080b6f

    new-instance v5, Lcom/android/settings_ex/users/UserSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings_ex/users/UserSettings$4;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 440
    .local v9, dlg:Landroid/app/Dialog;
    goto :goto_0

    .line 421
    .end local v9           #dlg:Landroid/app/Dialog;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {v1, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f080b69

    goto :goto_1

    :cond_2
    const v1, 0x7f080b68

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {v1, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f080b6c

    goto :goto_2

    :cond_4
    const v1, 0x7f080b6b

    goto :goto_2

    .line 443
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080b62

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    goto/16 :goto_0

    .line 448
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 450
    .local v12, preferences:Landroid/content/SharedPreferences;
    const-string v1, "key_add_user_long_message_displayed"

    const/4 v4, 0x0

    invoke-interface {v12, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 452
    .local v10, longMessageDisplayed:Z
    if-eqz v10, :cond_5

    const v11, 0x7f080b5c

    .line 455
    .local v11, messageResId:I
    :goto_3
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    const/4 v13, 0x1

    .line 457
    .local v13, userType:I
    :goto_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080b5a

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings_ex/users/UserSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13, v10, v12}, Lcom/android/settings_ex/users/UserSettings$5;-><init>(Lcom/android/settings_ex/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 472
    .restart local v9       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 452
    .end local v9           #dlg:Landroid/app/Dialog;
    .end local v11           #messageResId:I
    .end local v13           #userType:I
    :cond_5
    const v11, 0x7f080b5b

    goto :goto_3

    .line 455
    .restart local v11       #messageResId:I
    :cond_6
    const/4 v13, 0x2

    goto :goto_4

    .line 475
    .end local v10           #longMessageDisplayed:Z
    .end local v11           #messageResId:I
    .end local v12           #preferences:Landroid/content/SharedPreferences;
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080b5d

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f080b5e

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f080b60

    new-instance v5, Lcom/android/settings_ex/users/UserSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings_ex/users/UserSettings$6;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f080b61

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 486
    .restart local v9       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 489
    .end local v9           #dlg:Landroid/app/Dialog;
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080b5f

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings_ex/users/UserSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings_ex/users/UserSettings$7;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 499
    .restart local v9       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 502
    .end local v9           #dlg:Landroid/app/Dialog;
    :pswitch_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v3, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 504
    .local v8, addUserItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "title"

    const v4, 0x7f080b58

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v1, "summary"

    const v4, 0x7f080b56

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 507
    .local v7, addProfileItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "title"

    const v4, 0x7f080b59

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v1, "summary"

    const v4, 0x7f080b57

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080b55

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    new-instance v1, Landroid/widget/SimpleAdapter;

    const v4, 0x7f0400d5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v15, "title"

    aput-object v15, v5, v6

    const/4 v6, 0x1

    const-string v15, "summary"

    aput-object v15, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v4, Lcom/android/settings_ex/users/UserSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings_ex/users/UserSettings$8;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    invoke-virtual {v14, v1, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 524
    .restart local v9       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 527
    .end local v3           #data:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7           #addProfileItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #addUserItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #dlg:Landroid/app/Dialog;
    :pswitch_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080b4e

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f080b4f

    new-instance v5, Lcom/android/settings_ex/users/UserSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings_ex/users/UserSettings$9;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 538
    .restart local v9       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 511
    :array_0
    .array-data 0x4
        0x39t 0x0t 0xdt 0x7ft
        0x55t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 233
    .local v2, um:Landroid/os/UserManager;
    iget-boolean v3, p0, Lcom/android/settings_ex/users/UserSettings;->mIsOwner:Z

    if-nez v3, :cond_0

    const-string v3, "no_remove_user"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, nickname:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080b64

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 237
    .local v1, removeThisUser:Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 239
    .end local v0           #nickname:Ljava/lang/String;
    .end local v1           #removeThisUser:Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 240
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 410
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDialogShowing()V

    .line 412
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 413
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 791
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 792
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z

    .line 793
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    .line 794
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->updateUserList()V

    .line 795
    monitor-exit v1

    .line 796
    return-void

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 245
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 246
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/users/UserSettings;->onRemoveUserClicked(I)V

    .line 249
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 800
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mNicknamePreference:Lcom/android/settings_ex/SelectableEditTextPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 801
    check-cast v0, Ljava/lang/String;

    .line 802
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mNicknamePreference:Lcom/android/settings_ex/SelectableEditTextPreference;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 804
    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->setUserName(Ljava/lang/String;)V

    .line 806
    :cond_0
    const/4 v1, 0x1

    .line 808
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 721
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 723
    iget-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mProfileExists:Z

    if-nez v0, :cond_1

    .line 724
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 726
    const-string v1, "newLocalProfile"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 732
    :goto_0
    const-string v1, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 735
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/android/settings_ex/users/UserSettings;->onManageUserClicked(IZ)V

    .line 757
    :cond_0
    :goto_1
    return v5

    .line 728
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 738
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 740
    :cond_3
    instance-of v0, p1, Lcom/android/settings_ex/users/UserPreference;

    if-eqz v0, :cond_6

    .line 741
    check-cast p1, Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual {p1}, Lcom/android/settings_ex/users/UserPreference;->getUserId()I

    move-result v0

    .line 743
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 744
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_4

    .line 745
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V

    goto :goto_1

    .line 747
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 748
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 750
    :cond_5
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5}, Lcom/android/settings_ex/users/UserSettings;->onManageUserClicked(IZ)V

    goto :goto_1

    .line 754
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 755
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 212
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->loadProfile()V

    .line 213
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->updateUserList()V

    .line 214
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 226
    const-string v0, "adding_user"

    iget v1, p0, Lcom/android/settings_ex/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    return-void
.end method
