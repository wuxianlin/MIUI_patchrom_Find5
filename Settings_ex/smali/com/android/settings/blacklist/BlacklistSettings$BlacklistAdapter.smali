.class Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BlacklistSettings.java"

# interfaces
.implements Lcom/android/settings/blacklist/ToggleImageView$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/blacklist/BlacklistSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlacklistAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;,
        Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mContactNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mMainHandler:Landroid/os/Handler;

.field private mQueryHandler:Landroid/os/Handler;

.field private mRequestedLookups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 290
    const v1, 0x7f040017

    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 211
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mLock:Ljava/lang/Object;

    .line 214
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mRequestedLookups:Landroid/util/SparseArray;

    .line 215
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mContactNameCache:Ljava/util/HashMap;

    .line 217
    new-instance v1, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$1;-><init>(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;)V

    iput-object v1, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mMainHandler:Landroid/os/Handler;

    .line 292
    const-string v1, "country_detector"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 294
    .local v0, detector:Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mRequestedLookups:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mContactNameCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mCurrentCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private scheduleNameLookup(ILjava/lang/String;)V
    .locals 5
    .parameter "id"
    .parameter "number"

    .prologue
    .line 363
    iget-object v3, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 364
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 365
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "blacklist_contact_query"

    const/16 v4, 0xa

    invoke-direct {v1, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 367
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 368
    new-instance v2, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;-><init>(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;

    .line 370
    .end local v1           #thread:Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    iget-object v2, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mRequestedLookups:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    iget-object v2, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 374
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 375
    return-void

    .line 370
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;

    .line 322
    .local v1, holder:Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mContactNameCache:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 324
    .local v3, name:Ljava/lang/String;
    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v4, v5, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 328
    iget-object v5, v1, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v5, v1, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    :goto_0
    if-nez v3, :cond_0

    .line 337
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 338
    .local v2, id:I
    invoke-direct {p0, v2, v4}, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->scheduleNameLookup(ILjava/lang/String;)V

    .line 341
    .end local v2           #id:I
    :cond_0
    iget-object v8, v1, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->callStatus:Lcom/android/settings/blacklist/ToggleImageView;

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5, v7}, Lcom/android/settings/blacklist/ToggleImageView;->setCheckedInternal(ZZ)V

    .line 342
    iget-object v5, v1, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->messageStatus:Lcom/android/settings/blacklist/ToggleImageView;

    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_3

    :goto_2
    invoke-virtual {v5, v6, v7}, Lcom/android/settings/blacklist/ToggleImageView;->setCheckedInternal(ZZ)V

    .line 343
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    iput v5, v1, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->position:I

    .line 344
    return-void

    .line 331
    :cond_1
    iget-object v5, v1, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v5, v1, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v5, v1, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v5, v7

    .line 341
    goto :goto_1

    :cond_3
    move v6, v7

    .line 342
    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 300
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 302
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;-><init>(Lcom/android/settings/blacklist/BlacklistSettings$1;)V

    .line 303
    .local v0, holder:Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;
    const v2, 0x7f0d002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    .line 304
    const v2, 0x7f0d002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    .line 305
    const v2, 0x7f0d0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/blacklist/ToggleImageView;

    iput-object v2, v0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->callStatus:Lcom/android/settings/blacklist/ToggleImageView;

    .line 306
    const v2, 0x7f0d0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/blacklist/ToggleImageView;

    iput-object v2, v0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->messageStatus:Lcom/android/settings/blacklist/ToggleImageView;

    .line 308
    iget-object v2, v0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->callStatus:Lcom/android/settings/blacklist/ToggleImageView;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/settings/blacklist/ToggleImageView;->setTag(Ljava/lang/Object;)V

    .line 309
    iget-object v2, v0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->callStatus:Lcom/android/settings/blacklist/ToggleImageView;

    invoke-virtual {v2, p0}, Lcom/android/settings/blacklist/ToggleImageView;->setOnCheckedChangeListener(Lcom/android/settings/blacklist/ToggleImageView$OnCheckedChangeListener;)V

    .line 311
    iget-object v2, v0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->messageStatus:Lcom/android/settings/blacklist/ToggleImageView;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Lcom/android/settings/blacklist/ToggleImageView;->setTag(Ljava/lang/Object;)V

    .line 312
    iget-object v2, v0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->messageStatus:Lcom/android/settings/blacklist/ToggleImageView;

    invoke-virtual {v2, p0}, Lcom/android/settings/blacklist/ToggleImageView;->setOnCheckedChangeListener(Lcom/android/settings/blacklist/ToggleImageView$OnCheckedChangeListener;)V

    .line 314
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 316
    return-object v1
.end method

.method public onCheckedChanged(Lcom/android/settings/blacklist/ToggleImageView;Z)V
    .locals 9
    .parameter "view"
    .parameter "isChecked"

    .prologue
    const/4 v8, 0x0

    .line 348
    invoke-virtual {p1}, Lcom/android/settings/blacklist/ToggleImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 349
    .local v5, parent:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;

    .line 350
    .local v2, holder:Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;
    invoke-virtual {p1}, Lcom/android/settings/blacklist/ToggleImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    .local v0, column:Ljava/lang/String;
    iget v7, v2, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;->position:I

    invoke-virtual {p0, v7}, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->getItemId(I)J

    move-result-wide v3

    .line 352
    .local v3, id:J
    sget-object v7, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 353
    .local v6, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 355
    .local v1, cv:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/android/settings/blacklist/ToggleImageView;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    iget-object v7, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-gtz v7, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->notifyDataSetChanged()V

    .line 360
    :cond_0
    return-void

    .line 355
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method
