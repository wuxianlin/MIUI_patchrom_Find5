.class Lcom/android/settings_ex/NotificationStation$NotificationHistoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationHistoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings_ex/NotificationStation;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/NotificationStation;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings_ex/NotificationStation$NotificationHistoryAdapter;->this$0:Lcom/android/settings_ex/NotificationStation;

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 309
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/NotificationStation$NotificationHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 310
    return-void
.end method

.method private createRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/settings_ex/NotificationStation$NotificationHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040077

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 382
    .local v0, row:Landroid/view/View;
    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/NotificationStation$NotificationHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;

    .line 315
    .local v0, info:Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;
    const-string v2, "getView(%s/%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    #calls: Lcom/android/settings_ex/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/NotificationStation;->access$500(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    if-eqz p2, :cond_2

    move-object v1, p2

    .line 317
    .local v1, row:Landroid/view/View;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 320
    iget-object v2, v0, Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 321
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :cond_0
    iget-object v2, v0, Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 324
    const v2, 0x7f0d013a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :cond_1
    const v2, 0x7f0d013b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DateTimeView;

    iget-wide v3, v0, Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-virtual {v2, v3, v4}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 330
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const v2, 0x7f0d013c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    const v2, 0x7f0d011a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-boolean v2, v0, Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f80

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 344
    new-instance v2, Lcom/android/settings_ex/NotificationStation$NotificationHistoryAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/NotificationStation$NotificationHistoryAdapter$1;-><init>(Lcom/android/settings_ex/NotificationStation$NotificationHistoryAdapter;Lcom/android/settings_ex/NotificationStation$HistoricalNotificationInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    return-object v1

    .line 316
    .end local v1           #row:Landroid/view/View;
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/settings_ex/NotificationStation$NotificationHistoryAdapter;->createRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 341
    .restart local v1       #row:Landroid/view/View;
    :cond_3
    const/high16 v2, 0x3f00

    goto :goto_1
.end method
