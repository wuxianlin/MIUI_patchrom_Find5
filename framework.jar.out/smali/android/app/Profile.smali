.class public final Landroid/app/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Profile$ProfileTrigger;,
        Landroid/app/Profile$TriggerState;,
        Landroid/app/Profile$TriggerType;,
        Landroid/app/Profile$ExpandedDesktopMode;,
        Landroid/app/Profile$LockMode;
    }
.end annotation


# static fields
.field private static final CONDITIONAL_TYPE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Profile"

.field private static final TOGGLE_TYPE:I


# instance fields
.field private connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mAirplaneMode:Landroid/app/AirplaneModeSettings;

.field private mDefaultGroup:Landroid/app/ProfileGroup;

.field private mDirty:Z

.field private mExpandedDesktopMode:I

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mProfileType:I

.field private mRingMode:Landroid/app/RingModeSettings;

.field private mScreenLockMode:I

.field private mSecondaryUuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarIndicator:Z

.field private mTriggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private mUuid:Ljava/util/UUID;

.field private profileGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/StreamSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Landroid/app/Profile$1;

    invoke-direct {v0}, Landroid/app/Profile$1;-><init>()V

    sput-object v0, Landroid/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    .line 58
    iput-boolean v1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    .line 76
    new-instance v0, Landroid/app/RingModeSettings;

    invoke-direct {v0}, Landroid/app/RingModeSettings;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    .line 78
    new-instance v0, Landroid/app/AirplaneModeSettings;

    invoke-direct {v0}, Landroid/app/AirplaneModeSettings;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    .line 80
    iput v1, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 82
    iput v1, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    .line 242
    invoke-virtual {p0, p1}, Landroid/app/Profile;->readFromParcel(Landroid/os/Parcel;)V

    .line 243
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/Profile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/app/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 230
    const/4 v0, -0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .line 231
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/UUID;)V
    .locals 2
    .parameter "name"
    .parameter "nameResId"
    .parameter "uuid"

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    .line 58
    iput-boolean v1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    .line 76
    new-instance v0, Landroid/app/RingModeSettings;

    invoke-direct {v0}, Landroid/app/RingModeSettings;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    .line 78
    new-instance v0, Landroid/app/AirplaneModeSettings;

    invoke-direct {v0}, Landroid/app/AirplaneModeSettings;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    .line 80
    iput v1, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 82
    iput v1, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    .line 234
    iput-object p1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    .line 235
    iput p2, p0, Landroid/app/Profile;->mNameResId:I

    .line 236
    iput-object p3, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    .line 237
    iput v1, p0, Landroid/app/Profile;->mProfileType:I

    .line 238
    iput-boolean v1, p0, Landroid/app/Profile;->mDirty:Z

    .line 239
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/Profile;
    .locals 18
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    const/4 v15, 0x0

    const-string/jumbo v16, "nameres"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 645
    .local v14, value:Ljava/lang/String;
    const/4 v10, -0x1

    .line 646
    .local v10, profileNameResId:I
    const/4 v9, 0x0

    .line 648
    .local v9, profileName:Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 649
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string/jumbo v16, "string"

    const-string v17, "android"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v14, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 650
    if-lez v10, :cond_0

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 655
    :cond_0
    if-nez v9, :cond_1

    .line 656
    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 659
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    .line 661
    .local v11, profileUuid:Ljava/util/UUID;
    const/4 v15, 0x0

    :try_start_0
    const-string/jumbo v16, "uuid"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 678
    :goto_0
    new-instance v8, Landroid/app/Profile;

    invoke-direct {v8, v9, v10, v11}, Landroid/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .line 679
    .local v8, profile:Landroid/app/Profile;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 680
    .local v5, event:I
    :goto_1
    const/4 v15, 0x3

    if-eq v5, v15, :cond_e

    .line 681
    const/4 v15, 0x2

    if-ne v5, v15, :cond_c

    .line 682
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 683
    .local v6, name:Ljava/lang/String;
    const-string/jumbo v15, "uuids"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 684
    invoke-static/range {p0 .. p1}, Landroid/app/Profile;->readSecondaryUuidsFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/app/Profile;->setSecondaryUuids(Ljava/util/List;)V

    .line 686
    :cond_2
    const-string/jumbo v15, "statusbar"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 687
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "yes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v8, v15}, Landroid/app/Profile;->setStatusBarIndicator(Z)V

    .line 689
    :cond_3
    const-string/jumbo v15, "profiletype"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 690
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "toggle"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v8, v15}, Landroid/app/Profile;->setProfileType(I)V

    .line 692
    :cond_4
    const-string/jumbo v15, "ringModeDescriptor"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 693
    invoke-static/range {p0 .. p1}, Landroid/app/RingModeSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/RingModeSettings;

    move-result-object v13

    .line 694
    .local v13, smd:Landroid/app/RingModeSettings;
    invoke-virtual {v8, v13}, Landroid/app/Profile;->setRingMode(Landroid/app/RingModeSettings;)V

    .line 696
    .end local v13           #smd:Landroid/app/RingModeSettings;
    :cond_5
    const-string v15, "airplaneModeDescriptor"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 697
    invoke-static/range {p0 .. p1}, Landroid/app/AirplaneModeSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/AirplaneModeSettings;

    move-result-object v2

    .line 698
    .local v2, amd:Landroid/app/AirplaneModeSettings;
    invoke-virtual {v8, v2}, Landroid/app/Profile;->setAirplaneMode(Landroid/app/AirplaneModeSettings;)V

    .line 700
    .end local v2           #amd:Landroid/app/AirplaneModeSettings;
    :cond_6
    const-string/jumbo v15, "screen-lock-mode"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 701
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v8, v15}, Landroid/app/Profile;->setScreenLockMode(I)V

    .line 703
    :cond_7
    const-string v15, "expanded-desktop-mode"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 704
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v8, v15}, Landroid/app/Profile;->setExpandedDesktopMode(I)V

    .line 706
    :cond_8
    const-string/jumbo v15, "profileGroup"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 707
    invoke-static/range {p0 .. p1}, Landroid/app/ProfileGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ProfileGroup;

    move-result-object v7

    .line 708
    .local v7, pg:Landroid/app/ProfileGroup;
    invoke-virtual {v8, v7}, Landroid/app/Profile;->addProfileGroup(Landroid/app/ProfileGroup;)V

    .line 710
    .end local v7           #pg:Landroid/app/ProfileGroup;
    :cond_9
    const-string/jumbo v15, "streamDescriptor"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 711
    invoke-static/range {p0 .. p1}, Landroid/app/StreamSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/StreamSettings;

    move-result-object v12

    .line 712
    .local v12, sd:Landroid/app/StreamSettings;
    invoke-virtual {v8, v12}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 714
    .end local v12           #sd:Landroid/app/StreamSettings;
    :cond_a
    const-string v15, "connectionDescriptor"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 715
    invoke-static/range {p0 .. p1}, Landroid/app/ConnectionSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ConnectionSettings;

    move-result-object v3

    .line 716
    .local v3, cs:Landroid/app/ConnectionSettings;
    iget-object v15, v8, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    .end local v3           #cs:Landroid/app/ConnectionSettings;
    :cond_b
    const-string/jumbo v15, "triggers"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 719
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Landroid/app/Profile;->readTriggersFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/app/Profile;)V

    .line 722
    .end local v6           #name:Ljava/lang/String;
    :cond_c
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto/16 :goto_1

    .line 662
    .end local v5           #event:I
    .end local v8           #profile:Landroid/app/Profile;
    :catch_0
    move-exception v4

    .line 663
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v15, "Profile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Null Pointer - UUID not found for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".  New UUID generated: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 669
    .end local v4           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    .line 670
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v15, "Profile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "UUID not recognized for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".  New UUID generated: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 690
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .restart local v5       #event:I
    .restart local v6       #name:Ljava/lang/String;
    .restart local v8       #profile:Landroid/app/Profile;
    :cond_d
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 726
    .end local v6           #name:Ljava/lang/String;
    :cond_e
    const/4 v15, 0x0

    iput-boolean v15, v8, Landroid/app/Profile;->mDirty:Z

    .line 728
    return-object v8
