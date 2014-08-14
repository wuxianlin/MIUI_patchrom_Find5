.class public abstract Lcom/android/internal/telephony/dataconnection/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "DataProfile"


# instance fields
.field public final apn:Ljava/lang/String;

.field public final authType:I

.field public final bearer:I

.field public carrier:Ljava/lang/String;

.field public carrierEnabled:Z

.field public final id:I

.field private mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field public mmsPort:Ljava/lang/String;

.field public mmsProxy:Ljava/lang/String;

.field public mmsc:Ljava/lang/String;

.field public final numeric:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public port:Ljava/lang/String;

.field public final protocol:Ljava/lang/String;

.field public proxy:Ljava/lang/String;

.field public final roamingProtocol:Ljava/lang/String;

.field public types:[Ljava/lang/String;

.field public final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 18
    .parameter "id"
    .parameter "numeric"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "protocol"
    .parameter "roamingProtocol"
    .parameter "bearer"

    .prologue
    .line 77
    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v17}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "id"
    .parameter "numeric"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "protocol"
    .parameter "roamingProtocol"
    .parameter "bearer"
    .parameter "carrier"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsc"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "carrierEnabled"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 85
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    .line 86
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->numeric:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    .line 88
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    .line 91
    iput p6, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    .line 92
    iput-object p8, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    .line 93
    iput-object p9, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->roamingProtocol:Ljava/lang/String;

    .line 94
    iput p10, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    .line 96
    iput-object p11, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrier:Ljava/lang/String;

    .line 97
    iput-object p12, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->proxy:Ljava/lang/String;

    .line 98
    iput-object p13, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->port:Ljava/lang/String;

    .line 99
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsc:Ljava/lang/String;

    .line 100
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsProxy:Ljava/lang/String;

    .line 101
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsPort:Ljava/lang/String;

    .line 102
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrierEnabled:Z

    .line 103
    return-void
.end method


# virtual methods
.method public abstract canHandleType(Ljava/lang/String;)Z
.end method

.method public abstract getDataProfileType()Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;
.end method

.method public abstract getProfileId()I
.end method

.method isActive()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAsActive(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .parameter "dc"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 111
    return-void
.end method

.method setAsInactive()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 115
    return-void
.end method

.method public abstract toHash()Ljava/lang/String;
.end method

.method public abstract toShortString()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "[DataProfile] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->numeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 127
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
