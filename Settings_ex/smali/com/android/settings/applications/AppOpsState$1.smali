.class final Lcom/android/settings/applications/AppOpsState$1;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsState;
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
        "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/applications/AppOpsState$AppOpEntry;)I
    .locals 6
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 477
    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 478
    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 478
    goto :goto_0

    .line 480
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v2

    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 482
    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 484
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 486
    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 488
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$1;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 473
    check-cast p1, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .end local p1
    check-cast p2, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/AppOpsState$1;->compare(Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/applications/AppOpsState$AppOpEntry;)I

    move-result v0

    return v0
.end method
