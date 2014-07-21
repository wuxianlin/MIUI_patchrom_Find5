.class public Lcom/android/settings/DeviceAdminAdd;
.super Landroid/app/Activity;
.source "DeviceAdminAdd.java"


# instance fields
.field mActionButton:Landroid/widget/Button;

.field final mActivePolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgExpander:Landroid/widget/ImageView;

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field final mAddingPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminWarning:Landroid/widget/TextView;

.field mCancelButton:Landroid/widget/Button;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

.field mHandler:Landroid/os/Handler;

.field mRefreshing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    return-void
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "visibility"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 300
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 301
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method getEllipsizedLines()I
    .locals 3

    .prologue
    .line 375
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 378
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x5

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    new-instance v11, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 94
    const-string v11, "device_policy"

    invoke-virtual {p0, v11}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    iput-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/high16 v12, 0x1000

    and-int/2addr v11, v12

    if-eqz v11, :cond_0

    .line 97
    const-string v11, "DeviceAdminAdd"

    const-string v12, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 266
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 104
    .local v2, cn:Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 105
    const-string v11, "DeviceAdminAdd"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No component specified in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto :goto_0

    .line 112
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v12, 0x80

    invoke-virtual {v11, v2, v12}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v11, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v13, 0x8000

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_3

    const/4 v3, 0x0

    .line 127
    .local v3, count:I
    :goto_1
    const/4 v6, 0x0

    .line 128
    .local v6, found:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v3, :cond_2

    .line 129
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 130
    .local v10, ri:Landroid/content/pm/ResolveInfo;
    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 135
    :try_start_1
    iput-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 136
    new-instance v4, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v4, p0, v10}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 137
    .local v4, dpi:Landroid/app/admin/DeviceAdminInfo;
    const/4 v6, 0x1

    .line 146
    .end local v4           #dpi:Landroid/app/admin/DeviceAdminInfo;
    .end local v10           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    :goto_3
    if-nez v6, :cond_5

    .line 147
    const-string v11, "DeviceAdminAdd"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Request to add invalid device admin: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 113
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #count:I
    .end local v6           #found:Z
    .end local v7           #i:I
    :catch_0
    move-exception v5

    .line 114
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "DeviceAdminAdd"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to retrieve device policy "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 126
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    .line 138
    .restart local v3       #count:I
    .restart local v6       #found:Z
    .restart local v7       #i:I
    .restart local v10       #ri:Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v5

    .line 139
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v11, "DeviceAdminAdd"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 140
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v5

    .line 141
    .local v5, e:Ljava/io/IOException;
    const-string v11, "DeviceAdminAdd"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 128
    .end local v5           #e:Ljava/io/IOException;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 153
    .end local v1           #avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #count:I
    .end local v6           #found:Z
    .end local v7           #i:I
    .end local v10           #ri:Landroid/content/pm/ResolveInfo;
    :cond_5
    new-instance v10, Landroid/content/pm/ResolveInfo;

    invoke-direct {v10}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 154
    .restart local v10       #ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 156
    :try_start_2
    new-instance v11, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v11, p0, v10}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 170
    const-string v11, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 171
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    .line 172
    iget-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v11, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 173
    iget-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v8

    .line 174
    .local v8, newPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_6

    .line 175
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 176
    .local v9, pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v12, v9, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v11, v2, v12}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v11

    if-nez v11, :cond_7

    .line 177
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    .line 181
    .end local v9           #pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_6
    iget-boolean v11, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    if-nez v11, :cond_8

    .line 183
    const/4 v11, -0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 157
    .end local v7           #i:I
    .end local v8           #newPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    :catch_3
    move-exception v5

    .line 158
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v11, "DeviceAdminAdd"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to retrieve device policy "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 161
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v5

    .line 162
    .local v5, e:Ljava/io/IOException;
    const-string v11, "DeviceAdminAdd"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to retrieve device policy "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 174
    .end local v5           #e:Ljava/io/IOException;
    .restart local v7       #i:I
    .restart local v8       #newPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .restart local v9       #pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 189
    .end local v7           #i:I
    .end local v8           #newPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .end local v9           #pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    .line 191
    const v11, 0x7f04003a

    invoke-virtual {p0, v11}, Lcom/android/settings/DeviceAdminAdd;->setContentView(I)V

    .line 193
    const v11, 0x7f0d00ac

    invoke-virtual {p0, v11}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    .line 194
    const v11, 0x7f0d00ad

    invoke-virtual {p0, v11}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    .line 195
    const v11, 0x7f0d00ae

    invoke-virtual {p0, v11}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    .line 197
    const v11, 0x7f0d00b0

    invoke-virtual {p0, v11}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    .line 198
    const v11, 0x7f0d00af

    invoke-virtual {p0, v11}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    .line 199
    iget-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    new-instance v12, Lcom/android/settings/DeviceAdminAdd$1;

    invoke-direct {v12, p0}, Lcom/android/settings/DeviceAdminAdd$1;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/android/settings/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 208
    const v11, 0x7f0d00b1

    invoke-virtual {p0, v11}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    .line 209
    const v11, 0x7f0d00b2

    invoke-virtual {p0, v11}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    .line 210
    const v11, 0x7f0d004b

    invoke-virtual {p0, v11}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    .line 211
    iget-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    new-instance v12, Lcom/android/settings/DeviceAdminAdd$2;

    invoke-direct {v12, p0}, Lcom/android/settings/DeviceAdminAdd$2;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v11, 0x7f0d00b5

    invoke-virtual {p0, v11}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    .line 217
    iget-object v11, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    new-instance v12, Lcom/android/settings/DeviceAdminAdd$3;

    invoke-direct {v12, p0}, Lcom/android/settings/DeviceAdminAdd$3;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 276
    packed-switch p1, :pswitch_data_0

    .line 293
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 278
    :pswitch_0
    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 279
    .local v1, msg:Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 282
    const v2, 0x7f080842

    new-instance v3, Lcom/android/settings/DeviceAdminAdd$4;

    invoke-direct {v3, p0}, Lcom/android/settings/DeviceAdminAdd$4;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 289
    const v2, 0x7f080843

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->updateInterface()V

    .line 272
    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 363
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 365
    .local v0, tv:Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 366
    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 367
    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 369
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_3

    const v1, 0x1080276

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    return-void

    .line 365
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 366
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 367
    :cond_2
    const/16 v1, 0xf

    goto :goto_2

    .line 369
    :cond_3
    const v1, 0x1080275

    goto :goto_3
.end method

.method updateInterface()V
    .locals 12

    .prologue
    const/16 v8, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 306
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 316
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 323
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 324
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    .line 325
    .local v3, policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 326
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 327
    .local v2, pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v5, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, ""

    invoke-static {p0, v5, v6, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    .line 329
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 312
    .end local v1           #i:I
    .end local v2           #pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    .end local v3           #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .end local v4           #view:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 319
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 333
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v5, v10}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 334
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 335
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f080a44

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    const v5, 0x7f080a3c

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v6, 0x7f080a3d

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iput-boolean v10, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    .line 359
    :goto_3
    return-void

    .line 341
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 342
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    .line 343
    .restart local v3       #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 344
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 345
    .restart local v2       #pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v5, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget v6, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    .line 347
    .restart local v4       #view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 351
    .end local v1           #i:I
    .end local v2           #pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    .end local v3           #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .end local v4           #view:Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v5, v10}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 352
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 353
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f080a43

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    const v5, 0x7f080a40

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v6, 0x7f080a41

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iput-boolean v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    goto :goto_3
.end method
