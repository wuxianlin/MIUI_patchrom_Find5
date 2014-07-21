.class public Lcom/koushikdutta/superuser/db/UidPolicy;
.super Lcom/koushikdutta/superuser/db/UidCommand;
.source "UidPolicy.java"


# instance fields
.field public logging:Z

.field public notification:Z

.field public policy:Ljava/lang/String;

.field public until:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 23
    invoke-direct {p0}, Lcom/koushikdutta/superuser/db/UidCommand;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/koushikdutta/superuser/db/UidPolicy;->logging:Z

    .line 31
    iput-boolean v0, p0, Lcom/koushikdutta/superuser/db/UidPolicy;->notification:Z

    return-void
.end method


# virtual methods
.method public getPolicyResource()I
    .locals 2

    .prologue
    .line 37
    const-string v0, "allow"

    iget-object v1, p0, Lcom/koushikdutta/superuser/db/UidPolicy;->policy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const v0, 0x7f080001

    .line 41
    :goto_0
    return v0

    .line 39
    :cond_0
    const-string v0, "interactive"

    iget-object v1, p0, Lcom/koushikdutta/superuser/db/UidPolicy;->policy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const v0, 0x7f08000f

    goto :goto_0

    .line 41
    :cond_1
    const v0, 0x7f080002

    goto :goto_0
.end method

.method public setPolicy(Ljava/lang/String;)V
    .locals 0
    .parameter "policy"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/koushikdutta/superuser/db/UidPolicy;->policy:Ljava/lang/String;

    .line 50
    return-void
.end method
