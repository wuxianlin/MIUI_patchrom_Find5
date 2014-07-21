.class public Lcom/koushikdutta/superuser/SuApplication;
.super Landroid/app/Application;
.source "SuApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 28
    new-instance v0, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 29
    return-void
.end method
