.class public Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SuperuserDatabaseHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 33
    const-string v0, "superuser.sqlite"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 34
    return-void
.end method

.method public static addLog(Landroid/content/Context;Lcom/koushikdutta/superuser/db/LogEntry;)Lcom/koushikdutta/superuser/db/UidPolicy;
    .locals 12
    .parameter "context"
    .parameter "log"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 145
    iget-object v1, p1, Lcom/koushikdutta/superuser/db/LogEntry;->command:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 146
    const-string v1, ""

    iput-object v1, p1, Lcom/koushikdutta/superuser/db/LogEntry;->command:Ljava/lang/String;

    .line 149
    :cond_0
    const/4 v11, 0x0

    .line 150
    .local v11, u:Lcom/koushikdutta/superuser/db/UidPolicy;
    new-instance v1, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 151
    .local v0, su:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "uid_policy"

    const-string v3, "uid = ? and (command = ? or command = ?) and desired_uid = ?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p1, Lcom/koushikdutta/superuser/db/LogEntry;->uid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/koushikdutta/superuser/db/LogEntry;->command:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p1, Lcom/koushikdutta/superuser/db/LogEntry;->desiredUid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 153
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-static {v9}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getPolicy(Landroid/database/Cursor;)Lcom/koushikdutta/superuser/db/UidPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 158
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 159
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 162
    if-eqz v11, :cond_3

    iget-boolean v1, v11, Lcom/koushikdutta/superuser/db/UidPolicy;->logging:Z

    if-nez v1, :cond_3

    .line 178
    :cond_2
    :goto_0
    return-object v11

    .line 158
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 159
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1

    .line 165
    :cond_3
    invoke-static {p0}, Lcom/koushikdutta/superuser/util/Settings;->getLogging(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    new-instance v1, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 171
    .local v10, superuser:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v1, "log"

    const-string v2, "date < ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x48190800

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v10, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 172
    invoke-static {v10, p1}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->addLog(Landroid/database/sqlite/SQLiteDatabase;Lcom/koushikdutta/superuser/db/LogEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method static addLog(Landroid/database/sqlite/SQLiteDatabase;Lcom/koushikdutta/superuser/db/LogEntry;)V
    .locals 3
    .parameter "db"
    .parameter "log"

    .prologue
    .line 125
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "uid"

    iget v2, p1, Lcom/koushikdutta/superuser/db/LogEntry;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    iget-object v1, p1, Lcom/koushikdutta/superuser/db/LogEntry;->command:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 130
    const-string v1, ""

    iput-object v1, p1, Lcom/koushikdutta/superuser/db/LogEntry;->command:Ljava/lang/String;

    .line 131
    :cond_0
    const-string v1, "command"

    iget-object v2, p1, Lcom/koushikdutta/superuser/db/LogEntry;->command:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "action"

    iget-object v2, p1, Lcom/koushikdutta/superuser/db/LogEntry;->action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "date"

    iget v2, p1, Lcom/koushikdutta/superuser/db/LogEntry;->date:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v1, "name"

    iget-object v2, p1, Lcom/koushikdutta/superuser/db/LogEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "desired_uid"

    iget v2, p1, Lcom/koushikdutta/superuser/db/LogEntry;->desiredUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v1, "package_name"

    iget-object v2, p1, Lcom/koushikdutta/superuser/db/LogEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "desired_name"

    iget-object v2, p1, Lcom/koushikdutta/superuser/db/LogEntry;->desiredName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "username"

    iget-object v2, p1, Lcom/koushikdutta/superuser/db/LogEntry;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "log"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 140
    return-void
.end method

.method public static deleteLogs(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 119
    new-instance v1, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "log"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 122
    return-void
.end method

.method public static getLogs(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/superuser/db/LogEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 91
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p0, v0}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getLogs(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public static getLogs(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/superuser/db/LogEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 98
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v10, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/LogEntry;>;"
    const-string v1, "log"

    const-string v7, "date DESC"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 101
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v9, Lcom/koushikdutta/superuser/db/LogEntry;

    invoke-direct {v9}, Lcom/koushikdutta/superuser/db/LogEntry;-><init>()V

    .line 103
    .local v9, l:Lcom/koushikdutta/superuser/db/LogEntry;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v9, v8}, Lcom/koushikdutta/superuser/db/LogEntry;->getUidCommand(Landroid/database/Cursor;)V

    .line 105
    const-string v0, "id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/koushikdutta/superuser/db/LogEntry;->id:J

    .line 106
    const-string v0, "date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/koushikdutta/superuser/db/LogEntry;->date:I

    .line 107
    const-string v0, "action"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/koushikdutta/superuser/db/LogEntry;->action:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v9           #l:Lcom/koushikdutta/superuser/db/LogEntry;
    :catch_0
    move-exception v0

    .line 113
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 115
    :goto_1
    return-object v10

    .line 113
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getLogs(Landroid/content/Context;Lcom/koushikdutta/superuser/db/UidPolicy;I)Ljava/util/ArrayList;
    .locals 2
    .parameter "context"
    .parameter "policy"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/koushikdutta/superuser/db/UidPolicy;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/superuser/db/LogEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 57
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getLogs(Landroid/database/sqlite/SQLiteDatabase;Lcom/koushikdutta/superuser/db/UidPolicy;I)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public static getLogs(Landroid/database/sqlite/SQLiteDatabase;Lcom/koushikdutta/superuser/db/UidPolicy;I)Ljava/util/ArrayList;
    .locals 12
    .parameter "db"
    .parameter "policy"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/koushikdutta/superuser/db/UidPolicy;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/superuser/db/LogEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 64
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v11, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/LogEntry;>;"
    iget-object v0, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    const-string v1, "log"

    const-string v3, "uid = ? and desired_uid = ? and command = ?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    iget v0, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->uid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget v0, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->desiredUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    iget-object v0, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    aput-object v0, v4, v8

    const-string v7, "date DESC"

    if-ne p2, v5, :cond_0

    move-object v8, v2

    :goto_0
    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 71
    .local v9, c:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    new-instance v10, Lcom/koushikdutta/superuser/db/LogEntry;

    invoke-direct {v10}, Lcom/koushikdutta/superuser/db/LogEntry;-><init>()V

    .line 73
    .local v10, l:Lcom/koushikdutta/superuser/db/LogEntry;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v10, v9}, Lcom/koushikdutta/superuser/db/LogEntry;->getUidCommand(Landroid/database/Cursor;)V

    .line 75
    const-string v0, "id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/koushikdutta/superuser/db/LogEntry;->id:J

    .line 76
    const-string v0, "date"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/koushikdutta/superuser/db/LogEntry;->date:I

    .line 77
    const-string v0, "action"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/koushikdutta/superuser/db/LogEntry;->action:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 80
    .end local v10           #l:Lcom/koushikdutta/superuser/db/LogEntry;
    :catch_0
    move-exception v0

    .line 83
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 85
    :goto_2
    return-object v11

    .line 67
    .end local v9           #c:Landroid/database/Cursor;
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 69
    :cond_1
    const-string v1, "log"

    const-string v3, "uid = ? and desired_uid = ?"

    new-array v4, v8, [Ljava/lang/String;

    iget v0, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->uid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget v0, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->desiredUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const-string v7, "date DESC"

    if-ne p2, v5, :cond_2

    move-object v8, v2

    :goto_3
    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .restart local v9       #c:Landroid/database/Cursor;
    goto :goto_1

    .end local v9           #c:Landroid/database/Cursor;
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 83
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 39
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 43
    if-nez p2, :cond_0

    .line 44
    const-string v0, "create table if not exists log (id integer primary key autoincrement, desired_name text, username text, uid integer, desired_uid integer, command text not null, date integer, action text, package_name text, name text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    const-string v0, "create index if not exists log_uid_index on log(uid)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    const-string v0, "create index if not exists log_desired_uid_index on log(desired_uid)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const-string v0, "create index if not exists log_command_index on log(command)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string v0, "create index if not exists log_date_index on log(date)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string v0, "create table if not exists settings (key text primary key not null, value text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    const/4 p2, 0x1

    .line 52
    :cond_0
    return-void
.end method
