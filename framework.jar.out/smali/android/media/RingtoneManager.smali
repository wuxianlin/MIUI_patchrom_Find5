.class public Landroid/media/RingtoneManager;
.super Ljava/lang/Object;
.source "RingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RingtoneManager$1;
    }
.end annotation


# static fields
.field public static final ACTION_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"

.field public static final EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final EXTRA_RINGTONE_DIALOG_THEME:Ljava/lang/String; = "android.intent.extra.ringtone.DIALOG_THEME"

.field public static final EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final EXTRA_RINGTONE_INCLUDE_DRM:Ljava/lang/String; = "android.intent.extra.ringtone.INCLUDE_DRM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final EXTRA_RINGTONE_SHOW_SILENT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_SILENT"

.field public static final EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String; = null

.field private static final MEDIA_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RingtoneManager"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_ALL:I = 0x7

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final URI_COLUMN_INDEX:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousRingtone:Landroid/media/Ringtone;

.field private mStopPreviousRingtone:Z

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 198
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 235
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 245
    iput-object p1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 246
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 235
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 257
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 258
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 259
    return-void
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 541
    .local p0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 557
    :goto_0
    return-object v2

    .line 543
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 547
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 550
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 552
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 555
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 642
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, setting:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-object v2

    .line 644
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, uriString:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .locals 2
    .parameter "defaultRingtoneUri"

    .prologue
    const/4 v0, -0x1

    .line 697
    if-nez p0, :cond_1

    .line 706
    :cond_0
    :goto_0
    return v0

    .line 699
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 700
    const/4 v0, 0x1

    goto :goto_0

    .line 701
    :cond_2
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 702
    const/4 v0, 0x2

    goto :goto_0

    .line 703
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "type"

    .prologue
    .line 720
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 721
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 727
    :goto_0
    return-object v0

    .line 722
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 723
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 724
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 725
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 727
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 495
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 503
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 505
    .local v6, status:Ljava/lang/String;
    const-string/jumbo v0, "mounted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mounted_ro"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :cond_1
    return-object v4
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1
    .parameter "context"
    .parameter "ringtoneUri"

    .prologue
    .line 586
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 7
    .parameter "context"
    .parameter "ringtoneUri"
    .parameter "streamType"

    .prologue
    .line 600
    const-string/jumbo v4, "profile"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfileManager;

    .line 601
    .local v1, pm:Landroid/app/ProfileManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProfileManager;->getActiveProfileGroup(Ljava/lang/String;)Landroid/app/ProfileGroup;

    move-result-object v2

    .line 604
    .local v2, profileGroup:Landroid/app/ProfileGroup;
    :try_start_0
    new-instance v3, Landroid/media/Ringtone;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 605
    .local v3, r:Landroid/media/Ringtone;
    if-ltz p2, :cond_0

    .line 606
    invoke-virtual {v3, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 609
    :cond_0
    if-eqz v2, :cond_1

    .line 610
    sget-object v4, Landroid/media/RingtoneManager$1;->$SwitchMap$android$app$ProfileGroup$Mode:[I

    invoke-virtual {v2}, Landroid/app/ProfileGroup;->getRingerMode()Landroid/app/ProfileGroup$Mode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProfileGroup$Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 620
    :cond_1
    invoke-virtual {v3, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 626
    .end local v3           #r:Landroid/media/Ringtone;
    :goto_0
    return-object v3

    .line 612
    .restart local v3       #r:Landroid/media/Ringtone;
    :pswitch_0
    invoke-virtual {v2}, Landroid/app/ProfileGroup;->getRingerOverride()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 622
    .end local v3           #r:Landroid/media/Ringtone;
    :catch_0
    move-exception v0

    .line 623
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "RingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open ringtone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v3, 0x0

    goto :goto_0

    .line 615
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v3       #r:Landroid/media/Ringtone;
    :pswitch_1
    const/4 v3, 0x0

    .line 616
    goto :goto_0

    .line 610
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 666
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 667
    const-string/jumbo v0, "ringtone"

    .line 673
    :goto_0
    return-object v0

    .line 668
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 669
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 670
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 671
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 673
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 417
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter "context"

    .prologue
    .line 468
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 470
    .local v0, rm:Landroid/media/RingtoneManager;
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 472
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 473
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 476
    :cond_0
    return-object v1
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 480
    if-eqz p1, :cond_1

    .line 481
    const/4 v0, 0x0

    .line 483
    .local v0, uri:Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-static {p1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 486
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 490
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 2
    .parameter "ringtoneUri"

    .prologue
    .line 684
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 565
    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 568
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    .line 659
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, setting:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 663
    :goto_0
    return-void

    .line 661
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 515
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 516
    .local v0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 518
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 519
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 523
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 527
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_2
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 373
    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 380
    :goto_0
    return-object v2

    .line 377
    :cond_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 378
    .local v0, internalCursor:Landroid/database/Cursor;
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 380
    .local v1, mediaCursor:Landroid/database/Cursor;
    new-instance v2, Lcom/android/internal/database/SortCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string/jumbo v4, "title_key"

    invoke-direct {v2, v3, v4}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public getIncludeDrm()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public getRingtone(I)Landroid/media/Ringtone;
    .locals 3
    .parameter "position"

    .prologue
    .line 392
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 396
    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 397
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method public getRingtonePosition(Landroid/net/Uri;)I
    .locals 9
    .parameter "ringtoneUri"

    .prologue
    const/4 v6, -0x1

    .line 429
    if-nez p1, :cond_1

    move v3, v6

    .line 457
    :cond_0
    :goto_0
    return v3

    .line 431
    :cond_1
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 432
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 434
    .local v2, cursorCount:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_2

    move v3, v6

    .line 435
    goto :goto_0

    .line 439
    :cond_2
    const/4 v0, 0x0

    .line 440
    .local v0, currentUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 441
    .local v4, previousUriString:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 442
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 443
    .local v5, uriString:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 444
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 447
    :cond_4
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 452
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->move(I)Z

    .line 454
    move-object v4, v5

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v5           #uriString:Ljava/lang/String;
    :cond_5
    move v3, v6

    .line 457
    goto :goto_0
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "position"

    .prologue
    .line 409
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    :cond_0
    const/4 v0, 0x0

    .line 413
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getStopPreviousRingtone()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return v0
.end method

.method public inferStreamType()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 296
    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 290
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 293
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIncludeDrm(Z)V
    .locals 2
    .parameter "includeDrm"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    if-eqz p1, :cond_0

    .line 353
    const-string v0, "RingtoneManager"

    const-string/jumbo v1, "setIncludeDrm no longer supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    return-void
.end method

.method public setStopPreviousRingtone(Z)V
    .locals 0
    .parameter "stopPreviousRingtone"

    .prologue
    .line 311
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 312
    return-void
.end method

.method public setType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 271
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    iput p1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 277
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    .line 278
    return-void
.end method

.method public stopPreviousRingtone()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 328
    :cond_0
    return-void
.end method
