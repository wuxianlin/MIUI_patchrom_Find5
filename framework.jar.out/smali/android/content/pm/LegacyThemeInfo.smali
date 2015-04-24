.class public final Landroid/content/pm/LegacyThemeInfo;
.super Landroid/content/pm/BaseThemeInfo;
.source "LegacyThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LegacyThemeInfo$2;,
        Landroid/content/pm/LegacyThemeInfo$AttributeIndex;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/LegacyThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PLUTO_SCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/pluto.html"

.field private static final compulsoryAttributes:[Ljava/lang/String;

.field private static final optionalAttributes:[Ljava/lang/String;

.field private static final sAttributesLookupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/LegacyThemeInfo$AttributeIndex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public copyright:Ljava/lang/String;

.field public notificationFileName:Ljava/lang/String;

.field public previewResourceId:I

.field public ringtoneFileName:Ljava/lang/String;

.field public thumbnailResourceId:I

.field public wallpaperResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "name"

    aput-object v2, v1, v3

    const-string/jumbo v2, "preview"

    aput-object v2, v1, v4

    const-string v2, "author"

    aput-object v2, v1, v5

    const-string/jumbo v2, "themeId"

    aput-object v2, v1, v6

    const-string/jumbo v2, "styleName"

    aput-object v2, v1, v7

    sput-object v1, Landroid/content/pm/LegacyThemeInfo;->compulsoryAttributes:[Ljava/lang/String;

    .line 77
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "thumbnail"

    aput-object v2, v1, v3

    const-string/jumbo v2, "ringtoneFileName"

    aput-object v2, v1, v4

    const-string/jumbo v2, "notificationRingtoneFileName"

    aput-object v2, v1, v5

    const-string/jumbo v2, "wallpaperImage"

    aput-object v2, v1, v6

    const-string v2, "copyright"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string/jumbo v3, "ringtoneName"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "notificationRingtoneName"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "styleId"

    aput-object v3, v1, v2

    sput-object v1, Landroid/content/pm/LegacyThemeInfo;->optionalAttributes:[Ljava/lang/String;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/content/pm/LegacyThemeInfo;->sAttributesLookupTable:Ljava/util/Map;

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/content/pm/LegacyThemeInfo;->compulsoryAttributes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 93
    sget-object v1, Landroid/content/pm/LegacyThemeInfo;->sAttributesLookupTable:Ljava/util/Map;

    sget-object v2, Landroid/content/pm/LegacyThemeInfo;->compulsoryAttributes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Landroid/content/pm/LegacyThemeInfo$AttributeIndex;->get(I)Landroid/content/pm/LegacyThemeInfo$AttributeIndex;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/content/pm/LegacyThemeInfo;->optionalAttributes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 97
    sget-object v1, Landroid/content/pm/LegacyThemeInfo;->sAttributesLookupTable:Ljava/util/Map;

    sget-object v2, Landroid/content/pm/LegacyThemeInfo;->optionalAttributes:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Landroid/content/pm/LegacyThemeInfo;->compulsoryAttributes:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v3, v0

    invoke-static {v3}, Landroid/content/pm/LegacyThemeInfo$AttributeIndex;->get(I)Landroid/content/pm/LegacyThemeInfo$AttributeIndex;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    :cond_1
    new-instance v1, Landroid/content/pm/LegacyThemeInfo$1;

    invoke-direct {v1}, Landroid/content/pm/LegacyThemeInfo$1;-><init>()V

    sput-object v1, Landroid/content/pm/LegacyThemeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, p1}, Landroid/content/pm/BaseThemeInfo;-><init>(Landroid/os/Parcel;)V

    .line 102
    iput v0, p0, Landroid/content/pm/LegacyThemeInfo;->previewResourceId:I

    .line 103
    iput v0, p0, Landroid/content/pm/LegacyThemeInfo;->thumbnailResourceId:I

    .line 104
    iput v0, p0, Landroid/content/pm/LegacyThemeInfo;->wallpaperResourceId:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/LegacyThemeInfo;->previewResourceId:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/LegacyThemeInfo;->thumbnailResourceId:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/LegacyThemeInfo;->wallpaperResourceId:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LegacyThemeInfo;->ringtoneFileName:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LegacyThemeInfo;->notificationFileName:Ljava/lang/String;

    .line 213
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/LegacyThemeInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/LegacyThemeInfo$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/content/pm/LegacyThemeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 111
    invoke-direct {p0}, Landroid/content/pm/BaseThemeInfo;-><init>()V

    .line 102
    iput v7, p0, Landroid/content/pm/LegacyThemeInfo;->previewResourceId:I

    .line 103
    iput v7, p0, Landroid/content/pm/LegacyThemeInfo;->thumbnailResourceId:I

    .line 104
    iput v7, p0, Landroid/content/pm/LegacyThemeInfo;->wallpaperResourceId:I

    .line 113
    new-instance v4, Ljava/util/HashMap;

    sget-object v5, Landroid/content/pm/LegacyThemeInfo;->sAttributesLookupTable:Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 115
    .local v4, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/LegacyThemeInfo$AttributeIndex;>;"
    const/4 v3, 0x0

    .line 116
    .local v3, "numberOfCompulsoryAttributes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 117
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/LegacyThemeInfo;->isPlutoNamespace(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 116
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-interface {p3, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LegacyThemeInfo$AttributeIndex;

    .line 123
    .local v1, "index":Landroid/content/pm/LegacyThemeInfo$AttributeIndex;
    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v1}, Landroid/content/pm/LegacyThemeInfo$AttributeIndex;->ordinal()I

    move-result v5

    sget-object v6, Landroid/content/pm/LegacyThemeInfo;->compulsoryAttributes:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 128
    :cond_2
    sget-object v5, Landroid/content/pm/LegacyThemeInfo$2;->$SwitchMap$android$content$pm$LegacyThemeInfo$AttributeIndex:[I

    invoke-virtual {v1}, Landroid/content/pm/LegacyThemeInfo$AttributeIndex;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 131
    :pswitch_1
    invoke-virtual {p0, p2, p3, v0}, Landroid/content/pm/LegacyThemeInfo;->getResolvedString(Landroid/content/res/Resources;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/LegacyThemeInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 136
    :pswitch_2
    invoke-interface {p3, v0, v7}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v5

    iput v5, p0, Landroid/content/pm/LegacyThemeInfo;->thumbnailResourceId:I

    goto :goto_1

    .line 141
    :pswitch_3
    invoke-virtual {p0, p2, p3, v0}, Landroid/content/pm/LegacyThemeInfo;->getResolvedString(Landroid/content/res/Resources;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/LegacyThemeInfo;->author:Ljava/lang/String;

    goto :goto_1

    .line 146
    :pswitch_4
    invoke-interface {p3, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/LegacyThemeInfo;->themeId:Ljava/lang/String;

    goto :goto_1

    .line 154
    :pswitch_5
    invoke-interface {p3, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/LegacyThemeInfo;->ringtoneFileName:Ljava/lang/String;

    goto :goto_1

    .line 159
    :pswitch_6
    invoke-interface {p3, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/LegacyThemeInfo;->notificationFileName:Ljava/lang/String;

    goto :goto_1

    .line 164
    :pswitch_7
    invoke-interface {p3, v0, v7}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v5

    iput v5, p0, Landroid/content/pm/LegacyThemeInfo;->wallpaperResourceId:I

    goto :goto_1

    .line 169
    :pswitch_8
    invoke-virtual {p0, p2, p3, v0}, Landroid/content/pm/LegacyThemeInfo;->getResolvedString(Landroid/content/res/Resources;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/LegacyThemeInfo;->copyright:Ljava/lang/String;

    goto :goto_1

    .line 185
    :pswitch_9
    invoke-interface {p3, v0, v7}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v5

    iput v5, p0, Landroid/content/pm/LegacyThemeInfo;->previewResourceId:I

    goto :goto_1

    .line 190
    .end local v1    # "index":Landroid/content/pm/LegacyThemeInfo$AttributeIndex;
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    sget-object v5, Landroid/content/pm/LegacyThemeInfo;->compulsoryAttributes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 191
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Not all compulsory attributes are specified in <theme>"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 193
    :cond_4
    return-void

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public static isPlutoNamespace(Ljava/lang/String;)Z
    .locals 1
    .param p0, "namespace"    # Ljava/lang/String;

    .prologue
    .line 219
    if-eqz p0, :cond_0

    const-string v0, "http://www.w3.org/2001/pluto.html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Landroid/content/pm/BaseThemeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 225
    iget v0, p0, Landroid/content/pm/LegacyThemeInfo;->previewResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget v0, p0, Landroid/content/pm/LegacyThemeInfo;->thumbnailResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget v0, p0, Landroid/content/pm/LegacyThemeInfo;->wallpaperResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-object v0, p0, Landroid/content/pm/LegacyThemeInfo;->ringtoneFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Landroid/content/pm/LegacyThemeInfo;->notificationFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    return-void
.end method
