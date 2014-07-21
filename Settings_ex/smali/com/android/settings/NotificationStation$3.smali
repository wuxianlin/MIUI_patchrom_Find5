.class Lcom/android/settings/NotificationStation$3;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationStation;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/NotificationStation$3;->this$0:Lcom/android/settings/NotificationStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 97
    iget-wide v0, p2, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    iget-wide v2, p1, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    check-cast p1, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;

    .end local p1
    check-cast p2, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/NotificationStation$3;->compare(Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;)I

    move-result v0

    return v0
.end method
