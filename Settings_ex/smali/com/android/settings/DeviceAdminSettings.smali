.class public Lcom/android/settings/DeviceAdminSettings;
.super Landroid/app/ListFragment;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;,
        Lcom/android/settings/DeviceAdminSettings$ViewHolder;
    }
.end annotation


# instance fields
.field final mActiveAdmins:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceOwnerPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    .line 155
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 70
    const v0, 0x7f04003c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .line 142
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminSettings;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->updateList()V

    .line 81
    return-void
.end method

.method updateList()V
    .locals 19

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->clear()V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v6

    .line 86
    .local v6, cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v6, :cond_0

    .line 87
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 92
    .end local v9           #i:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v18, 0x8080

    invoke-virtual/range {v16 .. v18}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_1

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 102
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 103
    .local v2, activeAdminsNotInAvail:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 104
    .local v13, ri:Landroid/content/pm/ResolveInfo;
    new-instance v14, Landroid/content/ComponentName;

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v14, riComponentName:Landroid/content/ComponentName;
    invoke-interface {v2, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    .end local v13           #ri:Landroid/content/pm/ResolveInfo;
    .end local v14           #riComponentName:Landroid/content/ComponentName;
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_5

    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    .end local v3           #avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v4, avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 111
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 112
    .local v15, unlistedActiveAdmin:Landroid/content/ComponentName;
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v16

    const v17, 0x8080

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 116
    .local v12, resolved:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v12, :cond_3

    .line 117
    invoke-interface {v4, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .end local v12           #resolved:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15           #unlistedActiveAdmin:Landroid/content/ComponentName;
    :cond_4
    move-object v3, v4

    .line 122
    .end local v4           #avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11           #packageManager:Landroid/content/pm/PackageManager;
    .restart local v3       #avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    const/4 v9, 0x0

    .restart local v9       #i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, count:I
    :goto_3
    if-ge v9, v5, :cond_8

    .line 123
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 125
    .restart local v13       #ri:Landroid/content/pm/ResolveInfo;
    :try_start_0
    new-instance v7, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0, v13}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 126
    .local v7, dpi:Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v16

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 127
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .end local v7           #dpi:Landroid/app/admin/DeviceAdminInfo;
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 129
    :catch_0
    move-exception v8

    .line 130
    .local v8, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v16, "DeviceAdminSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Skipping "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 131
    .end local v8           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v8

    .line 132
    .local v8, e:Ljava/io/IOException;
    const-string v16, "DeviceAdminSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Skipping "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 136
    .end local v8           #e:Ljava/io/IOException;
    .end local v13           #ri:Landroid/content/pm/ResolveInfo;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v16

    new-instance v17, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;-><init>(Lcom/android/settings/DeviceAdminSettings;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    return-void
.end method
