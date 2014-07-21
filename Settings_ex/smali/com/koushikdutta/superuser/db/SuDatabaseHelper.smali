.class public Lcom/koushikdutta/superuser/db/SuDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SuDatabaseHelper.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    const-string v0, "su.sqlite"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    iput-object p1, p0, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static delete(Landroid/content/Context;Lcom/koushikdutta/superuser/db/UidPolicy;)Z
    .locals 9
    .parameter "context"
    .parameter "policy"

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 180
    new-instance v4, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;

    invoke-direct {v4, p0}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 181
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 182
    const-string v4, "uid_policy"

    const-string v5, "uid = ? and command = ? and desired_uid = ?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    iget v7, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    aput-object v7, v6, v2

    iget v7, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->desiredUid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    :goto_0
    iget v4, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->uid:I

    iget v5, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->desiredUid:I

    iget-object v6, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v4, v5, v6}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->get(Landroid/content/Context;IILjava/lang/String;)Lcom/koushikdutta/superuser/db/UidPolicy;

    move-result-object v1

    .line 186
    .local v1, policyEval:Lcom/koushikdutta/superuser/db/UidPolicy;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 187
    if-nez v1, :cond_1

    :goto_1
    return v2

    .line 184
    .end local v1           #policyEval:Lcom/koushikdutta/superuser/db/UidPolicy;
    :cond_0
    const-string v4, "uid_policy"

    const-string v5, "uid = ? and desired_uid = ?"

    new-array v6, v8, [Ljava/lang/String;

    iget v7, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget v7, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->desiredUid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .restart local v1       #policyEval:Lcom/koushikdutta/superuser/db/UidPolicy;
    :cond_1
    move v2, v3

    .line 187
    goto :goto_1
.end method

.method public static get(Landroid/content/Context;IILjava/lang/String;)Lcom/koushikdutta/superuser/db/UidPolicy;
    .locals 10
    .parameter "context"
    .parameter "uid"
    .parameter "desiredUid"
    .parameter "command"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 191
    new-instance v1, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 193
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const-string v1, "uid_policy"

    const-string v3, "uid = ? and command = ? and desired_uid = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p3, v4, v7

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 198
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    invoke-static {v8}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getPolicy(Landroid/database/Cursor;)Lcom/koushikdutta/superuser/db/UidPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 203
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 204
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 206
    :goto_1
    return-object v2

    .line 196
    .end local v8           #c:Landroid/database/Cursor;
    :cond_0
    const-string v1, "uid_policy"

    const-string v3, "uid = ? and desired_uid = ?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .restart local v8       #c:Landroid/database/Cursor;
    goto :goto_0

    .line 203
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 204
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 203
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 204
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public static getPolicies(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/superuser/db/UidPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v1, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 172
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getPolicies(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 175
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public static getPolicies(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 12
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/superuser/db/UidPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 149
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v10, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/UidPolicy;>;"
    const-string v0, "uid_policy"

    const-string v1, "until > 0 and until < ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 153
    const-string v1, "uid_policy"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 155
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {v8}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getPolicy(Landroid/database/Cursor;)Lcom/koushikdutta/superuser/db/UidPolicy;

    move-result-object v11

    .line 157
    .local v11, u:Lcom/koushikdutta/superuser/db/UidPolicy;
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v11           #u:Lcom/koushikdutta/superuser/db/UidPolicy;
    :catch_0
    move-exception v9

    .line 161
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 166
    .end local v9           #ex:Ljava/lang/Exception;
    :goto_1
    return-object v10

    .line 164
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static getPolicy(Landroid/database/Cursor;)Lcom/koushikdutta/superuser/db/UidPolicy;
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 138
    new-instance v0, Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-direct {v0}, Lcom/koushikdutta/superuser/db/UidPolicy;-><init>()V

    .line 139
    .local v0, u:Lcom/koushikdutta/superuser/db/UidPolicy;
    invoke-virtual {v0, p0}, Lcom/koushikdutta/superuser/db/UidPolicy;->getUidCommand(Landroid/database/Cursor;)V

    .line 140
    const-string v1, "policy"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->policy:Ljava/lang/String;

    .line 141
    const-string v1, "until"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->until:I

    .line 142
    const-string v1, "logging"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->logging:Z

    .line 143
    const-string v1, "notification"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v2, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->notification:Z

    .line 144
    return-object v0

    :cond_0
    move v1, v3

    .line 142
    goto :goto_0

    :cond_1
    move v2, v3

    .line 143
    goto :goto_1
.end method

.method public static setPolicy(Landroid/content/Context;Lcom/koushikdutta/superuser/db/UidPolicy;)V
    .locals 2
    .parameter "context"
    .parameter "policy"

    .prologue
    .line 108
    invoke-virtual {p1, p0}, Lcom/koushikdutta/superuser/db/UidPolicy;->getPackageInfo(Landroid/content/Context;)V

    .line 109
    new-instance v1, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 111
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->setPolicy(Landroid/database/sqlite/SQLiteDatabase;Lcom/koushikdutta/superuser/db/UidPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 116
    return-void

    .line 114
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public static setPolicy(Landroid/database/sqlite/SQLiteDatabase;Lcom/koushikdutta/superuser/db/UidPolicy;)V
    .locals 3
    .parameter "db"
    .parameter "policy"

    .prologue
    .line 118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "logging"

    iget-boolean v2, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->logging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 120
    const-string v1, "notification"

    iget-boolean v2, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->notification:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 121
    const-string v1, "uid"

    iget v2, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    iget-object v1, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 125
    const-string v1, ""

    iput-object v1, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    .line 126
    :cond_0
    const-string v1, "command"

    iget-object v2, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "policy"

    iget-object v2, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->policy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "until"

    iget v2, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->until:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v1, "name"

    iget-object v2, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "package_name"

    iget-object v2, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "desired_uid"

    iget v2, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->desiredUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v1, "desired_name"

    iget-object v2, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->desiredName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "username"

    iget-object v2, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "uid_policy"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 135
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 39
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 21
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 43
    if-nez p2, :cond_0

    .line 44
    const-string v2, "create table if not exists uid_policy (logging integer, desired_name text, username text, policy text, until integer, command text not null, uid integer, desired_uid integer, package_name text, name text, primary key(uid, command, desired_uid))"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    const/16 p2, 0x4

    .line 49
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 50
    :cond_1
    const-string v2, "create table if not exists settings (key TEXT PRIMARY KEY, value TEXT)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    const/16 p2, 0x3

    .line 56
    :cond_2
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 57
    new-instance v2, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    .line 59
    .local v19, superuser:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getLogs(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v16

    .line 60
    .local v16, logs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/LogEntry;>;"
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 62
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/koushikdutta/superuser/db/LogEntry;

    .line 63
    .local v15, log:Lcom/koushikdutta/superuser/db/LogEntry;
    move-object/from16 v0, v19

    invoke-static {v0, v15}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->addLog(Landroid/database/sqlite/SQLiteDatabase;Lcom/koushikdutta/superuser/db/LogEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #log:Lcom/koushikdutta/superuser/db/LogEntry;
    :catch_0
    move-exception v12

    .line 78
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 82
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 83
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 86
    .end local v12           #e:Ljava/lang/Exception;
    :goto_1
    const-string v2, "drop table if exists log"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const-string v2, "drop table if exists settings"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const/16 p2, 0x4

    .line 91
    .end local v16           #logs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/LogEntry;>;"
    .end local v19           #superuser:Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 92
    const-string v2, "alter table uid_policy add column notification integer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string v2, "update uid_policy set notification = 1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const/16 p2, 0x5

    .line 97
    :cond_4
    const/4 v2, 0x5

    move/from16 v0, p2

    if-ne v0, v2, :cond_8

    .line 99
    invoke-static/range {p1 .. p1}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getPolicies(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v17

    .line 100
    .local v17, policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/UidPolicy;>;"
    const-string v2, "uid_policy"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/koushikdutta/superuser/db/UidPolicy;

    .line 102
    .local v18, policy:Lcom/koushikdutta/superuser/db/UidPolicy;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->setPolicy(Landroid/database/sqlite/SQLiteDatabase;Lcom/koushikdutta/superuser/db/UidPolicy;)V

    goto :goto_2

    .line 66
    .end local v17           #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/UidPolicy;>;"
    .end local v18           #policy:Lcom/koushikdutta/superuser/db/UidPolicy;
    .restart local v16       #logs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/LogEntry;>;"
    .restart local v19       #superuser:Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    :try_start_2
    const-string v3, "settings"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 67
    .local v10, c:Landroid/database/Cursor;
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 68
    const-string v2, "key"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 69
    .local v14, key:Ljava/lang/String;
    const-string v2, "value"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 70
    .local v20, value:Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v11, cv:Landroid/content/ContentValues;
    const-string v2, "key"

    invoke-virtual {v11, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "value"

    move-object/from16 v0, v20

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "settings"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 81
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #key:Ljava/lang/String;
    .end local v20           #value:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 82
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 83
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2

    .line 81
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 82
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 83
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    .line 104
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #logs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/LogEntry;>;"
    .end local v19           #superuser:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17       #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/UidPolicy;>;"
    :cond_7
    const/16 p2, 0x6

    .line 106
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/UidPolicy;>;"
    :cond_8
    return-void
.end method
