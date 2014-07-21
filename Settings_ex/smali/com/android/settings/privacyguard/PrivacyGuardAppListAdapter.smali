.class public Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PrivacyGuardAppListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$1;,
        Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;,
        Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;
    }
.end annotation


# instance fields
.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultImg:Landroid/graphics/drawable/Drawable;

.field private mIcons:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPositions:[I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;>;"
    .local p3, sections:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, positions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mContext:Landroid/content/Context;

    .line 55
    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 58
    iput-object p2, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mApps:Ljava/util/List;

    .line 59
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mSections:[Ljava/lang/String;

    .line 60
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mPositions:[I

    .line 61
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mPositions:[I

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mDefaultImg:Landroid/graphics/drawable/Drawable;

    .line 67
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    new-instance v1, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;-><init>(Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 121
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 122
    :cond_0
    const/4 v0, -0x1

    .line 125
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mPositions:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 130
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 131
    :cond_0
    const/4 v0, -0x1

    .line 144
    :cond_1
    :goto_0
    return v0

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 144
    .local v0, index:I
    if-gez v0, :cond_1

    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 91
    if-nez p2, :cond_0

    .line 92
    iget-object v4, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400ad

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 95
    new-instance v1, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;

    invoke-direct {v1}, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;-><init>()V

    .line 96
    .local v1, appHolder:Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;
    const v4, 0x7f0d01ad

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;->title:Landroid/widget/TextView;

    .line 97
    const v4, 0x7f0d0019

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;->icon:Landroid/widget/ImageView;

    .line 98
    const v4, 0x7f0d01ae

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;->privacyGuardIcon:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_0
    iget-object v4, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;

    .line 106
    .local v0, app:Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    iget-object v4, v1, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 109
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, v1, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-boolean v4, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    if-eqz v4, :cond_2

    const v3, 0x10803bb

    .line 114
    .local v3, privacyGuardDrawableResId:I
    :goto_2
    iget-object v4, v1, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;->privacyGuardIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    return-object p2

    .line 101
    .end local v0           #app:Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    .end local v1           #appHolder:Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;
    .end local v3           #privacyGuardDrawableResId:I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;

    .restart local v1       #appHolder:Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;
    goto :goto_0

    .line 109
    .restart local v0       #app:Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->mDefaultImg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 111
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    const v3, 0x10803bc

    goto :goto_2
.end method
