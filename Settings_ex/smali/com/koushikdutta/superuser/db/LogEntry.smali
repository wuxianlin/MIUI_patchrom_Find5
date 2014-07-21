.class public Lcom/koushikdutta/superuser/db/LogEntry;
.super Lcom/koushikdutta/superuser/db/UidCommand;
.source "LogEntry.java"


# instance fields
.field public action:Ljava/lang/String;

.field public date:I

.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/koushikdutta/superuser/db/UidCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionResource()I
    .locals 2

    .prologue
    .line 33
    const-string v0, "allow"

    iget-object v1, p0, Lcom/koushikdutta/superuser/db/LogEntry;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const v0, 0x7f080001

    .line 37
    :goto_0
    return v0

    .line 35
    :cond_0
    const-string v0, "interactive"

    iget-object v1, p0, Lcom/koushikdutta/superuser/db/LogEntry;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const v0, 0x7f08000f

    goto :goto_0

    .line 37
    :cond_1
    const v0, 0x7f080002

    goto :goto_0
.end method

.method public getDate()Ljava/util/Date;
    .locals 5

    .prologue
    .line 29
    new-instance v0, Ljava/util/Date;

    iget v1, p0, Lcom/koushikdutta/superuser/db/LogEntry;->date:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
