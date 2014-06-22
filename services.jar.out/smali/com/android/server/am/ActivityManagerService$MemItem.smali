.class final Lcom/android/server/am/ActivityManagerService$MemItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemItem"
.end annotation


# instance fields
.field final hasActivities:Z

.field final id:I

.field final isProc:Z

.field final label:Ljava/lang/String;

.field final pss:J

.field final shortLabel:Ljava/lang/String;

.field subitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityManagerService$MemItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1
    .parameter "_label"
    .parameter "_shortLabel"
    .parameter "_pss"
    .parameter "_id"

    .prologue
    const/4 v0, 0x0

    .line 11925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11926
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 11927
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 11928
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 11929
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 11930
    iput p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 11931
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 11932
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIZ)V
    .locals 1
    .parameter "_label"
    .parameter "_shortLabel"
    .parameter "_pss"
    .parameter "_id"
    .parameter "_hasActivities"

    .prologue
    .line 11916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 11918
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 11919
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 11920
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 11921
    iput p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 11922
    iput-boolean p6, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 11923
    return-void
.end method
