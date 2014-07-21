.class public Lcom/android/settings/CustomScreenColor;
.super Landroid/app/Activity;
.source "CustomScreenColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CustomScreenColor$1;,
        Lcom/android/settings/CustomScreenColor$MyMenuItemclick;,
        Lcom/android/settings/CustomScreenColor$PPServiceConnection;
    }
.end annotation


# instance fields
.field private canRestorePreview:Z

.field private mCBar:Landroid/widget/SeekBar;

.field private mCTv:Landroid/widget/TextView;

.field private mCancelBtn:Landroid/widget/Button;

.field private mContrastValue:I

.field private mDefaultContrastValue:I

.field private mDefaultHueValue:I

.field private mDefaultIntensityValue:I

.field private mDefaultSaturationValue:I

.field private mHBar:Landroid/widget/SeekBar;

.field private mHTv:Landroid/widget/TextView;

.field private mHueValue:I

.field private mIBar:Landroid/widget/SeekBar;

.field private mITv:Landroid/widget/TextView;

.field private mIncreaseC:Landroid/widget/ImageView;

.field private mIncreaseH:Landroid/widget/ImageView;

.field private mIncreaseI:Landroid/widget/ImageView;

.field private mIncreaseS:Landroid/widget/ImageView;

.field private mIntensityValue:I

.field private mMaxContrastValue:I

.field private mMaxHueValue:I

.field private mMaxIntensityValue:I

.field private mMaxSaturationValue:I

.field private mMinContrastValue:I

.field private mMinHueValue:I

.field private mMinIntensityValue:I

.field private mMinSaturationValue:I

.field private mMore:Landroid/widget/ImageView;

.field private mNewBtn:Landroid/widget/Button;

.field mPPService:Lcom/android/display/IPPService;

.field mPPServiceConn:Lcom/android/settings/CustomScreenColor$PPServiceConnection;

.field private mPreviousBtn:Landroid/widget/Button;

.field private mRLayout:Landroid/widget/RelativeLayout;

.field private mReduceC:Landroid/widget/ImageView;

.field private mReduceH:Landroid/widget/ImageView;

.field private mReduceI:Landroid/widget/ImageView;

.field private mReduceS:Landroid/widget/ImageView;

.field private mSBar:Landroid/widget/SeekBar;

.field private mSTv:Landroid/widget/TextView;

.field private mSaturationValue:I

.field private mSaveBtn:Landroid/widget/Button;

.field private mScreenColorLayout:Landroid/widget/LinearLayout;

.field private mUpdown:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    .line 112
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    .line 113
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    .line 114
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    .line 116
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMinHueValue:I

    .line 117
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMaxHueValue:I

    .line 118
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mDefaultHueValue:I

    .line 119
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMinSaturationValue:I

    .line 120
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMaxSaturationValue:I

    .line 121
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mDefaultSaturationValue:I

    .line 122
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMinIntensityValue:I

    .line 123
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMaxIntensityValue:I

    .line 124
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mDefaultIntensityValue:I

    .line 125
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMinContrastValue:I

    .line 126
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMaxContrastValue:I

    .line 127
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mDefaultContrastValue:I

    .line 132
    iput-object v1, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    .line 133
    iput-object v1, p0, Lcom/android/settings/CustomScreenColor;->mPPServiceConn:Lcom/android/settings/CustomScreenColor$PPServiceConnection;

    .line 667
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/CustomScreenColor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/CustomScreenColor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->resotreBackgroundByDefault()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/CustomScreenColor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->selectPicFromGallery2()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/CustomScreenColor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->restoreDefaultHSCI()V

    return-void
.end method

