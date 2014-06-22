.class Lcom/android/server/am/ActiveServices$ServiceRestarter;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceRestarter"
.end annotation


# instance fields
.field private mService:Lcom/android/server/am/ServiceRecord;

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .locals 0
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 931
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 940
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices;->performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 941
    monitor-exit v1

    .line 942
    return-void

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setService(Lcom/android/server/am/ServiceRecord;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    .line 936
    return-void
.end method
