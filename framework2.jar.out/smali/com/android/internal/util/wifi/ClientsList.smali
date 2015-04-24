.class public Lcom/android/internal/util/wifi/ClientsList;
.super Ljava/lang/Object;
.source "ClientsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientsList"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method public static get(ZLandroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "onlyReachables"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;>;"
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/proc/net/arp"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 54
    const-string v9, " +"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, "splitted":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x6

    if-lt v9, v10, :cond_0

    .line 58
    const/4 v9, 0x3

    aget-object v6, v8, v9

    .line 60
    .local v6, "mac":Ljava/lang/String;
    const-string v9, "..:..:..:..:..:.."

    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 61
    const/4 v4, 0x0

    .line 62
    .local v4, "isReachable":Z
    if-eqz p0, :cond_1

    .line 63
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-static {v9}, Lcom/android/internal/util/wifi/ClientsList;->isReachableByPing(Ljava/lang/String;)Z

    move-result v4

    .line 65
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p0, :cond_0

    if-eqz v4, :cond_0

    .line 66
    :cond_2
    new-instance v2, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;

    invoke-direct {v2}, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;-><init>()V

    .line 67
    .local v2, "client":Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    iput-object v9, v2, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;->ipAddr:Ljava/lang/String;

    .line 68
    const-string v9, "00:00:00:00:00:00"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 69
    const-string v9, "---:---:---:---:---:---"

    iput-object v9, v2, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;->hwAddr:Ljava/lang/String;

    .line 73
    :goto_1
    const/4 v9, 0x5

    aget-object v9, v8, v9

    iput-object v9, v2, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;->device:Ljava/lang/String;

    .line 74
    iput-boolean v4, v2, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;->isReachable:Z

    .line 75
    invoke-static {v6, p1}, Lcom/android/internal/util/wifi/ClientsList;->getVendor(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;->vendor:Ljava/lang/String;

    .line 76
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 81
    .end local v2    # "client":Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;
    .end local v4    # "isReachable":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "mac":Ljava/lang/String;
    .end local v8    # "splitted":[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 82
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    const-string v9, "ClientsList"

    const-string v10, "catch FileNotFoundException hit in run"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 97
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    return-object v7

    .line 71
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "client":Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;
    .restart local v4    # "isReachable":Z
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "mac":Ljava/lang/String;
    .restart local v8    # "splitted":[Ljava/lang/String;
    :cond_4
    :try_start_4
    iput-object v6, v2, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;->hwAddr:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 83
    .end local v2    # "client":Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;
    .end local v4    # "isReachable":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "mac":Ljava/lang/String;
    .end local v8    # "splitted":[Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v0, v1

    .line 84
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v9, "ClientsList"

    const-string v10, "catch IOException hit in run"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 92
    :catch_2
    move-exception v3

    .line 93
    const-string v9, "ClientsList"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 89
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    .line 90
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    move-object v0, v1

    .line 94
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 92
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    .line 93
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v9, "ClientsList"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 95
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 92
    .end local v5    # "line":Ljava/lang/String;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v3

    .line 93
    .local v3, "e":Ljava/io/IOException;
    const-string v9, "ClientsList"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 85
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 86
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    :try_start_8
    const-string v9, "ClientsList"

    const-string v10, "catch XmlPullParserException hit in run"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 92
    :catch_6
    move-exception v3

    .line 93
    .local v3, "e":Ljava/io/IOException;
    const-string v9, "ClientsList"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 88
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 89
    :goto_6
    if-eqz v0, :cond_7

    .line 90
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 94
    :cond_7
    :goto_7
    throw v9

    .line 92
    :catch_7
    move-exception v3

    .line 93
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v10, "ClientsList"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 88
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 85
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 83
    :catch_9
    move-exception v3

    goto :goto_4

    .line 81
    :catch_a
    move-exception v3

    goto :goto_2
.end method

.method public static getVendor(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "mac"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 106
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "macS":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10f0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 110
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 111
    .local v1, "eventType":I
    const/4 v0, 0x0

    .line 113
    .local v0, "currentProduct":Lcom/android/internal/util/wifi/ClientsList$1Item;
    :goto_0
    if-eq v1, v7, :cond_3

    .line 115
    packed-switch v1, :pswitch_data_0

    .line 134
    :cond_0
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 135
    goto :goto_0

    .line 117
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "name":Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    new-instance v0, Lcom/android/internal/util/wifi/ClientsList$1Item;

    .end local v0    # "currentProduct":Lcom/android/internal/util/wifi/ClientsList$1Item;
    invoke-direct {v0}, Lcom/android/internal/util/wifi/ClientsList$1Item;-><init>()V

    .restart local v0    # "currentProduct":Lcom/android/internal/util/wifi/ClientsList$1Item;
    goto :goto_1

    .line 120
    :cond_1
    if-eqz v0, :cond_0

    .line 121
    const-string v5, "item-mac"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 122
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/util/wifi/ClientsList$1Item;->mac:Ljava/lang/String;

    goto :goto_1

    .line 123
    :cond_2
    const-string v5, "item-vendor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/util/wifi/ClientsList$1Item;->vendor:Ljava/lang/String;

    goto :goto_1

    .line 129
    .end local v3    # "name":Ljava/lang/String;
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 130
    .restart local v3    # "name":Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 131
    iget-object v5, v0, Lcom/android/internal/util/wifi/ClientsList$1Item;->mac:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/internal/util/wifi/ClientsList$1Item;->vendor:Ljava/lang/String;

    .line 136
    .end local v3    # "name":Ljava/lang/String;
    :goto_2
    return-object v5

    :cond_3
    const-string v5, ""

    goto :goto_2

    .line 115
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isReachableByPing(Ljava/lang/String;)Z
    .locals 6
    .param p0, "client"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 141
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 142
    .local v2, "runtime":Ljava/lang/Runtime;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/bin/ping -c 1 -w 3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 143
    .local v1, "mIpAddrProcess":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 144
    .local v0, "mExitValue":I
    if-nez v0, :cond_0

    const/4 v3, 0x1

    .line 150
    .end local v0    # "mExitValue":I
    .end local v1    # "mIpAddrProcess":Ljava/lang/Process;
    .end local v2    # "runtime":Ljava/lang/Runtime;
    :cond_0
    :goto_0
    return v3

    .line 147
    :catch_0
    move-exception v4

    goto :goto_0

    .line 145
    :catch_1
    move-exception v4

    goto :goto_0
.end method
