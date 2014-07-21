.class final Lcom/android/settings/applications/ProcessStatsDetail$2;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/settings/applications/ProcStatsEntry$Service;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    check-cast p2, Ljava/util/ArrayList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail$2;->compare(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, lhs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    .local p2, rhs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 229
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-wide v0, v4, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 230
    .local v0, topLhs:J
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-wide v2, v4, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 231
    .local v2, topRhs:J
    :goto_1
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 232
    const/4 v4, 0x1

    .line 236
    :goto_2
    return v4

    .end local v0           #topLhs:J
    .end local v2           #topRhs:J
    :cond_0
    move-wide v0, v5

    .line 229
    goto :goto_0

    .restart local v0       #topLhs:J
    :cond_1
    move-wide v2, v5

    .line 230
    goto :goto_1

    .line 233
    .restart local v2       #topRhs:J
    :cond_2
    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 234
    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    move v4, v7

    .line 236
    goto :goto_2
.end method
