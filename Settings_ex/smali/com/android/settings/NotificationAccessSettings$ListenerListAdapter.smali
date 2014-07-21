.class Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListenerListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ServiceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/NotificationAccessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationAccessSettings;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 273
    iput-object p1, p0, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->this$0:Lcom/android/settings/NotificationAccessSettings;

    .line 274
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 275
    invoke-virtual {p1}, Lcom/android/settings/NotificationAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 277
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/NotificationAccessSettings$ViewHolder;

    .line 311
    .local v1, vh:Lcom/android/settings/NotificationAccessSettings$ViewHolder;
    invoke-virtual {p0, p2}, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 313
    .local v0, info:Landroid/content/pm/ServiceInfo;
    iget-object v2, v1, Lcom/android/settings/NotificationAccessSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->this$0:Lcom/android/settings/NotificationAccessSettings;

    #getter for: Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/NotificationAccessSettings;->access$100(Lcom/android/settings/NotificationAccessSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v2, v1, Lcom/android/settings/NotificationAccessSettings$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->this$0:Lcom/android/settings/NotificationAccessSettings;

    #getter for: Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/NotificationAccessSettings;->access$100(Lcom/android/settings/NotificationAccessSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v2, v1, Lcom/android/settings/NotificationAccessSettings$ViewHolder;->description:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v2, v1, Lcom/android/settings/NotificationAccessSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->this$0:Lcom/android/settings/NotificationAccessSettings;

    invoke-virtual {v3, v0}, Lcom/android/settings/NotificationAccessSettings;->isListenerEnabled(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 322
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 284
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 289
    if-nez p2, :cond_0

    .line 290
    invoke-virtual {p0, p3}, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->bindView(Landroid/view/View;I)V

    .line 295
    return-object v0

    .line 292
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040076

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 300
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/android/settings/NotificationAccessSettings$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/NotificationAccessSettings$ViewHolder;-><init>()V

    .line 301
    .local v0, h:Lcom/android/settings/NotificationAccessSettings$ViewHolder;
    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings/NotificationAccessSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 302
    const v2, 0x7f0d002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/NotificationAccessSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 303
    const v2, 0x7f0d00b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/settings/NotificationAccessSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 304
    const v2, 0x7f0d00b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/NotificationAccessSettings$ViewHolder;->description:Landroid/widget/TextView;

    .line 305
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 306
    return-object v1
.end method
