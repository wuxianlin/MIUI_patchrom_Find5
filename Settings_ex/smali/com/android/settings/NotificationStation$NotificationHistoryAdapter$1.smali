.class Lcom/android/settings/NotificationStation$NotificationHistoryAdapter$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

.field final synthetic val$info:Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter$1;->this$1:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    iput-object p2, p0, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter$1;->val$info:Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 347
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter$1;->this$1:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    iget-object v0, v0, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;->this$0:Lcom/android/settings/NotificationStation;

    iget-object v1, p0, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter$1;->val$info:Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    #calls: Lcom/android/settings/NotificationStation;->startApplicationDetailsActivity(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/NotificationStation;->access$600(Lcom/android/settings/NotificationStation;Ljava/lang/String;)V

    .line 349
    return-void
.end method
