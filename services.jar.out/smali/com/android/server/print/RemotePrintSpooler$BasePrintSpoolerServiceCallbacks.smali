.class abstract Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.super Landroid/print/IPrintSpoolerCallbacks$Stub;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BasePrintSpoolerServiceCallbacks"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintSpooler$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelPrintJobResult(ZI)V
    .locals 0
    .parameter "canceled"
    .parameter "sequence"

    .prologue
    .line 561
    return-void
.end method

.method public onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V
    .locals 0
    .parameter "printJob"
    .parameter "sequence"

    .prologue
    .line 556
    return-void
.end method

.method public onGetPrintJobInfosResult(Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter "sequence"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, printJobIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    return-void
.end method

.method public onSetPrintJobStateResult(ZI)V
    .locals 0
    .parameter "success"
    .parameter "sequece"

    .prologue
    .line 566
    return-void
.end method

.method public onSetPrintJobTagResult(ZI)V
    .locals 0
    .parameter "success"
    .parameter "sequence"

    .prologue
    .line 571
    return-void
.end method