.end method

.method private static readSecondaryUuidsFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v3, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/UUID;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 602
    .local v1, event:I
    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uuids"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 603
    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 604
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v4, "uuid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 607
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 615
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 608
    .restart local v2       #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 609
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "Profile"

    const-string v5, "Null Pointer - invalid UUID"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 610
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 611
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "Profile"

    const-string v5, "UUID not recognized"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 617
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #name:Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private static readTriggersFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/app/Profile;)V
    .locals 4
    .parameter "xpp"
    .parameter "context"
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 623
    .local v0, event:I
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "triggers"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 624
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 625
    invoke-static {p0, p1}, Landroid/app/Profile$ProfileTrigger;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/Profile$ProfileTrigger;

    move-result-object v1

    .line 626
    .local v1, trigger:Landroid/app/Profile$ProfileTrigger;
    if-eqz v1, :cond_1

    .line 627
    iget-object v2, p2, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    #getter for: Landroid/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;
    invoke-static {v1}, Landroid/app/Profile$ProfileTrigger;->access$300(Landroid/app/Profile$ProfileTrigger;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .end local v1           #trigger:Landroid/app/Profile$ProfileTrigger;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 632
    :cond_2
    return-void
.end method


# virtual methods
.method public addProfileGroup(Landroid/app/ProfileGroup;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 303
    :cond_0
    iput-object p1, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    .line 305
    :cond_1
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    goto :goto_0
.end method

.method public addSecondaryUuid(Ljava/util/UUID;)V
    .locals 1
    .parameter "uuid"

    .prologue
    .line 436
    if-eqz p1, :cond_0

    .line 437
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 440
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .parameter "obj"

    .prologue
    .line 287
    move-object v0, p1

    check-cast v0, Landroid/app/Profile;

    .line 288
    .local v0, tmp:Landroid/app/Profile;
    iget-object v1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 289
    const/4 v1, -0x1

    .line 293
    :goto_0
    return v1

    .line 290
    :cond_0
    iget-object v1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 291
    const/4 v1, 0x1

    goto :goto_0

    .line 293
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public doSelect(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 734
    const-string v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 735
    .local v0, am:Landroid/media/AudioManager;
    iget-object v6, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .line 736
    .local v3, sd:Landroid/app/StreamSettings;
    invoke-virtual {v3}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 737
    invoke-virtual {v3}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v6

    invoke-virtual {v3}, Landroid/app/StreamSettings;->getValue()I

    move-result v7

    invoke-virtual {v0, v6, v7, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 741
    .end local v3           #sd:Landroid/app/StreamSettings;
    :cond_1
    iget-object v6, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ConnectionSettings;

    .line 742
    .local v1, cs:Landroid/app/ConnectionSettings;
    invoke-virtual {v1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 743
    invoke-virtual {v1, p1}, Landroid/app/ConnectionSettings;->processOverride(Landroid/content/Context;)V

    goto :goto_1

    .line 747
    .end local v1           #cs:Landroid/app/ConnectionSettings;
    :cond_3
    iget-object v6, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    invoke-virtual {v6, p1}, Landroid/app/RingModeSettings;->processOverride(Landroid/content/Context;)V

    .line 749
    iget-object v6, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v6, p1}, Landroid/app/AirplaneModeSettings;->processOverride(Landroid/content/Context;)V

    .line 752
    iget v6, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    if-eqz v6, :cond_4

    .line 753
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "expanded_desktop_state"

    iget v8, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    if-ne v8, v4, :cond_5

    :goto_2
    const/4 v5, -0x2

    invoke-static {v6, v7, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 758
    :cond_4
    return-void

    :cond_5
    move v4, v5

    .line 753
    goto :goto_2
.end method

.method public getAirplaneMode()Landroid/app/AirplaneModeSettings;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    return-object v0
.end method

.method public getConnectionSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/ConnectionSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultGroup()Landroid/app/ProfileGroup;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getExpandedDesktopMode()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;
    .locals 1
    .parameter "uuid"

    .prologue
    .line 323
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileGroups()[Landroid/app/ProfileGroup;
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/ProfileGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileType()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Landroid/app/Profile;->mProfileType:I

    return v0
.end method

.method public getRingMode()Landroid/app/RingModeSettings;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    return-object v0
.end method

.method public getScreenLockMode()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Landroid/app/Profile;->mScreenLockMode:I

    return v0
.end method

.method public getSecondaryUuids()[Ljava/util/UUID;
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/UUID;

    return-object v0
.end method

.method public getSettingsForConnection(I)Landroid/app/ConnectionSettings;
    .locals 2
    .parameter "connectionId"

    .prologue
    .line 778
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    return-object v0
.end method

.method public getSettingsForStream(I)Landroid/app/StreamSettings;
    .locals 2
    .parameter "streamId"

    .prologue
    .line 762
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StreamSettings;

    return-object v0
.end method

.method public getStatusBarIndicator()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    return v0
.end method

.method public getStreamSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/StreamSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTrigger(ILjava/lang/String;)I
    .locals 2
    .parameter "type"
    .parameter "id"

    .prologue
    .line 246
    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Profile$ProfileTrigger;

    move-object v0, v1

    .line 247
    .local v0, trigger:Landroid/app/Profile$ProfileTrigger;
    :goto_0
    if-eqz v0, :cond_1

    .line 248
    #getter for: Landroid/app/Profile$ProfileTrigger;->mState:I
    invoke-static {v0}, Landroid/app/Profile$ProfileTrigger;->access$200(Landroid/app/Profile$ProfileTrigger;)I

    move-result v1

    .line 250
    :goto_1
    return v1

    .line 246
    .end local v0           #trigger:Landroid/app/Profile$ProfileTrigger;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    .restart local v0       #trigger:Landroid/app/Profile$ProfileTrigger;
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public getTriggersFromType(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Profile$ProfileTrigger;>;"
    iget-object v4, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    .local v1, profileTrigger:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/Profile$ProfileTrigger;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Profile$ProfileTrigger;

    .line 257
    .local v3, trigger:Landroid/app/Profile$ProfileTrigger;
    invoke-virtual {v3}, Landroid/app/Profile$ProfileTrigger;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 258
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    .end local v1           #profileTrigger:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/Profile$ProfileTrigger;>;"
    .end local v3           #trigger:Landroid/app/Profile$ProfileTrigger;
    :cond_1
    return-object v2
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    .line 420
    :cond_0
    iget-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 8
    .parameter "builder"
    .parameter "context"

    .prologue
    .line 536
    const-string v6, "<profile "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    iget v6, p0, Landroid/app/Profile;->mNameResId:I

    if-lez v6, :cond_0

    .line 538
    const-string/jumbo v6, "nameres=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Landroid/app/Profile;->mNameResId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :goto_0
    const-string v6, "\" uuid=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {p0}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string v6, "\">\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v6, "<uuids>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-object v6, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    .line 550
    .local v5, u:Ljava/util/UUID;
    const-string v6, "<uuid>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v6, "</uuid>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 541
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #u:Ljava/util/UUID;
    :cond_0
    const-string/jumbo v6, "name=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {p0}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 554
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    const-string v6, "</uuids>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v6, "<profiletype>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {p0}, Landroid/app/Profile;->getProfileType()I

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "toggle"

    :goto_2
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v6, "</profiletype>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v6, "<statusbar>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {p0}, Landroid/app/Profile;->getStatusBarIndicator()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "yes"

    :goto_3
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v6, "</statusbar>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v6, "<screen-lock-mode>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget v6, p0, Landroid/app/Profile;->mScreenLockMode:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 566
    const-string v6, "</screen-lock-mode>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string v6, "<expanded-desktop-mode>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    iget v6, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    const-string v6, "</expanded-desktop-mode>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    iget-object v6, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v6, p1, p2}, Landroid/app/AirplaneModeSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    .line 574
    iget-object v6, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    invoke-virtual {v6, p1, p2}, Landroid/app/RingModeSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    .line 576
    iget-object v6, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfileGroup;

    .line 577
    .local v2, pGroup:Landroid/app/ProfileGroup;
    invoke-virtual {v2, p1, p2}, Landroid/app/ProfileGroup;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_4

    .line 557
    .end local v2           #pGroup:Landroid/app/ProfileGroup;
    :cond_2
    const-string v6, "conditional"

    goto :goto_2

    .line 561
    :cond_3
    const-string/jumbo v6, "no"

    goto :goto_3

    .line 579
    :cond_4
    iget-object v6, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .line 580
    .local v3, sd:Landroid/app/StreamSettings;
    invoke-virtual {v3, p1, p2}, Landroid/app/StreamSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_5

    .line 582
    .end local v3           #sd:Landroid/app/StreamSettings;
    :cond_5
    iget-object v6, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    .line 583
    .local v0, cs:Landroid/app/ConnectionSettings;
    invoke-virtual {v0, p1, p2}, Landroid/app/ConnectionSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_6

    .line 585
    .end local v0           #cs:Landroid/app/ConnectionSettings;
    :cond_6
    iget-object v6, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 586
    const-string v6, "<triggers>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v6, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Profile$ProfileTrigger;

    .line 588
    .local v4, trigger:Landroid/app/Profile$ProfileTrigger;
    invoke-virtual {v4, p1, p2}, Landroid/app/Profile$ProfileTrigger;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_7

    .line 590
    .end local v4           #trigger:Landroid/app/Profile$ProfileTrigger;
    :cond_7
    const-string v6, "</triggers>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_8
    const-string v6, "</profile>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/app/Profile;->mDirty:Z

    .line 595
    return-void
.end method

.method public isConditionalType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 452
    iget v1, p0, Landroid/app/Profile;->mProfileType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 507
    iget-boolean v5, p0, Landroid/app/Profile;->mDirty:Z

    if-eqz v5, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v4

    .line 510
    :cond_1
    iget-object v5, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfileGroup;

    .line 511
    .local v1, group:Landroid/app/ProfileGroup;
    invoke-virtual {v1}, Landroid/app/ProfileGroup;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 515
    .end local v1           #group:Landroid/app/ProfileGroup;
    :cond_3
    iget-object v5, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .line 516
    .local v3, stream:Landroid/app/StreamSettings;
    invoke-virtual {v3}, Landroid/app/StreamSettings;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 520
    .end local v3           #stream:Landroid/app/StreamSettings;
    :cond_5
    iget-object v5, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    .line 521
    .local v0, conn:Landroid/app/ConnectionSettings;
    invoke-virtual {v0}, Landroid/app/ConnectionSettings;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    .line 525
    .end local v0           #conn:Landroid/app/ConnectionSettings;
    :cond_7
    iget-object v5, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    invoke-virtual {v5}, Landroid/app/RingModeSettings;->isDirty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 528
    iget-object v5, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v5}, Landroid/app/AirplaneModeSettings;->isDirty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 531
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 14
    .parameter "in"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x0

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Landroid/app/Profile;->mNameResId:I

    .line 367
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    invoke-virtual {v9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    iput-object v9, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    .line 368
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .local v6, parcel:Landroid/os/Parcelable;
    move-object v8, v6

    .line 369
    check-cast v8, Landroid/os/ParcelUuid;

    .line 370
    .local v8, u:Landroid/os/ParcelUuid;
    iget-object v9, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 372
    .end local v6           #parcel:Landroid/os/Parcelable;
    .end local v8           #u:Landroid/os/ParcelUuid;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v10, :cond_2

    move v9, v10

    :goto_1
    iput-boolean v9, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Landroid/app/Profile;->mProfileType:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v10, :cond_3

    :goto_2
    iput-boolean v10, p0, Landroid/app/Profile;->mDirty:Z

    .line 375
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .local v2, group:Landroid/os/Parcelable;
    move-object v3, v2

    .line 376
    check-cast v3, Landroid/app/ProfileGroup;

    .line 377
    .local v3, grp:Landroid/app/ProfileGroup;
    iget-object v9, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {v3}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 379
    iput-object v3, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    .line 375
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v2           #group:Landroid/os/Parcelable;
    .end local v3           #grp:Landroid/app/ProfileGroup;
    :cond_2
    move v9, v11

    .line 372
    goto :goto_1

    :cond_3
    move v10, v11

    .line 374
    goto :goto_2

    .line 382
    :cond_4
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_5

    aget-object v6, v0, v4

    .restart local v6       #parcel:Landroid/os/Parcelable;
    move-object v7, v6

    .line 383
    check-cast v7, Landroid/app/StreamSettings;

    .line 384
    .local v7, stream:Landroid/app/StreamSettings;
    iget-object v9, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 386
    .end local v6           #parcel:Landroid/os/Parcelable;
    .end local v7           #stream:Landroid/app/StreamSettings;
    :cond_5
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_6

    aget-object v6, v0, v4

    .restart local v6       #parcel:Landroid/os/Parcelable;
    move-object v1, v6

    .line 387
    check-cast v1, Landroid/app/ConnectionSettings;

    .line 388
    .local v1, connection:Landroid/app/ConnectionSettings;
    iget-object v9, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 390
    .end local v1           #connection:Landroid/app/ConnectionSettings;
    .end local v6           #parcel:Landroid/os/Parcelable;
    :cond_6
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/RingModeSettings;

    iput-object v9, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    .line 391
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/AirplaneModeSettings;

    iput-object v9, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 393
    iget-object v9, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-virtual {p1, v9, v13}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    .line 395
    return-void
.end method

.method public removeProfileGroup(Ljava/util/UUID;)V
    .locals 3
    .parameter "uuid"

    .prologue
    .line 311
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup;

    invoke-virtual {v0}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    const-string v0, "Profile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove default group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAirplaneMode(Landroid/app/AirplaneModeSettings;)V
    .locals 1
    .parameter "descriptor"

    .prologue
    .line 501
    iput-object p1, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 503
    return-void
.end method

.method public setConditionalType()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 456
    iput v0, p0, Landroid/app/Profile;->mProfileType:I

    .line 457
    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 458
    return-void
.end method

.method public setConnectionSettings(Landroid/app/ConnectionSettings;)V
    .locals 2
    .parameter "descriptor"

    .prologue
    .line 783
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    return-void
.end method

.method public setExpandedDesktopMode(I)V
    .locals 1
    .parameter "expandedDesktopMode"

    .prologue
    .line 487
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 489
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    .line 493
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 494
    return-void

    .line 491
    :cond_1
    iput p1, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 403
    iput-object p1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    .line 404
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Profile;->mNameResId:I

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 406
    return-void
.end method

.method public setProfileType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 414
    iput p1, p0, Landroid/app/Profile;->mProfileType:I

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 416
    return-void
.end method

.method public setRingMode(Landroid/app/RingModeSettings;)V
    .locals 1
    .parameter "descriptor"

    .prologue
    .line 465
    iput-object p1, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 467
    return-void
.end method

.method public setScreenLockMode(I)V
    .locals 1
    .parameter "screenLockMode"

    .prologue
    .line 474
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 475
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 479
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 480
    return-void

    .line 477
    :cond_1
    iput p1, p0, Landroid/app/Profile;->mScreenLockMode:I

    goto :goto_0
.end method

.method public setSecondaryUuids(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, uuids:Ljava/util/List;,"Ljava/util/List<Ljava/util/UUID;>;"
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 429
    if-eqz p1, :cond_0

    .line 430
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 433
    :cond_0
    return-void
.end method

.method public setStatusBarIndicator(Z)V
    .locals 1
    .parameter "newStatusBarIndicator"

    .prologue
    .line 447
    iput-boolean p1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 449
    return-void
.end method

.method public setStreamSettings(Landroid/app/StreamSettings;)V
    .locals 2
    .parameter "descriptor"

    .prologue
    .line 767
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 769
    return-void
.end method

.method public setTrigger(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "id"
    .parameter "state"
    .parameter "name"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 265
    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    if-gt p1, v3, :cond_0

    if-ltz p3, :cond_0

    if-le p3, v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v1, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile$ProfileTrigger;

    .line 273
    .local v0, trigger:Landroid/app/Profile$ProfileTrigger;
    if-ne p3, v2, :cond_3

    .line 274
    if-eqz v0, :cond_2

    .line 275
    iget-object v1, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_2
    :goto_1
    iput-boolean v3, p0, Landroid/app/Profile;->mDirty:Z

    goto :goto_0

    .line 277
    :cond_3
    if-eqz v0, :cond_4

    .line 278
    #setter for: Landroid/app/Profile$ProfileTrigger;->mState:I
    invoke-static {v0, p3}, Landroid/app/Profile$ProfileTrigger;->access$202(Landroid/app/Profile$ProfileTrigger;I)I

    goto :goto_1

    .line 280
    :cond_4
    iget-object v1, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    new-instance v2, Landroid/app/Profile$ProfileTrigger;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/Profile$ProfileTrigger;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public validateRingtones(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 636
    iget-object v2, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfileGroup;

    .line 637
    .local v1, pg:Landroid/app/ProfileGroup;
    invoke-virtual {v1, p1}, Landroid/app/ProfileGroup;->validateOverrideUris(Landroid/content/Context;)V

    goto :goto_0

    .line 639
    .end local v1           #pg:Landroid/app/ProfileGroup;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 339
    iget-object v3, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget v3, p0, Landroid/app/Profile;->mNameResId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v6, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    invoke-direct {v3, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v3, p1, v5}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 342
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 343
    .local v2, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    iget-object v3, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 344
    .local v1, u:Ljava/util/UUID;
    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    .end local v1           #u:Ljava/util/UUID;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 347
    iget-boolean v3, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v3, p0, Landroid/app/Profile;->mProfileType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-boolean v3, p0, Landroid/app/Profile;->mDirty:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget-object v3, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 352
    iget-object v3, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 354
    iget-object v3, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 356
    iget-object v3, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 357
    iget-object v3, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 358
    iget v3, p0, Landroid/app/Profile;->mScreenLockMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-object v3, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 360
    iget v3, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    return-void

    :cond_1
    move v3, v5

    .line 347
    goto :goto_1

    :cond_2
    move v4, v5

    .line 349
    goto :goto_2
.end method
