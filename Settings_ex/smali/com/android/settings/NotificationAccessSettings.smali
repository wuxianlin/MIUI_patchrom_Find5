.class public Lcom/android/settings/NotificationAccessSettings;
.super Landroid/app/ListFragment;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;,
        Lcom/android/settings/NotificationAccessSettings$ViewHolder;,
        Lcom/android/settings/NotificationAccessSettings$ListenerWarningDialogFragment;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private mCR:Landroid/content/ContentResolver;

.field private final mEnabledListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/settings/NotificationAccessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/NotificationAccessSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    .line 65
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 68
    new-instance v0, Lcom/android/settings/NotificationAccessSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/NotificationAccessSettings$1;-><init>(Lcom/android/settings/NotificationAccessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 75
    new-instance v0, Lcom/android/settings/NotificationAccessSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationAccessSettings$2;-><init>(Lcom/android/settings/NotificationAccessSettings;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NotificationAccessSettings;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/NotificationAccessSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private static getListeners(Landroid/widget/ArrayAdapter;Landroid/content/pm/PackageManager;)I
    .locals 10
    .parameter
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")I"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Landroid/content/pm/ServiceInfo;>;"
    const/4 v4, 0x0

    .line 212
    .local v4, listeners:I
    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 215
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 217
    .local v6, user:I
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.service.notification.NotificationListenerService"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x84

    invoke-virtual {p1, v7, v8, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 222
    .local v3, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 223
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 224
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 226
    .local v2, info:Landroid/content/pm/ServiceInfo;
    const-string v7, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 228
    sget-object v7, Lcom/android/settings/NotificationAccessSettings;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping notification listener service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": it does not require the permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_1
    if-eqz p0, :cond_2

    .line 235
    invoke-virtual {p0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 237
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 239
    .end local v2           #info:Landroid/content/pm/ServiceInfo;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    return v4
.end method

.method static getListenersCount(Landroid/content/pm/PackageManager;)I
    .locals 1
    .parameter "pm"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/settings/NotificationAccessSettings;->getListeners(Landroid/widget/ArrayAdapter;Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0
.end method


# virtual methods
.method isListenerEnabled(Landroid/content/pm/ServiceInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 243
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method loadEnabledListeners()V
    .locals 6

    .prologue
    .line 168
    iget-object v4, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 169
    iget-object v4, p0, Lcom/android/settings/NotificationAccessSettings;->mCR:Landroid/content/ContentResolver;

    const-string v5, "enabled_notification_listeners"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, flat:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 172
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, names:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 174
    aget-object v4, v3, v2

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 175
    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 176
    iget-object v4, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #i:I
    .end local v3           #names:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mCR:Landroid/content/ContentResolver;

    .line 133
    new-instance v0, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;-><init>(Lcom/android/settings/NotificationAccessSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mList:Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

    .line 134
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 139
    const v0, 0x7f040074

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 249
    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings;->mList:Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 250
    .local v1, info:Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->saveEnabledListeners()V

    .line 261
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v2, Lcom/android/settings/NotificationAccessSettings$ListenerWarningDialogFragment;

    invoke-direct {v2, p0}, Lcom/android/settings/NotificationAccessSettings$ListenerWarningDialogFragment;-><init>(Lcom/android/settings/NotificationAccessSettings;)V

    iget-object v3, p0, Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/NotificationAccessSettings$ListenerWarningDialogFragment;->setListenerInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings/NotificationAccessSettings$ListenerWarningDialogFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/NotificationAccessSettings$ListenerWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mCR:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 165
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->updateList()V

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mCR:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/NotificationAccessSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    return-void
.end method

.method saveEnabledListeners()V
    .locals 6

    .prologue
    .line 183
    const/4 v2, 0x0

    .line 184
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 185
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 188
    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 192
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/NotificationAccessSettings;->mCR:Landroid/content/ContentResolver;

    const-string v5, "enabled_notification_listeners"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 195
    return-void

    .line 192
    :cond_2
    const-string v3, ""

    goto :goto_2
.end method

.method updateList()V
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->loadEnabledListeners()V

    .line 200
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mList:Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1}, Lcom/android/settings/NotificationAccessSettings;->getListeners(Landroid/widget/ArrayAdapter;Landroid/content/pm/PackageManager;)I

    .line 201
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mList:Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

    new-instance v1, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->sort(Ljava/util/Comparator;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mList:Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    return-void
.end method
