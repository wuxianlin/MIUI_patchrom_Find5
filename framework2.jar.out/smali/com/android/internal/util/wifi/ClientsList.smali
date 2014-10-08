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
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static get(ZLandroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .parameter "onlyReachables"
    .parameter "context"
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
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, br:Ljava/io/BufferedReader;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;>;"
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/proc/net/arp"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7

    .line 52
    .end local v1           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 53
    const-string v10, " +"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 55
    .local v9, splitted:[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x6

    if-lt v10, v11, :cond_0

    .line 57
    const/4 v10, 0x3

    aget-object v7, v9, v10

    .line 59
    .local v7, mac:Ljava/lang/String;
    const-string v10, "..:..:..:..:..:.."

    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 60
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 61
    .local v0, address:Ljava/net/InetAddress;
    const/16 v10, 0xbb8

    invoke-virtual {v0, v10}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v5

    .line 63
    .local v5, isReachable:Z
    if-eqz p0, :cond_1

    if-eqz v5, :cond_0

    .line 64
    :cond_1
    new-instance v3, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;

    invoke-direct {v3}, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;-><init>()V

    .line 65
    .local v3, client:Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    iput-object v10, v3, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;->ipAddr:Ljava/lang/String;

    .line 66
    const-string v10, "00:00:00:00:00:00"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 67
    const-string v10, "---:---:---:---:---:---"

    iput-object v10, v3, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;->hwAddr:Ljava/lang/String;

    .line 71
    :goto_1
    const/4 v10, 0x5

    aget-object v10, v9, v10

    iput-object v10, v3, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;->device:Ljava/lang/String;

    .line 72
    iput-boolean v5, v3, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;->isReachable:Z

    .line 73
    invoke-static {v7, p1}, Lcom/android/internal/util/wifi/ClientsList;->getVendor(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;->vendor:Ljava/lang/String;

    .line 74
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a

    goto :goto_0

    .line 79
    .end local v0           #address:Ljava/net/InetAddress;
    .end local v3           #client:Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;
    .end local v5           #isReachable:Z
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #mac:Ljava/lang/String;
    .end local v9           #splitted:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 80
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .local v4, e:Ljava/net/UnknownHostException;
    :goto_2
    :try_start_2
    const-string v10, "ClientsList"

    const-string v11, "catch UnknownHostException hit in run"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    if-eqz v1, :cond_2

    .line 90
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 97
    .end local v4           #e:Ljava/net/UnknownHostException;
    :cond_2
    :goto_3
    return-object v8

    .line 69
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #address:Ljava/net/InetAddress;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v3       #client:Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;
    .restart local v5       #isReachable:Z
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #mac:Ljava/lang/String;
    .restart local v9       #splitted:[Ljava/lang/String;
    :cond_3
    :try_start_4
    iput-object v7, v3, Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;->hwAddr:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_a

    goto :goto_1

    .line 81
    .end local v0           #address:Ljava/net/InetAddress;
    .end local v3           #client:Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;
    .end local v5           #isReachable:Z
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #mac:Ljava/lang/String;
    .end local v9           #splitted:[Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v1, v2

    .line 82
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v10, "ClientsList"

    const-string v11, "catch FileNotFoundException hit in run"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    if-eqz v1, :cond_2

    .line 90
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 92
    :catch_2
    move-exception v4

    .line 93
    .local v4, e:Ljava/io/IOException;
    const-string v10, "ClientsList"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 89
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_5

    .line 90
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    move-object v1, v2

    .line 94
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 92
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    .line 93
    .restart local v4       #e:Ljava/io/IOException;
    const-string v10, "ClientsList"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 95
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 92
    .end local v6           #line:Ljava/lang/String;
    .local v4, e:Ljava/net/UnknownHostException;
    :catch_4
    move-exception v4

    .line 93
    .local v4, e:Ljava/io/IOException;
    const-string v10, "ClientsList"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 83
    .end local v4           #e:Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 84
    .restart local v4       #e:Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string v10, "ClientsList"

    const-string v11, "catch IOException hit in run"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 89
    if-eqz v1, :cond_2

    .line 90
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 92
    :catch_6
    move-exception v4

    .line 93
    const-string v10, "ClientsList"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 85
    .end local v4           #e:Ljava/io/IOException;
    :catch_7
    move-exception v4

    .line 86
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_a
    const-string v10, "ClientsList"

    const-string v11, "catch XmlPullParserException hit in run"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 89
    if-eqz v1, :cond_2

    .line 90
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_3

    .line 92
    :catch_8
    move-exception v4

    .line 93
    .local v4, e:Ljava/io/IOException;
    const-string v10, "ClientsList"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 88
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 89
    :goto_7
    if-eqz v1, :cond_6

    .line 90
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 94
    :cond_6
    :goto_8
    throw v10

    .line 92
    :catch_9
    move-exception v4

    .line 93
    .restart local v4       #e:Ljava/io/IOException;
    const-string v11, "ClientsList"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 88
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_7

    .line 85
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catch_a
    move-exception v4

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_6

    .line 83
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catch_b
    move-exception v4

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 81
    :catch_c
    move-exception v4

    goto/16 :goto_4

    .line 79
    :catch_d
    move-exception v4

    goto/16 :goto_2
.end method

.method public static getVendor(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "mac"
    .parameter "context"
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
    .local v2, macS:[Ljava/lang/String;
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

    const v6, 0x10f0013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 110
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 111
    .local v1, eventType:I
    const/4 v0, 0x0

    .line 113
    .local v0, currentProduct:Lcom/android/internal/util/wifi/ClientsList$1Item;
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
    .local v3, name:Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    new-instance v0, Lcom/android/internal/util/wifi/ClientsList$1Item;

    .end local v0           #currentProduct:Lcom/android/internal/util/wifi/ClientsList$1Item;
    invoke-direct {v0}, Lcom/android/internal/util/wifi/ClientsList$1Item;-><init>()V

    .restart local v0       #currentProduct:Lcom/android/internal/util/wifi/ClientsList$1Item;
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
    .end local v3           #name:Ljava/lang/String;
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 130
    .restart local v3       #name:Ljava/lang/String;
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
    .end local v3           #name:Ljava/lang/String;
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
