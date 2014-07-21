.class public Lcom/android/settings/cyanogenmod/ShortcutPickHelper;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;,
        Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;
    }
.end annotation


# instance fields
.field private lastFragmentId:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mListener:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;)V
    .locals 1
    .parameter "parent"
    .parameter "listener"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    .line 63
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->completeSetCustomApp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method private completeSetCustomApp(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v2}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 275
    return-void
.end method

.method private completeSetCustomShortcut(Landroid/content/Intent;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 278
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 280
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, appUri:Ljava/lang/String;
    const-string v2, "com.android.contacts.action.QUICK_CONTACT"

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, v4}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 284
    return-void
.end method

.method private getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;
    .locals 4
    .parameter "intent"
    .parameter "labelOnly"

    .prologue
    .line 287
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 288
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .line 289
    .local v1, friendlyName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 290
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    if-nez v1, :cond_0

    if-nez p2, :cond_0

    .line 292
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 295
    :cond_0
    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    .end local v1           #friendlyName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .restart local v1       #friendlyName:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 299
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, activityName:Ljava/lang/String;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .restart local v1       #name:Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private processShortcut(Landroid/content/Intent;II)V
    .locals 12
    .parameter "intent"
    .parameter "requestCodeApplication"
    .parameter "requestCodeShortcut"

    .prologue
    .line 127
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v10, 0x7f0800f7

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, applicationName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v10, 0x7f0802c1

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, application2name:Ljava/lang/String;
    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, shortcutName:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 131
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v5, mainIntent:Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v7, pickIntent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {v7, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    invoke-direct {p0, v7, p2}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    .line 171
    .end local v5           #mainIntent:Landroid/content/Intent;
    .end local v7           #pickIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 137
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 138
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 139
    .local v6, pInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Landroid/widget/ExpandableListView;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v9}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v1, appListView:Landroid/widget/ExpandableListView;
    new-instance v0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v0, p0, v6, v9}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;-><init>(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;Ljava/util/List;Landroid/content/Context;)V

    .line 141
    .local v0, appAdapter:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 142
    new-instance v9, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$1;

    invoke-direct {v9, p0}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$1;-><init>(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)V

    invoke-virtual {v1, v9}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 157
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v4, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    .local v4, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 160
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v11, 0x7f0802c3

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 162
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$2;

    invoke-direct {v10, p0}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$2;-><init>(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 169
    .end local v0           #appAdapter:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;
    .end local v1           #appListView:Landroid/widget/ExpandableListView;
    .end local v4           #builder:Landroid/app/AlertDialog$Builder;
    .end local v6           #pInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startFragmentOrActivity(Landroid/content/Intent;I)V
    .locals 3
    .parameter "pickIntent"
    .parameter "requestCode"

    .prologue
    .line 115
    iget v1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->lastFragmentId:I

    if-nez v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->lastFragmentId:I

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 119
    .local v0, cFrag:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public getFriendlyNameForUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    const/4 p1, 0x0

    .line 322
    .end local p1
    :goto_0
    return-object p1

    .line 314
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 315
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 318
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 319
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 68
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 69
    packed-switch p1, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->completeSetCustomApp(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->completeSetCustomShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    :pswitch_2
    const/16 v0, 0x65

    const/16 v1, 0x66

    invoke-direct {p0, p3, v0, v1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->processShortcut(Landroid/content/Intent;II)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pickShortcut([Ljava/lang/String;[Landroid/content/Intent$ShortcutIconResource;I)V
    .locals 11
    .parameter "names"
    .parameter "icons"
    .parameter "fragmentId"

    .prologue
    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v1, bundle:Landroid/os/Bundle;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v7, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 88
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 89
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v9, 0x7f0800f7

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v9, 0x7f0802c1

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v8, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 96
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v6, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    if-eqz p2, :cond_1

    .line 98
    move-object v0, p2

    .local v0, arr$:[Landroid/content/Intent$ShortcutIconResource;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 99
    .local v5, s:Landroid/content/Intent$ShortcutIconResource;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    .end local v0           #arr$:[Landroid/content/Intent$ShortcutIconResource;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #s:Landroid/content/Intent$ShortcutIconResource;
    :cond_1
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v9, 0x1080093

    invoke-static {v8, v9}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const/high16 v9, 0x7f02

    invoke-static {v8, v9}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v8, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 106
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v4, pickIntent:Landroid/content/Intent;
    const-string v8, "android.intent.extra.INTENT"

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    const-string v8, "android.intent.extra.TITLE"

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v10, 0x7f0802c2

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 109
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 110
    iput p3, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->lastFragmentId:I

    .line 111
    const/16 v8, 0x64

    invoke-direct {p0, v4, v8}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    .line 112
    return-void
.end method
