.class Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiPriority.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiPriority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiPriorityAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiPriority;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wifi/WifiPriority;Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .parameter "wifiManager"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->this$0:Lcom/android/settings_ex/wifi/WifiPriority;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 116
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 117
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 118
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->reloadNetworks()V

    .line 119
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->reloadNetworks()V

    return-void
.end method

.method private filterSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ssid"

    .prologue
    .line 190
    if-eqz p1, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private reloadNetworks()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->mNetworks:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->mNetworks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->mNetworks:Ljava/util/List;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->mNetworks:Ljava/util/List;

    new-instance v1, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter$1;-><init>(Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->mNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->mNetworks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 158
    int-to-long v0, p1

    return-wide v0
.end method

.method getNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->mNetworks:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 164
    if-nez p2, :cond_0

    .line 165
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400ec

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 170
    .local v3, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 172
    .local v2, network:Landroid/net/wifi/WifiConfiguration;
    const v4, 0x7f0d0038

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 173
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->this$0:Lcom/android/settings_ex/wifi/WifiPriority;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/WifiPriority;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020137

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :goto_1
    const v4, 0x7f0d002f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 183
    .local v1, name:Landroid/widget/TextView;
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->filterSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-object v3

    .line 167
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #name:Landroid/widget/TextView;
    .end local v2           #network:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #v:Landroid/view/View;
    :cond_0
    move-object v3, p2

    .restart local v3       #v:Landroid/view/View;
    goto :goto_0

    .line 177
    .restart local v0       #icon:Landroid/widget/ImageView;
    .restart local v2       #network:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiPriority$WifiPriorityAdapter;->this$0:Lcom/android/settings_ex/wifi/WifiPriority;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/WifiPriority;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020135

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
