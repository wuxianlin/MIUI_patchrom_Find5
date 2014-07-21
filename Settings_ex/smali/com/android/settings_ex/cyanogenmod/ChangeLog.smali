.class public Lcom/android/settings_ex/cyanogenmod/ChangeLog;
.super Landroid/app/Fragment;
.source "ChangeLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, inputReader:Ljava/io/InputStreamReader;
    const/4 v6, 0x0

    .line 43
    .local v6, text:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, data:Ljava/lang/StringBuilder;
    const/16 v9, 0x800

    new-array v8, v9, [C

    .line 47
    .local v8, tmp:[C
    new-instance v3, Ljava/io/FileReader;

    const-string v9, "/system/etc/CHANGELOG-CM.txt"

    invoke-direct {v3, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 48
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .local v3, inputReader:Ljava/io/InputStreamReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3, v8}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .local v4, numRead:I
    if-ltz v4, :cond_1

    .line 49
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 52
    .end local v4           #numRead:I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 53
    .end local v0           #data:Ljava/lang/StringBuilder;
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .end local v8           #tmp:[C
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    :goto_1
    const v9, 0x7f080246

    :try_start_2
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/cyanogenmod/ChangeLog;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 56
    if-eqz v2, :cond_0

    .line 57
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 63
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/ChangeLog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 64
    .local v7, textView:Landroid/widget/TextView;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v5, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/ChangeLog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v5, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 69
    return-object v5

    .line 51
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .end local v5           #scrollView:Landroid/widget/ScrollView;
    .end local v7           #textView:Landroid/widget/TextView;
    .restart local v0       #data:Ljava/lang/StringBuilder;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    .restart local v4       #numRead:I
    .restart local v8       #tmp:[C
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v6

    .line 56
    if-eqz v3, :cond_2

    .line 57
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    move-object v2, v3

    .line 60
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_2

    .line 59
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v9

    move-object v2, v3

    .line 61
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_2

    .line 55
    .end local v0           #data:Ljava/lang/StringBuilder;
    .end local v4           #numRead:I
    .end local v8           #tmp:[C
    :catchall_0
    move-exception v9

    .line 56
    :goto_3
    if-eqz v2, :cond_3

    .line 57
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 60
    :cond_3
    :goto_4
    throw v9

    .line 59
    .restart local v1       #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto :goto_4

    .line 55
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .restart local v0       #data:Ljava/lang/StringBuilder;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    .restart local v8       #tmp:[C
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_3

    .line 52
    .end local v0           #data:Ljava/lang/StringBuilder;
    .end local v8           #tmp:[C
    :catch_4
    move-exception v1

    goto :goto_1
.end method
