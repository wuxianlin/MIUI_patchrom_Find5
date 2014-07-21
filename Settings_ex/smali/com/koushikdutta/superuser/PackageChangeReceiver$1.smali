.class Lcom/koushikdutta/superuser/PackageChangeReceiver$1;
.super Ljava/lang/Thread;
.source "PackageChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/PackageChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/PackageChangeReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/PackageChangeReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/koushikdutta/superuser/PackageChangeReceiver$1;->this$0:Lcom/koushikdutta/superuser/PackageChangeReceiver;

    iput-object p2, p0, Lcom/koushikdutta/superuser/PackageChangeReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 19
    iget-object v11, p0, Lcom/koushikdutta/superuser/PackageChangeReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v11}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getPolicies(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    .line 21
    .local v9, policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/UidPolicy;>;"
    if-nez v9, :cond_1

    .line 52
    :cond_0
    return-void

    .line 24
    :cond_1
    iget-object v11, p0, Lcom/koushikdutta/superuser/PackageChangeReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 25
    .local v8, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/koushikdutta/superuser/db/UidPolicy;

    .line 34
    .local v10, policy:Lcom/koushikdutta/superuser/db/UidPolicy;
    iget-object v11, v10, Lcom/koushikdutta/superuser/db/UidPolicy;->packageName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, found:Z
    :try_start_0
    iget v11, v10, Lcom/koushikdutta/superuser/db/UidPolicy;->uid:I

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, names:[Ljava/lang/String;
    if-nez v7, :cond_3

    .line 40
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "no packages for uid"

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v7           #names:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    iget-object v11, p0, Lcom/koushikdutta/superuser/PackageChangeReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v11, v10}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->delete(Landroid/content/Context;Lcom/koushikdutta/superuser/db/UidPolicy;)Z

    goto :goto_0

    .line 41
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v7       #names:[Ljava/lang/String;
    :cond_3
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    :try_start_1
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v6, v0, v4

    .line 42
    .local v6, name:Ljava/lang/String;
    iget-object v11, v10, Lcom/koushikdutta/superuser/db/UidPolicy;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 43
    const/4 v2, 0x1

    .line 41
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 45
    .end local v6           #name:Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_2

    .line 46
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "no package name match"

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
