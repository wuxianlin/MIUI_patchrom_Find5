.class public Lcom/koushikdutta/superuser/util/SuHelper;
.super Ljava/lang/Object;
.source "SuHelper.java"


# static fields
.field public static CURRENT_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "16"

    sput-object v0, Lcom/koushikdutta/superuser/util/SuHelper;->CURRENT_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSu(Landroid/content/Context;)V
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "su -v"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 10
    .local v0, p:Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/koushikdutta/superuser/util/Settings;->readToEnd(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 11
    .local v2, result:Ljava/lang/String;
    const-string v3, "Superuser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "non zero result"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 14
    :cond_0
    if-nez v2, :cond_1

    .line 15
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "no data"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 17
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "unknown su"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 19
    :cond_2
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, parts:[Ljava/lang/String;
    sget-object v3, Lcom/koushikdutta/superuser/util/SuHelper;->CURRENT_VERSION:Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 21
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "binary is old"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 22
    :cond_3
    return-void
.end method
