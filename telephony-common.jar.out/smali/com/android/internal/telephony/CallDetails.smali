.class public Lcom/android/internal/telephony/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallDetails$ServiceStatus;
    }
.end annotation


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0xb

.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_TYPE_SMS:I = 0x5

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final EXTRAS_IS_CONFERENCE_URI:Ljava/lang/String; = "isConferenceUri"

.field public static final EXTRAS_PARENT_CALL_ID:Ljava/lang/String; = "parentCallId"


# instance fields
.field public call_domain:I

.field public call_type:I

.field public extras:[Ljava/lang/String;

.field public localAbility:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;

.field public peerAbility:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 162
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 164
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 0
    .parameter "callType"
    .parameter "callDomain"
    .parameter "extraparams"

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 168
    iput p2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 169
    iput-object p3, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 170
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;)V
    .locals 1
    .parameter "srcCall"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 175
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 176
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 177
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;

    .line 178
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;

    .line 180
    :cond_0
    return-void
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, newExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 189
    .local v1, extras:[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 190
    const/4 v4, 0x0

    .line 203
    :goto_0
    return-object v4

    .line 195
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 197
    if-eqz v1, :cond_1

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, i:I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_1

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    move-object v4, v1

    .line 203
    goto :goto_0
.end method


# virtual methods
.method public getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "extras"
    .parameter "key"

    .prologue
    .line 211
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 212
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 213
    aget-object v2, p1, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, currKey:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 219
    .end local v0           #currKey:[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 0
    .parameter "extraparams"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, newExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/telephony/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 208
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 227
    const-string v1, ""

    .local v1, extrasResult:Ljava/lang/String;
    const-string v4, ""

    .local v4, localSrvAbility:Ljava/lang/String;
    const-string v5, ""

    .line 228
    .local v5, peerSrvAbility:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 230
    .local v6, s:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;

    if-eqz v8, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;

    .local v0, arr$:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    .line 236
    .local v7, srv:Lcom/android/internal/telephony/CallDetails$ServiceStatus;
    if-eqz v7, :cond_1

    .line 237
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isValid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v7, Lcom/android/internal/telephony/CallDetails$ServiceStatus;->isValid:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/CallDetails$ServiceStatus;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/CallDetails$ServiceStatus;->status:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " restrictCause = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/CallDetails$ServiceStatus;->restrictCause:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 235
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 244
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v7           #srv:Lcom/android/internal/telephony/CallDetails$ServiceStatus;
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;

    if-eqz v8, :cond_4

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;

    .restart local v0       #arr$:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v7, v0, v2

    .line 246
    .restart local v7       #srv:Lcom/android/internal/telephony/CallDetails$ServiceStatus;
    if-eqz v7, :cond_3

    .line 247
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isValid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v7, Lcom/android/internal/telephony/CallDetails$ServiceStatus;->isValid:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/CallDetails$ServiceStatus;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/CallDetails$ServiceStatus;->status:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " restrictCause = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/CallDetails$ServiceStatus;->restrictCause:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 245
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 254
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallDetails$ServiceStatus;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v7           #srv:Lcom/android/internal/telephony/CallDetails$ServiceStatus;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Local Ability "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Peer Ability "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
