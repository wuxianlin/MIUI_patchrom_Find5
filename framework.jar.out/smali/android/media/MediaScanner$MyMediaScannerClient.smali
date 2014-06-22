.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 421
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "input"
    .parameter "expected"

    .prologue
    .line 656
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, output:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    const/4 v1, 0x1

    .line 661
    :goto_0
    return v1

    .line 660
    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 1027
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1028
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1029
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 32
    .parameter "entry"
    .parameter "ringtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 821
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 824
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 825
    .local v7, values:Landroid/content/ContentValues;
    const-string/jumbo v4, "title"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 826
    .local v31, title:Ljava/lang/String;
    if-eqz v31, :cond_2

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 827
    :cond_2
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 828
    const-string/jumbo v4, "title"

    move-object/from16 v0, v31

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_3
    const-string v4, "album"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 831
    .local v10, album:Ljava/lang/String;
    const-string v4, "<unknown>"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 832
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 834
    const/16 v4, 0x2f

    invoke-virtual {v10, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 835
    .local v19, lastSlash:I
    if-ltz v19, :cond_5

    .line 836
    const/16 v25, 0x0

    .line 838
    .local v25, previousSlash:I
    :goto_0
    const/16 v4, 0x2f

    add-int/lit8 v5, v25, 0x1

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 839
    .local v17, idx:I
    if-ltz v17, :cond_4

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_12

    .line 844
    :cond_4
    if-eqz v25, :cond_5

    .line 845
    add-int/lit8 v4, v25, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 846
    const-string v4, "album"

    invoke-virtual {v7, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .end local v17           #idx:I
    .end local v19           #lastSlash:I
    .end local v25           #previousSlash:I
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v26, v0

    .line 851
    .local v26, rowId:J
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_13

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_13

    .line 856
    :cond_6
    const-string v4, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 857
    const-string v4, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 858
    const-string v4, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 859
    const-string v4, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 860
    const-string v4, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 913
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v28

    .line 914
    .local v28, tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v18

    .line 915
    .local v18, inserter:Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_8

    .line 916
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v28

    .line 924
    :cond_8
    :goto_2
    const/4 v6, 0x0

    .line 925
    .local v6, result:Landroid/net/Uri;
    const/16 v22, 0x0

    .line 926
    .local v22, needToSetSettings:Z
    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-nez v4, :cond_1f

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_9

    .line 928
    const-string/jumbo v4, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_b

    .line 931
    move-object/from16 v0, p1

    iget v15, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    .line 932
    .local v15, format:I
    if-nez v15, :cond_a

    .line 933
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 935
    :cond_a
    const-string v4, "format"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 940
    .end local v15           #format:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 941
    if-eqz p3, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 942
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 944
    :cond_c
    const/16 v22, 0x1

    .line 964
    :cond_d
    :goto_3
    if-eqz v18, :cond_e

    if-eqz v22, :cond_1d

    .line 965
    :cond_e
    if-eqz v18, :cond_f

    .line 966
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaInserter;->flushAll()V

    .line 968
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-interface {v4, v5, v0, v7}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 975
    :goto_4
    if-eqz v6, :cond_10

    .line 976
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v26

    .line 977
    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 1003
    :cond_10
    :goto_5
    if-eqz v22, :cond_11

    .line 1004
    if-eqz p3, :cond_25

    .line 1005
    const-string/jumbo v4, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v26

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$1802(Landroid/media/MediaScanner;Z)Z

    .line 1023
    :cond_11
    :goto_6
    return-object v6

    .line 842
    .end local v6           #result:Landroid/net/Uri;
    .end local v18           #inserter:Landroid/media/MediaInserter;
    .end local v22           #needToSetSettings:Z
    .end local v26           #rowId:J
    .end local v28           #tableUri:Landroid/net/Uri;
    .restart local v17       #idx:I
    .restart local v19       #lastSlash:I
    .restart local v25       #previousSlash:I
    :cond_12
    move/from16 v25, v17

    .line 843
    goto/16 :goto_0

    .line 861
    .end local v17           #idx:I
    .end local v19           #lastSlash:I
    .end local v25           #previousSlash:I
    .restart local v26       #rowId:J
    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_7

    .line 862
    const/4 v12, 0x0

    .line 864
    .local v12, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v13, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-direct {v13, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12           #exif:Landroid/media/ExifInterface;
    .local v13, exif:Landroid/media/ExifInterface;
    move-object v12, v13

    .line 868
    .end local v13           #exif:Landroid/media/ExifInterface;
    .restart local v12       #exif:Landroid/media/ExifInterface;
    :goto_7
    if-eqz v12, :cond_7

    .line 869
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v20, v0

    .line 870
    .local v20, latlng:[F
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 871
    const-string v4, "latitude"

    const/4 v5, 0x0

    aget v5, v20, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 872
    const-string v4, "longitude"

    const/4 v5, 0x1

    aget v5, v20, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 875
    :cond_14
    invoke-virtual {v12}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v29

    .line 876
    .local v29, time:J
    const-wide/16 v4, -0x1

    cmp-long v4, v29, v4

    if-eqz v4, :cond_16

    .line 877
    const-string v4, "datetaken"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 889
    :cond_15
    :goto_8
    const-string v4, "Orientation"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v23

    .line 891
    .local v23, orientation:I
    const/4 v4, -0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_7

    .line 894
    packed-switch v23, :pswitch_data_0

    .line 905
    :pswitch_0
    const/4 v11, 0x0

    .line 908
    .local v11, degree:I
    :goto_9
    const-string/jumbo v4, "orientation"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 883
    .end local v11           #degree:I
    .end local v23           #orientation:I
    :cond_16
    invoke-virtual {v12}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v29

    .line 884
    const-wide/16 v4, -0x1

    cmp-long v4, v29, v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    sub-long v4, v4, v29

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0x5265c00

    cmp-long v4, v4, v8

    if-ltz v4, :cond_15

    .line 885
    const-string v4, "datetaken"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_8

    .line 896
    .restart local v23       #orientation:I
    :pswitch_1
    const/16 v11, 0x5a

    .line 897
    .restart local v11       #degree:I
    goto :goto_9

    .line 899
    .end local v11           #degree:I
    :pswitch_2
    const/16 v11, 0xb4

    .line 900
    .restart local v11       #degree:I
    goto :goto_9

    .line 902
    .end local v11           #degree:I
    :pswitch_3
    const/16 v11, 0x10e

    .line 903
    .restart local v11       #degree:I
    goto :goto_9

    .line 918
    .end local v11           #degree:I
    .end local v12           #exif:Landroid/media/ExifInterface;
    .end local v20           #latlng:[F
    .end local v23           #orientation:I
    .end local v29           #time:J
    .restart local v18       #inserter:Landroid/media/MediaInserter;
    .restart local v28       #tableUri:Landroid/net/Uri;
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 919
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v28

    goto/16 :goto_2

    .line 920
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 921
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v28

    goto/16 :goto_2

    .line 946
    .restart local v6       #result:Landroid/net/Uri;
    .restart local v22       #needToSetSettings:Z
    :cond_19
    if-eqz p2, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 947
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 949
    :cond_1a
    const/16 v22, 0x1

    goto/16 :goto_3

    .line 951
    :cond_1b
    if-eqz p4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 952
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 954
    :cond_1c
    const/16 v22, 0x1

    goto/16 :goto_3

    .line 969
    :cond_1d
    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v5, 0x3001

    if-ne v4, v5, :cond_1e

    .line 970
    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 972
    :cond_1e
    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 981
    :cond_1f
    move-object/from16 v0, v28

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 984
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 986
    const/16 v21, 0x0

    .line 987
    .local v21, mediaType:I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 988
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v14

    .line 989
    .local v14, fileType:I
    invoke-static {v14}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 990
    const/16 v21, 0x2

    .line 998
    :cond_20
    :goto_a
    const-string/jumbo v4, "media_type"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1000
    .end local v14           #fileType:I
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5

    .line 991
    .restart local v14       #fileType:I
    :cond_22
    invoke-static {v14}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 992
    const/16 v21, 0x3

    goto :goto_a

    .line 993
    :cond_23
    invoke-static {v14}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 994
    const/16 v21, 0x1

    goto :goto_a

    .line 995
    :cond_24
    invoke-static {v14}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 996
    const/16 v21, 0x4

    goto :goto_a

    .line 1007
    .end local v14           #fileType:I
    .end local v21           #mediaType:I
    :cond_25
    if-eqz p2, :cond_27

    .line 1008
    const-string/jumbo v4, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v26

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1009
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1010
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v24

    .line 1011
    .local v24, phoneCount:I
    const/16 v16, 0x1

    .local v16, i:I
    :goto_b
    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_26

    .line 1013
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ringtone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v16, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v26

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1011
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 1016
    .end local v16           #i:I
    .end local v24           #phoneCount:I
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$2002(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_6

    .line 1017
    :cond_27
    if-eqz p4, :cond_11

    .line 1018
    const-string v4, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v26

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$2202(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_6

    .line 865
    .end local v6           #result:Landroid/net/Uri;
    .end local v18           #inserter:Landroid/media/MediaInserter;
    .end local v22           #needToSetSettings:Z
    .end local v28           #tableUri:Landroid/net/Uri;
    .restart local v12       #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v4

    goto/16 :goto_7

    .line 894
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 1046
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v2}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1047
    const/4 v1, 0x0

    .line 1064
    :cond_0
    :goto_0
    return v1

    .line 1050
    :cond_1
    const/4 v1, 0x0

    .line 1052
    .local v1, resultFileType:I
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1053
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v3, Landroid/drm/DrmManagerClient;

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    #setter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->access$2702(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 1056
    :cond_2
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1057
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 1058
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    .local v0, drmMimetype:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1060
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1061
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 590
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 591
    .local v1, length:I
    if-ne p2, v1, :cond_0

    .line 604
    .end local p3
    :goto_0
    return p3

    .line 593
    .restart local p3
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 595
    .local v0, ch:C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    goto :goto_0

    .line 597
    .end local p2
    .restart local v3       #start:I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 598
    .local v2, result:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 599
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 600
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 601
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move p3, v2

    .line 604
    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 737
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 738
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 739
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 740
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 741
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 1035
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1043
    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    .line 665
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 666
    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 667
    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 668
    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 669
    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 670
    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 671
    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 672
    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 673
    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 674
    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 675
    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 676
    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 677
    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 678
    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 679
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 766
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 768
    .local v0, map:Landroid/content/ContentValues;
    const-string v2, "_data"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string/jumbo v2, "title"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v2, "date_modified"

    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 771
    const-string v2, "_size"

    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 772
    const-string/jumbo v2, "mime_type"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v2, "is_drm"

    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 775
    const/4 v1, 0x0

    .line 776
    .local v1, resolution:Ljava/lang/String;
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_0

    .line 777
    const-string/jumbo v2, "width"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const-string v2, "height"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 782
    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_1

    .line 783
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 784
    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    if-eqz v1, :cond_1

    .line 790
    const-string/jumbo v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_1
    :goto_2
    return-object v0

    .line 784
    :cond_2
    const-string v2, "<unknown>"

    goto :goto_0

    .line 786
    :cond_3
    const-string v2, "<unknown>"

    goto :goto_1

    .line 792
    :cond_4
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 794
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 795
    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v3, "album_artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v2, "composer"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v2, "genre"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v2, :cond_5

    .line 804
    const-string/jumbo v2, "year"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 806
    :cond_5
    const-string/jumbo v2, "track"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 807
    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 808
    const-string v2, "compilation"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 795
    :cond_6
    const-string v2, "<unknown>"

    goto :goto_3

    .line 797
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 799
    :cond_8
    const-string v2, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 13
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 446
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 447
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 448
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 449
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 451
    if-nez p7, :cond_3

    .line 452
    if-nez p8, :cond_0

    #calls: Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static {p1}, Landroid/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    const/16 p8, 0x1

    .line 455
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 458
    if-eqz p2, :cond_1

    .line 459
    invoke-static {p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 463
    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 464
    invoke-static {p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v11

    .line 465
    .local v11, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v11, :cond_2

    .line 466
    iget v3, v11, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 467
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 468
    iget-object v3, v11, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 473
    .end local v11           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 474
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 478
    :cond_3
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-virtual {v3, p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    .line 480
    .local v2, entry:Landroid/media/MediaScanner$FileEntry;
    if-eqz v2, :cond_7

    iget-wide v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v9, p3, v3

    .line 481
    .local v9, delta:J
    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v3, v9, v3

    if-gtz v3, :cond_4

    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-gez v3, :cond_8

    :cond_4
    const/4 v12, 0x1

    .line 482
    .local v12, wasModified:Z
    :goto_1
    if-eqz v2, :cond_5

    if-eqz v12, :cond_6

    .line 483
    :cond_5
    if-eqz v12, :cond_9

    .line 484
    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 489
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 492
    :cond_6
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 493
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    const/4 v2, 0x0

    .line 515
    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    :goto_3
    return-object v2

    .line 480
    .end local v9           #delta:J
    .end local v12           #wasModified:Z
    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_7
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 481
    .restart local v9       #delta:J
    :cond_8
    const/4 v12, 0x0

    goto :goto_1

    .line 486
    .restart local v12       #wasModified:Z
    :cond_9
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_a

    const/16 v8, 0x3001

    :goto_4
    move-object v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    goto :goto_2

    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    .line 499
    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_b
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 500
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 501
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 502
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 503
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 504
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 505
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 506
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 507
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 508
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 509
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 510
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 511
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 512
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 513
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto :goto_3
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 20
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "scanAlways"
    .parameter "noMedia"

    .prologue
    .line 528
    const/16 v19, 0x0

    .local v19, result:Landroid/net/Uri;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p9

    .line 531
    :try_start_0
    invoke-virtual/range {v3 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v4

    .line 537
    .local v4, entry:Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 541
    :cond_0
    if-eqz v4, :cond_2

    iget-boolean v3, v4, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v3, :cond_1

    if-eqz p8, :cond_2

    .line 542
    :cond_1
    if-eqz p9, :cond_3

    .line 543
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v19

    .line 586
    .end local v4           #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_2
    :goto_0
    return-object v19

    .line 545
    .restart local v4       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_3
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    .line 546
    .local v18, lowpath:Ljava/lang/String;
    const-string v3, "/ringtones/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a

    const/4 v5, 0x1

    .line 547
    .local v5, ringtones:Z
    :goto_1
    const-string v3, "/notifications/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_b

    const/4 v6, 0x1

    .line 548
    .local v6, notifications:Z
    :goto_2
    const-string v3, "/alarms/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_c

    const/4 v7, 0x1

    .line 549
    .local v7, alarms:Z
    :goto_3
    const-string v3, "/podcasts/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_d

    const/4 v9, 0x1

    .line 550
    .local v9, podcasts:Z
    :goto_4
    const-string v3, "/music/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_4

    if-nez v5, :cond_e

    if-nez v6, :cond_e

    if-nez v7, :cond_e

    if-nez v9, :cond_e

    :cond_4
    const/4 v8, 0x1

    .line 553
    .local v8, music:Z
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v15

    .line 554
    .local v15, isaudio:Z
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v17

    .line 555
    .local v17, isvideo:Z
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v16

    .line 557
    .local v16, isimage:Z
    if-nez v15, :cond_5

    if-nez v17, :cond_5

    if-eqz v16, :cond_6

    .line 558
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mExternalIsEmulated:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v10}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 562
    .local v12, directPath:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    .local v14, f:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 564
    move-object/from16 p1, v12

    .line 570
    .end local v12           #directPath:Ljava/lang/String;
    .end local v14           #f:Ljava/io/File;
    :cond_6
    if-nez v15, :cond_7

    if-eqz v17, :cond_8

    .line 571
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    #calls: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v3, v0, v1, v2}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 574
    :cond_8
    if-eqz v16, :cond_9

    .line 575
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v3, p0

    .line 578
    invoke-direct/range {v3 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    goto/16 :goto_0

    .line 546
    .end local v5           #ringtones:Z
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v8           #music:Z
    .end local v9           #podcasts:Z
    .end local v15           #isaudio:Z
    .end local v16           #isimage:Z
    .end local v17           #isvideo:Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 547
    .restart local v5       #ringtones:Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 548
    .restart local v6       #notifications:Z
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 549
    .restart local v7       #alarms:Z
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 550
    .restart local v9       #podcasts:Z
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 581
    .end local v4           #entry:Landroid/media/MediaScanner$FileEntry;
    .end local v5           #ringtones:Z
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v9           #podcasts:Z
    .end local v18           #lowpath:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 582
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v10, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v3, v10, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "genreTagValue"

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0xff

    const/16 v9, 0x29

    .line 683
    if-nez p1, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-object v7

    .line 686
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 688
    .local v4, length:I
    if-lez v4, :cond_9

    .line 689
    const/4 v6, 0x0

    .line 690
    .local v6, parenthesized:Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 691
    .local v5, number:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 692
    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 693
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 694
    .local v0, c:C
    if-nez v3, :cond_2

    const/16 v8, 0x28

    if-ne v0, v8, :cond_2

    .line 695
    const/4 v6, 0x1

    .line 692
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 696
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 697
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 702
    .end local v0           #c:C
    :cond_3
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 703
    .local v1, charAfterNumber:C
    :goto_3
    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_5

    :cond_4
    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 706
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 707
    .local v2, genreIndex:S
    if-ltz v2, :cond_9

    .line 708
    invoke-static {}, Landroid/media/MediaScanner;->access$1000()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_7

    invoke-static {}, Landroid/media/MediaScanner;->access$1000()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    if-eqz v8, :cond_7

    .line 709
    invoke-static {}, Landroid/media/MediaScanner;->access$1000()[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v2

    goto :goto_0

    .line 702
    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    :cond_6
    const/16 v1, 0x20

    goto :goto_3

    .line 710
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    :cond_7
    if-eq v2, v10, :cond_0

    .line 712
    if-ge v2, v10, :cond_a

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_a

    .line 715
    if-eqz v6, :cond_8

    if-ne v1, v9, :cond_8

    .line 716
    add-int/lit8 v3, v3, 0x1

    .line 718
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 719
    .local v7, ret:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    .end local v3           #i:I
    .end local v5           #number:Ljava/lang/StringBuffer;
    .end local v6           #parenthesized:Z
    .end local v7           #ret:Ljava/lang/String;
    :cond_9
    :goto_4
    move-object v7, p1

    .line 732
    goto :goto_0

    .line 724
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    .restart local v3       #i:I
    .restart local v5       #number:Ljava/lang/StringBuffer;
    .restart local v6       #parenthesized:Z
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 727
    .end local v2           #genreIndex:S
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 608
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 612
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 653
    :cond_1
    :goto_0
    return-void

    .line 613
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 614
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 615
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 617
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 618
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 619
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 620
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 621
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 622
    :cond_a
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 624
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 625
    :cond_c
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 626
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 627
    :cond_e
    const-string/jumbo v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 630
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 631
    .local v0, num:I
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 632
    .end local v0           #num:I
    :cond_10
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 636
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 637
    .restart local v0       #num:I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 638
    .end local v0           #num:I
    :cond_12
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 639
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 640
    :cond_13
    const-string/jumbo v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 641
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 642
    :cond_15
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 643
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 644
    :cond_16
    const-string v3, "isdrm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 645
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_17

    :goto_1
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_1

    .line 646
    :cond_18
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 647
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    .line 648
    :cond_19
    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 10
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 523
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 524
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 748
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 756
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method
