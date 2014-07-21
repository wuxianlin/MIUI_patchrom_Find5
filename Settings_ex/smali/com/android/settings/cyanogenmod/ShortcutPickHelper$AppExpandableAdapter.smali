.class public Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ShortcutPickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/ShortcutPickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppExpandableAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;,
        Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$LabelCompare;
    }
.end annotation


# instance fields
.field allList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field final groupPadding:I

.field final synthetic this$0:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;


# direct methods
.method public constructor <init>(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, pInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->this$0:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->allList:Ljava/util/ArrayList;

    .line 204
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 205
    .local v0, i:Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->allList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #getter for: Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->access$300(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;-><init>(Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    .end local v0           #i:Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->allList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$LabelCompare;

    invoke-direct {v3, p0}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$LabelCompare;-><init>(Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 208
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->groupPadding:I

    .line 209
    return-void
.end method


# virtual methods
.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->getChild(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Ljava/lang/String;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->allList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;->info:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 216
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 230
    if-nez p4, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->this$0:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    #getter for: Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->access$400(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090003

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 232
    iget v1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->groupPadding:I

    invoke-virtual {p4, v1, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 235
    :cond_0
    const v1, 0x1020014

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 236
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->getChild(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->allList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;

    iget-object v1, v1, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;->info:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->allList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;->info:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->allList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;->info:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->allList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->getGroup(I)Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->allList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 249
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 254
    if-nez p3, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->this$0:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    #getter for: Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->access$400(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090003

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 256
    const/16 v1, 0x46

    invoke-virtual {p3, v1, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 258
    :cond_0
    const v1, 0x1020014

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 259
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;->getGroup(I)Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method
