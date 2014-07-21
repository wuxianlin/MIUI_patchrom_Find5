.class final Lcom/android/settings/applications/ProcessStatsDetail$1;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/applications/ProcStatsEntry$Service;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/ProcStatsEntry$Service;Lcom/android/settings/applications/ProcStatsEntry$Service;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 215
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 216
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    .line 217
    :cond_0
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 218
    const/4 v0, -0x1

    goto :goto_0

    .line 220
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    check-cast p1, Lcom/android/settings/applications/ProcStatsEntry$Service;

    .end local p1
    check-cast p2, Lcom/android/settings/applications/ProcStatsEntry$Service;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail$1;->compare(Lcom/android/settings/applications/ProcStatsEntry$Service;Lcom/android/settings/applications/ProcStatsEntry$Service;)I

    move-result v0

    return v0
.end method
