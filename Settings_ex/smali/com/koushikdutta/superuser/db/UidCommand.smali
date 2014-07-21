.class public Lcom/koushikdutta/superuser/db/UidCommand;
.super Ljava/lang/Object;
.source "UidCommand.java"


# instance fields
.field public command:Ljava/lang/String;

.field public desiredName:Ljava/lang/String;

.field public desiredUid:I

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public uid:I

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->name:Ljava/lang/String;

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->username:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->username:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_2
    iget v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->uid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageInfo(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 48
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p0, Lcom/koushikdutta/superuser/db/UidCommand;->uid:I

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 49
    .local v0, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/superuser/db/UidCommand;->name:Ljava/lang/String;

    .line 50
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/koushikdutta/superuser/db/UidCommand;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0           #pi:Landroid/content/pm/PackageInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getUidCommand(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 57
    const-string v0, "uid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->uid:I

    .line 58
    const-string v0, "command"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->command:Ljava/lang/String;

    .line 59
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->name:Ljava/lang/String;

    .line 60
    const-string v0, "package_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->packageName:Ljava/lang/String;

    .line 61
    const-string v0, "desired_uid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->desiredUid:I

    .line 62
    const-string v0, "desired_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->desiredName:Ljava/lang/String;

    .line 63
    const-string v0, "username"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/superuser/db/UidCommand;->username:Ljava/lang/String;

    .line 64
    return-void
.end method