.method private changePreviewByData(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 593
    if-eqz p1, :cond_0

    .line 594
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 595
    .local v0, uri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/settings/CustomScreenColor;->setBackgroundByUri(Landroid/net/Uri;)V

    .line 596
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/CustomScreenColor;->savePreviewKey(Ljava/lang/String;)V

    .line 598
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private getScreenColorPreviewKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 636
    const-string v1, "screencolor_preview_name"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/CustomScreenColor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 638
    .local v0, share:Landroid/content/SharedPreferences;
    const-string v1, "screencolor_preview_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initBtnsStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 559
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 562
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 564
    return-void
.end method

.method private initPPService()V
    .locals 3

    .prologue
    .line 248
    new-instance v0, Lcom/android/settings/CustomScreenColor$PPServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CustomScreenColor$PPServiceConnection;-><init>(Lcom/android/settings/CustomScreenColor;Lcom/android/settings/CustomScreenColor$1;)V

    iput-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPPServiceConn:Lcom/android/settings/CustomScreenColor$PPServiceConnection;

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/display/IPPService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mPPServiceConn:Lcom/android/settings/CustomScreenColor$PPServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/CustomScreenColor;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 251
    return-void
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 163
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMinHueValue:I

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxHueValue:I

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mDefaultHueValue:I

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMinSaturationValue:I

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxSaturationValue:I

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mDefaultSaturationValue:I

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMinIntensityValue:I

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxIntensityValue:I

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mDefaultIntensityValue:I

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMinContrastValue:I

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxContrastValue:I

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mDefaultContrastValue:I

    .line 178
    const v3, 0x7f0d0068

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mRLayout:Landroid/widget/RelativeLayout;

    .line 179
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->getScreenColorPreviewKey()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, previewContent:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->resotreBackgroundByDefault()V

    .line 187
    :goto_0
    const v3, 0x7f0d0072

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    .line 188
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0027

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 189
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v3, 0x7f0d0076

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    .line 192
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mMaxHueValue:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 193
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 194
    const v3, 0x7f0d007a

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    .line 195
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mMaxSaturationValue:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 196
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 197
    const v3, 0x7f0d0083

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    .line 198
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mMaxIntensityValue:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 199
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 200
    const v3, 0x7f0d007e

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    .line 201
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mMaxContrastValue:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 202
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 204
    const v3, 0x7f0d0073

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mHTv:Landroid/widget/TextView;

    .line 205
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mHTv:Landroid/widget/TextView;

    const v4, 0x7f080084

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const v3, 0x7f0d0077

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSTv:Landroid/widget/TextView;

    .line 207
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSTv:Landroid/widget/TextView;

    const v4, 0x7f080085

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const v3, 0x7f0d007f

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mITv:Landroid/widget/TextView;

    .line 209
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mITv:Landroid/widget/TextView;

    const v4, 0x7f080087

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const v3, 0x7f0d007b

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCTv:Landroid/widget/TextView;

    .line 211
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCTv:Landroid/widget/TextView;

    const v4, 0x7f080086

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const v3, 0x7f0d0074

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceH:Landroid/widget/ImageView;

    .line 214
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceH:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v3, 0x7f0d0075

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseH:Landroid/widget/ImageView;

    .line 216
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseH:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v3, 0x7f0d0078

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceS:Landroid/widget/ImageView;

    .line 218
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceS:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v3, 0x7f0d0079

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseS:Landroid/widget/ImageView;

    .line 220
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseS:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v3, 0x7f0d0081

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceI:Landroid/widget/ImageView;

    .line 222
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceI:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v3, 0x7f0d0082

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseI:Landroid/widget/ImageView;

    .line 224
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseI:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v3, 0x7f0d007c

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceC:Landroid/widget/ImageView;

    .line 226
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceC:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const v3, 0x7f0d007d

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseC:Landroid/widget/ImageView;

    .line 228
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseC:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v3, 0x7f0d006d

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    .line 231
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v3, 0x7f0d006e

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    .line 233
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v3, 0x7f0d006f

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    .line 236
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const v3, 0x7f0d0070

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    .line 238
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    const v3, 0x7f0d006a

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCancelBtn:Landroid/widget/Button;

    .line 240
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v3, 0x7f0d006b

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSaveBtn:Landroid/widget/Button;

    .line 242
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->initBtnsStatus()V

    .line 245
    return-void

    .line 183
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 184
    .local v2, previewUri:Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/android/settings/CustomScreenColor;->setBackgroundByUri(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method private previewNewHSIC()V
    .locals 6

    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 533
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 534
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 535
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 536
    const-string v1, "CustomScreenColor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewNewHSIC mHueValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSaturationValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mContrastValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIntensityValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v1}, Lcom/android/display/IPPService;->getPPStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    iget v2, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    iget v5, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/display/IPPService;->updateHSIC(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "CustomScreenColor"

    const-string v2, "updateHSIC exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private previousOrNewHSCI(Z)V
    .locals 4
    .parameter "isPrevious"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 567
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 571
    :cond_0
    if-eqz p1, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 573
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 574
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    invoke-direct {p0, v3}, Lcom/android/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    .line 584
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 579
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 580
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 582
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->previewNewHSIC()V

    goto :goto_0
.end method

.method private resotreBackgroundByDefault()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mRLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 613
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/settings/CustomScreenColor;->savePreviewKey(Ljava/lang/String;)V

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CustomScreenColor;->canRestorePreview:Z

    .line 615
    return-void
.end method

.method private restoreDefaultHSCI()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mDefaultHueValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mDefaultSaturationValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 502
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mDefaultIntensityValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 503
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mDefaultContrastValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 504
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->setNewBtnHighlight()V

    .line 505
    return-void
.end method

.method private restoreSavedHSCI(Z)V
    .locals 9
    .parameter "setProgress"

    .prologue
    .line 508
    const-string v6, "screencolor_preview_name"

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/CustomScreenColor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 510
    .local v5, share:Landroid/content/SharedPreferences;
    const-string v6, "hue"

    iget v7, p0, Lcom/android/settings/CustomScreenColor;->mDefaultHueValue:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 511
    .local v2, hueValue:I
    const-string v6, "saturation"

    iget v7, p0, Lcom/android/settings/CustomScreenColor;->mDefaultSaturationValue:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 512
    .local v4, saturationValue:I
    const-string v6, "intensity"

    iget v7, p0, Lcom/android/settings/CustomScreenColor;->mDefaultIntensityValue:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 513
    .local v3, intensityValue:I
    const-string v6, "contrast"

    iget v7, p0, Lcom/android/settings/CustomScreenColor;->mDefaultContrastValue:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 514
    .local v0, contrastValue:I
    if-eqz p1, :cond_0

    .line 515
    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 516
    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 517
    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 518
    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 520
    :cond_0
    const-string v6, "CustomScreenColor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreSavedHSCI hueValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " saturationValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " contrastValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intensityValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v6}, Lcom/android/display/IPPService;->getPPStatus()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 524
    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v6, v2, v4, v3, v0}, Lcom/android/display/IPPService;->updateHSIC(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :cond_1
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "CustomScreenColor"

    const-string v7, "updateHSIC exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveHSCI()V
    .locals 4

    .prologue
    .line 588
    iget v0, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    iget v2, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/CustomScreenColor;->saveHSICPreference(IIII)V

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->finish()V

    .line 590
    return-void
.end method

.method private saveHSICPreference(IIII)V
    .locals 4
    .parameter "h"
    .parameter "s"
    .parameter "i"
    .parameter "c"

    .prologue
    .line 626
    const-string v2, "screencolor_preview_name"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/CustomScreenColor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 627
    .local v1, share:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 628
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "hue"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 629
    const-string v2, "saturation"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 630
    const-string v2, "intensity"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 631
    const-string v2, "contrast"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 632
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 633
    return-void
.end method

.method private savePreviewKey(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 619
    const-string v2, "screencolor_preview_name"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/CustomScreenColor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 620
    .local v1, share:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 621
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "screencolor_preview_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 622
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 623
    return-void
.end method

.method private selectPicFromGallery2()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 485
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.gallery3d"

    const-string v4, "com.android.gallery3d.app.Wallpaper"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 487
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 489
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "aspectX"

    const/16 v3, 0x1e0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 490
    const-string v2, "aspectY"

    const/16 v3, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 491
    const-string v2, "spotlightX"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 492
    const-string v2, "spotlightY"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 494
    const-string v2, "fromScreenColor"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 495
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 496
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/CustomScreenColor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 497
    return-void
.end method

.method private setActivated(Landroid/widget/SeekBar;Z)V
    .locals 2
    .parameter "seekBar"
    .parameter "isActivated"

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    .line 403
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 424
    :goto_0
    return-void

    .line 405
    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mReduceH:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 406
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseH:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 409
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mReduceS:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 410
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseS:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 413
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mReduceI:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 414
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseI:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 417
    :sswitch_3
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mReduceC:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 418
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseC:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 403
    :sswitch_data_0
    .sparse-switch
        0x7f0d0076 -> :sswitch_0
        0x7f0d007a -> :sswitch_1
        0x7f0d007e -> :sswitch_3
        0x7f0d0083 -> :sswitch_2
    .end sparse-switch
.end method

.method private setBackgroundByUri(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 602
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 603
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 604
    .local v1, bm:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 605
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mRLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/CustomScreenColor;->canRestorePreview:Z

    .line 609
    return-void

    .line 606
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private setNewBtnHighlight()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 550
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 553
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 554
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 556
    return-void
.end method

.method private showMoreMenus()V
    .locals 4

    .prologue
    .line 652
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 653
    .local v1, popup:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 654
    .local v0, menu:Landroid/view/Menu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f10000a

    invoke-virtual {v2, v3, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 656
    iget-boolean v2, p0, Lcom/android/settings/CustomScreenColor;->canRestorePreview:Z

    if-eqz v2, :cond_0

    .line 657
    const v2, 0x7f0d02f9

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 663
    :goto_0
    new-instance v2, Lcom/android/settings/CustomScreenColor$MyMenuItemclick;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/CustomScreenColor$MyMenuItemclick;-><init>(Lcom/android/settings/CustomScreenColor;Lcom/android/settings/CustomScreenColor$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 664
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 665
    return-void

    .line 659
    :cond_0
    const v2, 0x7f0d02f7

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 660
    const v2, 0x7f0d02f8

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method private upDownHSCISettingLayout()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 642
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 649
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 288
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 289
    const-string v0, "CustomScreenColor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bail due to resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 292
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 294
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/settings/CustomScreenColor;->changePreviewByData(Landroid/content/Intent;)V

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 429
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 482
    :goto_0
    :pswitch_0
    return-void

    .line 431
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->finish()V

    goto :goto_0

    .line 435
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->saveHSCI()V

    goto :goto_0

    .line 438
    :pswitch_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/CustomScreenColor;->previousOrNewHSCI(Z)V

    goto :goto_0

    .line 441
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/android/settings/CustomScreenColor;->previousOrNewHSCI(Z)V

    goto :goto_0

    .line 444
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->upDownHSCISettingLayout()V

    goto :goto_0

    .line 447
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->showMoreMenus()V

    goto :goto_0

    .line 450
    :pswitch_7
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMinHueValue:I

    if-le v1, v3, :cond_0

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    add-int/lit8 v1, v1, -0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMinHueValue:I

    goto :goto_1

    .line 453
    :pswitch_8
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxHueValue:I

    if-ge v1, v3, :cond_1

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    add-int/lit8 v1, v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMaxHueValue:I

    goto :goto_2

    .line 456
    :pswitch_9
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMinSaturationValue:I

    if-le v1, v3, :cond_2

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    add-int/lit8 v1, v1, -0x1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMinSaturationValue:I

    goto :goto_3

    .line 460
    :pswitch_a
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxSaturationValue:I

    if-ge v1, v3, :cond_3

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    add-int/lit8 v1, v1, 0x1

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMaxSaturationValue:I

    goto :goto_4

    .line 464
    :pswitch_b
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMinIntensityValue:I

    if-le v1, v3, :cond_4

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    add-int/lit8 v1, v1, -0x1

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMinIntensityValue:I

    goto :goto_5

    .line 468
    :pswitch_c
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxIntensityValue:I

    if-ge v1, v3, :cond_5

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    add-int/lit8 v1, v1, 0x1

    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMaxIntensityValue:I

    goto :goto_6

    .line 472
    :pswitch_d
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMinContrastValue:I

    if-le v1, v3, :cond_6

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    add-int/lit8 v1, v1, -0x1

    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMinContrastValue:I

    goto :goto_7

    .line 476
    :pswitch_e
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxContrastValue:I

    if-ge v1, v3, :cond_7

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    add-int/lit8 v1, v1, 0x1

    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMaxContrastValue:I

    goto :goto_8

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d006a
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->initPPService()V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 140
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/android/settings/CustomScreenColor;->setContentView(I)V

    .line 141
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->initView()V

    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    .line 143
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f080083

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    const/4 v0, 0x2

    const v1, 0x7f080082

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 305
    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 306
    const v0, 0x7f080080

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 308
    const v0, 0x7f080081

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 310
    invoke-interface {p1, v3, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 311
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPPServiceConn:Lcom/android/settings/CustomScreenColor$PPServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/CustomScreenColor;->unbindService(Landroid/content/ServiceConnection;)V

    .line 159
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 328
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 345
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    .line 330
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->finish()V

    .line 347
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 333
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->selectPicFromGallery2()V

    goto :goto_1

    .line 336
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->selectPicFromGallery2()V

    goto :goto_1

    .line 339
    :sswitch_3
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->resotreBackgroundByDefault()V

    goto :goto_1

    .line 342
    :sswitch_4
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->restoreDefaultHSCI()V

    goto :goto_1

    .line 328
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 153
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 316
    iget-boolean v0, p0, Lcom/android/settings/CustomScreenColor;->canRestorePreview:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 318
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 323
    :goto_0
    return v1

    .line 320
    :cond_0
    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 321
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 12
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const-wide v10, 0x4066800000000000L

    const-wide/high16 v8, 0x4059

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 351
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->setNewBtnHighlight()V

    .line 352
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v1

    .line 353
    .local v1, id:I
    sparse-switch v1, :sswitch_data_0

    .line 380
    :goto_0
    const-string v2, "CustomScreenColor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged mHueValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSaturationValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNewContrastValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIntensityValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v2}, Lcom/android/display/IPPService;->getPPStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    iget v5, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    iget v6, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/display/IPPService;->updateHSIC(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_0
    :goto_1
    return-void

    .line 355
    :sswitch_0
    iput p2, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    .line 357
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mHTv:Landroid/widget/TextView;

    const v3, 0x7f080084

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit16 v5, p2, -0xb4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 360
    :sswitch_1
    iput p2, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    .line 362
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mSTv:Landroid/widget/TextView;

    const v3, 0x7f080085

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit16 v5, p2, -0xb4

    mul-int/lit8 v5, v5, 0x64

    int-to-double v5, v5

    div-double/2addr v5, v10

    double-to-int v5, v5

    int-to-double v5, v5

    div-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 366
    :sswitch_2
    iput p2, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    .line 368
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mCTv:Landroid/widget/TextView;

    const v3, 0x7f080086

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit16 v5, p2, -0xb4

    mul-int/lit8 v5, v5, 0x64

    int-to-double v5, v5

    div-double/2addr v5, v10

    double-to-int v5, v5

    int-to-double v5, v5

    div-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 372
    :sswitch_3
    iput p2, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    .line 374
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mITv:Landroid/widget/TextView;

    const v3, 0x7f080087

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit16 v5, p2, -0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CustomScreenColor"

    const-string v3, "updateHSIC exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 353
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0076 -> :sswitch_0
        0x7f0d007a -> :sswitch_1
        0x7f0d007e -> :sswitch_2
        0x7f0d0083 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 394
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/CustomScreenColor;->setActivated(Landroid/widget/SeekBar;Z)V

    .line 395
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/CustomScreenColor;->setActivated(Landroid/widget/SeekBar;Z)V

    .line 399
    return-void
.end method
