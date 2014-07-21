.class public Lcom/google/analytics/tracking/android/StandardExceptionParser;
.super Ljava/lang/Object;
.source "StandardExceptionParser.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/ExceptionParser;


# instance fields
.field private final includedPackages:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, additionalPackages:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->setIncludedPackages(Landroid/content/Context;Ljava/util/Collection;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected getBestStackTraceElement(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;
    .locals 9
    .parameter "t"

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 132
    .local v3, elements:[Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_0

    array-length v8, v3

    if-nez v8, :cond_1

    .line 133
    :cond_0
    const/4 v2, 0x0

    .line 143
    :goto_0
    return-object v2

    .line 135
    :cond_1
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v4           #i$:I
    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v2, v0, v5

    .line 136
    .local v2, e:Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, className:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5           #i$:I
    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 138
    .local v7, packageName:Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 135
    .end local v7           #packageName:Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .local v4, i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_1

    .line 143
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/StackTraceElement;
    :cond_4
    const/4 v8, 0x0

    aget-object v2, v3, v8

    goto :goto_0
.end method

.method protected getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .parameter "t"

    .prologue
    .line 116
    move-object v0, p1

    .line 117
    .local v0, result:Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_0
    return-object v0
.end method

.method public getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .parameter "threadName"
    .parameter "t"

    .prologue
    .line 177
    invoke-virtual {p0, p2}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->getBestStackTraceElement(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->getDescription(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDescription(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "cause"
    .parameter "element"
    .parameter "threadName"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v2, descriptionBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    if-eqz p2, :cond_1

    .line 158
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, classNameParts:[Ljava/lang/String;
    const-string v0, "unknown"

    .line 160
    .local v0, className:Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 161
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v1, v3

    .line 163
    :cond_0
    const-string v3, " (@%s:%s:%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #classNameParts:[Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 170
    const-string v3, " {%s}"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p3, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setIncludedPackages(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 16
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, additionalPackages:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v14}, Ljava/util/TreeSet;->clear()V

    .line 58
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 59
    .local v11, packages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 60
    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 62
    :cond_0
    if-eqz p1, :cond_1

    .line 66
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, appPackage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v14, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v15, 0xf

    invoke-virtual {v14, v2, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 74
    .local v12, pi:Landroid/content/pm/PackageInfo;
    iget-object v1, v12, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 75
    .local v1, ai:[Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_1

    .line 76
    move-object v3, v1

    .local v3, arr$:[Landroid/content/pm/ActivityInfo;
    array-length v7, v3

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v13, v3, v5

    .line 77
    .local v13, sx:Landroid/content/pm/ActivityInfo;
    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v11, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 80
    .end local v1           #ai:[Landroid/content/pm/ActivityInfo;
    .end local v2           #appPackage:Ljava/lang/String;
    .end local v3           #arr$:[Landroid/content/pm/ActivityInfo;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v12           #pi:Landroid/content/pm/PackageInfo;
    .end local v13           #sx:Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v4

    .line 81
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "No package found"

    invoke-static {v14}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)I

    .line 89
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 90
    .local v10, packageName:Ljava/lang/String;
    const/4 v8, 0x1

    .line 91
    .local v8, needToAdd:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v14}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 92
    .local v9, oldName:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 93
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v14, v9}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 101
    .end local v9           #oldName:Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_2

    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v14, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    .restart local v9       #oldName:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 105
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #needToAdd:Z
    .end local v9           #oldName:Ljava/lang/String;
    .end local v10           #packageName:Ljava/lang/String;
    :cond_5
    return-void
.end method
