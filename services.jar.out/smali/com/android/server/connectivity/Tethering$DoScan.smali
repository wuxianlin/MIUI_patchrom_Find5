.class Lcom/android/server/connectivity/Tethering$DoScan;
.super Landroid/os/AsyncTask;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoScan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentClientCount:I

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$DoScan;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$DoScan;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering$DoScan;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 601
    iget v0, p0, Lcom/android/server/connectivity/Tethering$DoScan;->mCurrentClientCount:I

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 601
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$DoScan;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 607
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$DoScan;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/wifi/ClientsList;->get(ZLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 609
    .local v0, currentClientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/Tethering$DoScan;->mCurrentClientCount:I

    .line 610
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 601
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$DoScan;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 615
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$DoScan;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/connectivity/Tethering$DoScan$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Tethering$DoScan$1;-><init>(Lcom/android/server/connectivity/Tethering$DoScan;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    return-void
.end method
