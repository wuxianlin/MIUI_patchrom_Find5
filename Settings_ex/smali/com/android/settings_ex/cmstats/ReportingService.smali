.class public Lcom/android/settings_ex/cmstats/ReportingService;
.super Landroid/app/Service;
.source "ReportingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/cmstats/ReportingService$1;,
        Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;
    }
.end annotation


# instance fields
.field private mTask:Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 56
    const-string v0, "CMStats"

    const-string v1, "User has opted in -- reporting."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/cmstats/ReportingService;->mTask:Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/cmstats/ReportingService;->mTask:Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;

    invoke-virtual {v0}, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;-><init>(Lcom/android/settings_ex/cmstats/ReportingService;Lcom/android/settings_ex/cmstats/ReportingService$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/cmstats/ReportingService;->mTask:Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;

    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/cmstats/ReportingService;->mTask:Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    :cond_1
    const/4 v0, 0x3

    return v0
.end method
