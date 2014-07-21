.class Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolicyListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings_ex/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DeviceAdminSettings;)V
    .locals 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 159
    invoke-virtual {p1}, Lcom/android/settings_ex/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 161
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 9
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 216
    iget-object v6, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 217
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;

    .line 218
    .local v3, vh:Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;
    iget-object v6, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v6, v6, Lcom/android/settings_ex/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo;

    .line 219
    .local v2, item:Landroid/app/admin/DeviceAdminInfo;
    iget-object v6, v3, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v6, v3, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v6, v3, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v7, v7, Lcom/android/settings_ex/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 222
    iget-object v6, v3, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v7, v7, Lcom/android/settings_ex/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 225
    .local v0, activeOwner:Z
    :goto_0
    :try_start_0
    iget-object v6, v3, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_1
    iget-object v7, v3, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    move v6, v4

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 229
    iget-object v7, v3, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    if-nez v0, :cond_2

    move v6, v4

    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 230
    iget-object v7, v3, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    if-nez v0, :cond_3

    move v6, v4

    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 231
    iget-object v6, v3, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    :goto_5
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 232
    return-void

    .end local v0           #activeOwner:Z
    :cond_0
    move v0, v5

    .line 222
    goto :goto_0

    .restart local v0       #activeOwner:Z
    :cond_1
    move v6, v5

    .line 228
    goto :goto_2

    :cond_2
    move v6, v5

    .line 229
    goto :goto_3

    :cond_3
    move v6, v5

    .line 230
    goto :goto_4

    :cond_4
    move v4, v5

    .line 231
    goto :goto_5

    .line 226
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 176
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 195
    if-nez p2, :cond_0

    .line 196
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->bindView(Landroid/view/View;I)V

    .line 201
    return-object v0

    .line 198
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v1, v1, Lcom/android/settings_ex/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .line 185
    .local v0, info:Landroid/app/admin/DeviceAdminInfo;
    iget-object v1, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v1, v1, Lcom/android/settings_ex/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v2, v2, Lcom/android/settings_ex/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x0

    .line 189
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 205
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04003b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 206
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;-><init>()V

    .line 207
    .local v0, h:Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;
    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 208
    const v2, 0x7f0d002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 209
    const v2, 0x7f0d00b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 210
    const v2, 0x7f0d00b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    .line 211
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 212
    return-object v1
.end method
