.class public Landroid/provider/ThemesContract$MixnMatchColumns;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ThemesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MixnMatchColumns"
.end annotation


# static fields
.field public static final COL_KEY:Ljava/lang/String; = "key"

.field public static final COL_VALUE:Ljava/lang/String; = "value"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final KEY_ALARM:Ljava/lang/String; = "mixnmatch_alarm"

.field public static final KEY_BOOT_ANIM:Ljava/lang/String; = "mixnmatch_boot_anim"

.field public static final KEY_FONT:Ljava/lang/String; = "mixnmatch_font"

.field public static final KEY_HOMESCREEN:Ljava/lang/String; = "mixnmatch_homescreen"

.field public static final KEY_ICONS:Ljava/lang/String; = "mixnmatch_icons"

.field public static final KEY_LOCKSCREEN:Ljava/lang/String; = "mixnmatch_lockscreen"

.field public static final KEY_NOTIFICATIONS:Ljava/lang/String; = "mixnmatch_notifications"

.field public static final KEY_OVERLAYS:Ljava/lang/String; = "mixnmatch_overlays"

.field public static final KEY_RINGTONE:Ljava/lang/String; = "mixnmatch_ringtone"

.field public static final KEY_STATUS_BAR:Ljava/lang/String; = "mixnmatch_status_bar"

.field public static final ROWS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 222
    sget-object v0, Landroid/provider/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "mixnmatch"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ThemesContract$MixnMatchColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 251
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "mixnmatch_homescreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "mixnmatch_lockscreen"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "mixnmatch_icons"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "mixnmatch_status_bar"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "mixnmatch_boot_anim"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "mixnmatch_font"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "mixnmatch_notifications"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "mixnmatch_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "mixnmatch_alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "mixnmatch_overlays"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/ThemesContract$MixnMatchColumns;->ROWS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static componentToImageColName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "component"

    .prologue
    .line 270
    const-string/jumbo v0, "mixnmatch_homescreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "homescreen_uri"

    .line 289
    :goto_0
    return-object v0

    .line 272
    :cond_0
    const-string/jumbo v0, "mixnmatch_lockscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const-string v0, "lockscreen_uri"

    goto :goto_0

    .line 274
    :cond_1
    const-string/jumbo v0, "mixnmatch_boot_anim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    const-string v0, "bootanim_uri"

    goto :goto_0

    .line 276
    :cond_2
    const-string/jumbo v0, "mixnmatch_font"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    const-string v0, "font_uri"

    goto :goto_0

    .line 278
    :cond_3
    const-string/jumbo v0, "mixnmatch_icons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    const-string v0, "icon_uri"

    goto :goto_0

    .line 280
    :cond_4
    const-string/jumbo v0, "mixnmatch_status_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    const-string/jumbo v0, "status_uri"

    goto :goto_0

    .line 282
    :cond_5
    const-string/jumbo v0, "mixnmatch_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Notifications mixnmatch component does not have a related column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_6
    const-string/jumbo v0, "mixnmatch_ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ringtone mixnmatch component does not have a related column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_7
    const-string/jumbo v0, "mixnmatch_overlays"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 287
    const-string/jumbo v0, "overlays_uri"

    goto :goto_0

    .line 289
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static componentToMixNMatchKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "component"

    .prologue
    .line 297
    const-string/jumbo v0, "mods_homescreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const-string/jumbo v0, "mixnmatch_homescreen"

    .line 316
    :goto_0
    return-object v0

    .line 299
    :cond_0
    const-string/jumbo v0, "mods_icons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    const-string/jumbo v0, "mixnmatch_icons"

    goto :goto_0

    .line 301
    :cond_1
    const-string/jumbo v0, "mods_lockscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    const-string/jumbo v0, "mixnmatch_lockscreen"

    goto :goto_0

    .line 303
    :cond_2
    const-string/jumbo v0, "mods_fonts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    const-string/jumbo v0, "mixnmatch_font"

    goto :goto_0

    .line 305
    :cond_3
    const-string/jumbo v0, "mods_bootanim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 306
    const-string/jumbo v0, "mixnmatch_boot_anim"

    goto :goto_0

    .line 307
    :cond_4
    const-string/jumbo v0, "mods_alarms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 308
    const-string/jumbo v0, "mixnmatch_alarm"

    goto :goto_0

    .line 309
    :cond_5
    const-string/jumbo v0, "mods_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 310
    const-string/jumbo v0, "mixnmatch_notifications"

    goto :goto_0

    .line 311
    :cond_6
    const-string/jumbo v0, "mods_ringtones"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 312
    const-string/jumbo v0, "mixnmatch_ringtone"

    goto :goto_0

    .line 313
    :cond_7
    const-string/jumbo v0, "mods_overlays"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 314
    const-string/jumbo v0, "mixnmatch_overlays"

    goto :goto_0

    .line 316
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mixNMatchKeyToComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mixnmatchKey"

    .prologue
    .line 324
    const-string/jumbo v0, "mixnmatch_homescreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const-string/jumbo v0, "mods_homescreen"

    .line 343
    :goto_0
    return-object v0

    .line 326
    :cond_0
    const-string/jumbo v0, "mixnmatch_icons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    const-string/jumbo v0, "mods_icons"

    goto :goto_0

    .line 328
    :cond_1
    const-string/jumbo v0, "mixnmatch_lockscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    const-string/jumbo v0, "mods_lockscreen"

    goto :goto_0

    .line 330
    :cond_2
    const-string/jumbo v0, "mixnmatch_font"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    const-string/jumbo v0, "mods_fonts"

    goto :goto_0

    .line 332
    :cond_3
    const-string/jumbo v0, "mixnmatch_boot_anim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 333
    const-string/jumbo v0, "mods_bootanim"

    goto :goto_0

    .line 334
    :cond_4
    const-string/jumbo v0, "mixnmatch_alarm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 335
    const-string/jumbo v0, "mods_alarms"

    goto :goto_0

    .line 336
    :cond_5
    const-string/jumbo v0, "mixnmatch_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 337
    const-string/jumbo v0, "mods_notifications"

    goto :goto_0

    .line 338
    :cond_6
    const-string/jumbo v0, "mixnmatch_ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 339
    const-string/jumbo v0, "mods_ringtones"

    goto :goto_0

    .line 340
    :cond_7
    const-string/jumbo v0, "mixnmatch_overlays"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 341
    const-string/jumbo v0, "mods_overlays"

    goto :goto_0

    .line 343
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method
