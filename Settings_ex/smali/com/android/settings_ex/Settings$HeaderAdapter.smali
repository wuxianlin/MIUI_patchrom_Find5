.class Lcom/android/settings_ex/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLocationEnabler:Lcom/android/settings_ex/location/LocationEnabler;

.field private final mMobileDataEnabler:Lcom/android/settings_ex/net/MobileDataEnabler;

.field private final mProfileEnabler:Lcom/android/settings_ex/profiles/ProfileEnabler;

.field private final mVoiceWakeupEnabler:Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;

.field private final mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings_ex/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "authenticatorHelper"
    .parameter "dpm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings_ex/accounts/AuthenticatorHelper;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 939
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 941
    iput-object p3, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    .line 942
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 946
    new-instance v0, Lcom/android/settings_ex/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    .line 947
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    .line 948
    new-instance v0, Lcom/android/settings_ex/net/MobileDataEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/net/MobileDataEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings_ex/net/MobileDataEnabler;

    .line 949
    new-instance v0, Lcom/android/settings_ex/profiles/ProfileEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/profiles/ProfileEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mProfileEnabler:Lcom/android/settings_ex/profiles/ProfileEnabler;

    .line 950
    new-instance v0, Lcom/android/settings_ex/location/LocationEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/location/LocationEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mLocationEnabler:Lcom/android/settings_ex/location/LocationEnabler;

    .line 951
    new-instance v0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mVoiceWakeupEnabler:Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;

    .line 952
    iput-object p4, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 953
    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .parameter "header"

    .prologue
    .line 895
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 896
    const/4 v0, 0x0

    .line 907
    :goto_0
    return v0

    .line 897
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d02b4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d02b5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d02b6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d0190

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d02cd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d02cc

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 903
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 904
    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0d02ce

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 905
    const/4 v0, 0x3

    goto :goto_0

    .line 907
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setHeaderIcon(Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "holder"
    .parameter "icon"

    .prologue
    .line 1093
    iget-object v1, p1, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1094
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1096
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1097
    iget-object v1, p1, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1098
    iget-object v1, p1, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1099
    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;)V
    .locals 5
    .parameter "header"
    .parameter "holder"

    .prologue
    .line 1073
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1075
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, accType:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1078
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p2, v1}, Lcom/android/settings_ex/Settings$HeaderAdapter;->setHeaderIcon(Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 1082
    .end local v0           #accType:Ljava/lang/String;
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v3, p2, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1084
    .local v2, summary:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1085
    iget-object v3, p2, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1086
    iget-object v3, p2, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    :goto_1
    return-void

    .line 1080
    .end local v2           #summary:Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p2, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v4, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1088
    .restart local v2       #summary:Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p2, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 913
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 914
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const v10, 0x7f0d0038

    const v9, 0x1020016

    const v8, 0x1020010

    const/4 v4, 0x0

    .line 958
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 959
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 960
    .local v2, headerType:I
    const/4 v5, 0x0

    .line 962
    .local v5, view:Landroid/view/View;
    if-eqz p2, :cond_0

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    .line 963
    :cond_0
    new-instance v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings_ex/Settings$1;)V

    .line 964
    .local v3, holder:Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 1005
    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1012
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 1069
    :goto_2
    return-object v5

    .line 966
    :pswitch_0
    new-instance v5, Landroid/widget/TextView;

    .end local v5           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x1010208

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v5       #view:Landroid/view/View;
    move-object v6, v5

    .line 968
    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 972
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040093

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 974
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 975
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 977
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 979
    const v6, 0x7f0d0018

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    .line 983
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040091

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 985
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 986
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 988
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 990
    const v6, 0x7f0d0183

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 991
    const v6, 0x7f0d00dd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto :goto_0

    .line 995
    :pswitch_3
    iget-object v6, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040092

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 998
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 999
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1001
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1007
    .end local v3           #holder:Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_1
    move-object v5, p2

    .line 1008
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v3       #holder:Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 1014
    :pswitch_4
    iget-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1019
    :pswitch_5
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d02b4

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 1020
    iget-object v6, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    iget-object v7, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1032
    :cond_2
    :goto_3
    invoke-direct {p0, v1, v3}, Lcom/android/settings_ex/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 1021
    :cond_3
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d02b5

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 1022
    iget-object v6, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    iget-object v7, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 1023
    :cond_4
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d02b6

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 1024
    iget-object v6, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings_ex/net/MobileDataEnabler;

    iget-object v7, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/net/MobileDataEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 1025
    :cond_5
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d0190

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 1026
    iget-object v6, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mProfileEnabler:Lcom/android/settings_ex/profiles/ProfileEnabler;

    iget-object v7, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/profiles/ProfileEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 1027
    :cond_6
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d02cc

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 1028
    iget-object v6, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mLocationEnabler:Lcom/android/settings_ex/location/LocationEnabler;

    iget-object v7, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/location/LocationEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 1029
    :cond_7
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d02cd

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1030
    iget-object v6, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mVoiceWakeupEnabler:Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;

    iget-object v7, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 1036
    :pswitch_6
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0d02ce

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    .line 1037
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v0

    .line 1038
    .local v0, hasCert:Z
    if-eqz v0, :cond_b

    .line 1039
    iget-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1040
    iget-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    iget-object v6, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    const/4 v4, 0x1

    .line 1042
    .local v4, isManaged:Z
    :cond_8
    if-eqz v4, :cond_a

    .line 1043
    iget-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v7, 0x7f02009f

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1048
    :goto_4
    iget-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/settings_ex/Settings$HeaderAdapter$1;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/Settings$HeaderAdapter$1;-><init>(Lcom/android/settings_ex/Settings$HeaderAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    .end local v0           #hasCert:Z
    .end local v4           #isManaged:Z
    :cond_9
    :goto_5
    invoke-direct {p0, v1, v3}, Lcom/android/settings_ex/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 1045
    .restart local v0       #hasCert:Z
    .restart local v4       #isManaged:Z
    :cond_a
    iget-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v7, 0x1080078

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 1057
    .end local v4           #isManaged:Z
    :cond_b
    iget-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1058
    iget-object v6, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1065
    .end local v0           #hasCert:Z
    :pswitch_7
    invoke-direct {p0, v1, v3}, Lcom/android/settings_ex/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1012
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 929
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 934
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 924
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->pause()V

    .line 1112
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->pause()V

    .line 1113
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings_ex/net/MobileDataEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/net/MobileDataEnabler;->pause()V

    .line 1114
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mProfileEnabler:Lcom/android/settings_ex/profiles/ProfileEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/ProfileEnabler;->pause()V

    .line 1115
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mLocationEnabler:Lcom/android/settings_ex/location/LocationEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/location/LocationEnabler;->pause()V

    .line 1116
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mVoiceWakeupEnabler:Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->pause()V

    .line 1117
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->resume()V

    .line 1103
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->resume()V

    .line 1104
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings_ex/net/MobileDataEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/net/MobileDataEnabler;->resume()V

    .line 1105
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mProfileEnabler:Lcom/android/settings_ex/profiles/ProfileEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/ProfileEnabler;->resume()V

    .line 1106
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mLocationEnabler:Lcom/android/settings_ex/location/LocationEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/location/LocationEnabler;->resume()V

    .line 1107
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mVoiceWakeupEnabler:Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->resume()V

    .line 1108
    return-void
.end method
