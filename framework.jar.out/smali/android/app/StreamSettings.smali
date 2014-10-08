.class public final Landroid/app/StreamSettings;
.super Ljava/lang/Object;
.source "StreamSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/StreamSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDirty:Z

.field private mOverride:Z

.field private mStreamId:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Landroid/app/StreamSettings$1;

    invoke-direct {v0}, Landroid/app/StreamSettings$1;-><init>()V

    sput-object v0, Landroid/app/StreamSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "streamId"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0, v0}, Landroid/app/StreamSettings;-><init>(IIZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .parameter "streamId"
    .parameter "value"
    .parameter "override"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/app/StreamSettings;->mStreamId:I

    .line 44
    iput p2, p0, Landroid/app/StreamSettings;->mValue:I

    .line 45
    iput-boolean p3, p0, Landroid/app/StreamSettings;->mOverride:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/StreamSettings;->mDirty:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "parcel"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Landroid/app/StreamSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 36
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/StreamSettings;
    .locals 5
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 80
    .local v0, event:I
    new-instance v2, Landroid/app/StreamSettings;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/app/StreamSettings;-><init>(I)V

    .line 81
    .local v2, streamDescriptor:Landroid/app/StreamSettings;
    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "streamDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 82
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 83
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, name:Ljava/lang/String;
    const-string/jumbo v3, "streamId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/app/StreamSettings;->mStreamId:I

    .line 92
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 86
    .restart local v1       #name:Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/app/StreamSettings;->mValue:I

    goto :goto_1

    .line 88
    :cond_3
    const-string/jumbo v3, "override"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/app/StreamSettings;->mOverride:Z

    goto :goto_1

    .line 94
    .end local v1           #name:Ljava/lang/String;
    :cond_4
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public getStreamId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Landroid/app/StreamSettings;->mStreamId:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Landroid/app/StreamSettings;->mValue:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .parameter "builder"
    .parameter "context"

    .prologue
    .line 99
    const-string v0, "<streamDescriptor>\n<streamId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v0, p0, Landroid/app/StreamSettings;->mStreamId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v0, "</streamId>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v0, p0, Landroid/app/StreamSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-boolean v0, p0, Landroid/app/StreamSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, "</override>\n</streamDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/StreamSettings;->mDirty:Z

    .line 107
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/app/StreamSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/app/StreamSettings;->mOverride:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/StreamSettings;->mStreamId:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/StreamSettings;->mOverride:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/StreamSettings;->mValue:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/app/StreamSettings;->mDirty:Z

    .line 129
    return-void

    :cond_0
    move v0, v2

    .line 126
    goto :goto_0

    :cond_1
    move v1, v2

    .line 128
    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .parameter "override"

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/app/StreamSettings;->mOverride:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/StreamSettings;->mDirty:Z

    .line 65
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 58
    iput p1, p0, Landroid/app/StreamSettings;->mValue:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/StreamSettings;->mDirty:Z

    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    iget v0, p0, Landroid/app/StreamSettings;->mStreamId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean v0, p0, Landroid/app/StreamSettings;->mOverride:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/app/StreamSettings;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-boolean v0, p0, Landroid/app/StreamSettings;->mDirty:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return-void

    :cond_0
    move v0, v2

    .line 118
    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method
