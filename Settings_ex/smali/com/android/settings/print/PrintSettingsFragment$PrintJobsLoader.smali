.class final Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintJobsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

.field private mPrintJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 453
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    .line 454
    const-string v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 457
    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->onForceLoad()V

    return-void
.end method

.method private static shouldShowToUser(Landroid/print/PrintJobInfo;)Z
    .locals 1
    .parameter "printJob"

    .prologue
    .line 536
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 544
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 541
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 440
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 464
    :cond_0
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    const/4 v3, 0x0

    .line 521
    .local v3, printJobInfos:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    iget-object v5, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v5}, Landroid/print/PrintManager;->getPrintJobs()Ljava/util/List;

    move-result-object v4

    .line 522
    .local v4, printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJob;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 523
    .local v2, printJobCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 524
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJob;

    invoke-virtual {v5}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v1

    .line 525
    .local v1, printJob:Landroid/print/PrintJobInfo;
    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->shouldShowToUser(Landroid/print/PrintJobInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 526
    if-nez v3, :cond_0

    .line 527
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #printJobInfos:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .restart local v3       #printJobInfos:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    .end local v1           #printJob:Landroid/print/PrintJobInfo;
    :cond_2
    return-object v3
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->onStopLoading()V

    .line 509
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 511
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 516
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->deliverResult(Ljava/util/List;)V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-nez v0, :cond_1

    .line 477
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;-><init>(Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 483
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->onForceLoad()V

    .line 490
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->onCancelLoad()Z

    .line 499
    return-void
.end method
