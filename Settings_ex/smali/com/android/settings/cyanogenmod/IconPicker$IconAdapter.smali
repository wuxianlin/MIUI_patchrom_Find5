.class Lcom/android/settings/cyanogenmod/IconPicker$IconAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/IconPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconAdapter"
.end annotation


# instance fields
.field icons:[Ljava/lang/String;

.field labels:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/cyanogenmod/IconPicker;


# direct methods
.method public constructor <init>(Lcom/android/settings/cyanogenmod/IconPicker;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/IconPicker$IconAdapter;->this$0:Lcom/android/settings/cyanogenmod/IconPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 156
    #getter for: Lcom/android/settings/cyanogenmod/IconPicker;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/settings/cyanogenmod/IconPicker;->access$200(Lcom/android/settings/cyanogenmod/IconPicker;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/IconPicker$IconAdapter;->labels:[Ljava/lang/String;

    .line 157
    #getter for: Lcom/android/settings/cyanogenmod/IconPicker;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/settings/cyanogenmod/IconPicker;->access$200(Lcom/android/settings/cyanogenmod/IconPicker;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/IconPicker$IconAdapter;->icons:[Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/IconPicker$IconAdapter;->labels:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .parameter "position"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/IconPicker$IconAdapter;->this$0:Lcom/android/settings/cyanogenmod/IconPicker;

    #getter for: Lcom/android/settings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/IconPicker;->access$300(Lcom/android/settings/cyanogenmod/IconPicker;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/IconPicker$IconAdapter;->icons:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 178
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemReference(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/IconPicker$IconAdapter;->icons:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 173
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 183
    move-object v3, p2

    .line 184
    .local v3, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 185
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/IconPicker$IconAdapter;->this$0:Lcom/android/settings/cyanogenmod/IconPicker;

    #getter for: Lcom/android/settings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/settings/cyanogenmod/IconPicker;->access$300(Lcom/android/settings/cyanogenmod/IconPicker;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1090003

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 188
    :cond_0
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 189
    .local v2, label:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/IconPicker$IconAdapter;->labels:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/IconPicker$IconAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 192
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/IconPicker$IconAdapter;->this$0:Lcom/android/settings/cyanogenmod/IconPicker;

    #getter for: Lcom/android/settings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/settings/cyanogenmod/IconPicker;->access$300(Lcom/android/settings/cyanogenmod/IconPicker;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 195
    .local v0, bound:I
    invoke-virtual {v1, v7, v7, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 196
    invoke-virtual {v2, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 198
    return-object v3
.end method
