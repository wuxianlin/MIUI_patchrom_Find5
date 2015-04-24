.class public Lcom/android/internal/telephony/dataconnection/DataProfileOmh;
.super Lcom/android/internal/telephony/dataconnection/DataProfile;
.source "DataProfileOmh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    }
.end annotation


# static fields
.field private static PROFILE_TYPE:Ljava/lang/String;


# instance fields
.field private DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

.field private DATA_PROFILE_OMH_PRIORITY_LOWEST:I

.field private mDataProfileModem:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

.field private mPriority:I

.field private mProfileId:I

.field private serviceTypeMasks:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const-string v0, "DataProfileOmh"

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->PROFILE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 11
    .param p1, "profileId"    # I
    .param p2, "priority"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 122
    const-string v2, ""

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->PROFILE_TYPE:Ljava/lang/String;

    const/4 v6, 0x3

    const-string v8, "IP"

    const-string v9, "IP"

    move-object v0, p0

    move-object v5, v4

    move-object v7, v4

    move v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    .line 102
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    .line 106
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    .line 109
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    .line 112
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mProfileId:I

    .line 125
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mProfileId:I

    .line 126
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    .line 127
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->types:[Ljava/lang/String;

    .line 128
    return-void
.end method

.method private isValidPriority(I)Z
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 190
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addServiceType(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V
    .locals 7
    .param p1, "modemProfile"    # Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    .prologue
    .line 203
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    .line 206
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v4, "serviceTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->values()[Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 208
    .local v1, "dpt":Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataServiceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "dpt":Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->types:[Ljava/lang/String;

    .line 213
    return-void
.end method

.method public canHandleType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataProfileType()Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;->PROFILE_TYPE_OMH:Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;

    return-object v0
.end method

.method public getDataProfileTypeModem()Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mDataProfileModem:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    return v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mProfileId:I

    return v0
.end method

.method public isPriorityHigher(I)Z
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPriorityLower(I)Z
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidPriority()Z
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    return v0
.end method

.method public setDataProfileTypeModem(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V
    .locals 0
    .param p1, "modemProfile"    # Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mDataProfileModem:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    .line 164
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    .line 172
    return-void
.end method

.method public toHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "DataProfile OMH"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
