.class public Lcom/android/settings/net/NetworkPolicyEditor;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# instance fields
.field private mPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/NetworkPolicyManager;)V
    .locals 1
    .parameter "policyManager"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    .line 62
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 63
    return-void
.end method

.method private static buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 16
    .parameter "template"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 150
    const/4 v3, -0x1

    .local v3, cycleLength:I
    move v2, v3

    .line 151
    .local v2, cycleDay:I
    const-string v4, "UTC"

    .line 152
    .local v4, cycleTimezone:Ljava/lang/String;
    const/4 v13, 0x0

    .line 162
    .local v13, metered:Z
    :goto_0
    new-instance v0, Landroid/net/NetworkPolicy;

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v14, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IILjava/lang/String;JJJJZZ)V

    return-object v0

    .line 154
    .end local v2           #cycleDay:I
    .end local v3           #cycleLength:I
    .end local v4           #cycleTimezone:Ljava/lang/String;
    .end local v13           #metered:Z
    :cond_0
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 155
    .local v15, time:Landroid/text/format/Time;
    invoke-virtual {v15}, Landroid/text/format/Time;->setToNow()V

    .line 156
    iget v2, v15, Landroid/text/format/Time;->monthDay:I

    .line 157
    .restart local v2       #cycleDay:I
    const/4 v3, 0x2

    .line 158
    .restart local v3       #cycleLength:I
    iget-object v4, v15, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 159
    .restart local v4       #cycleTimezone:Ljava/lang/String;
    const/4 v13, 0x1

    .restart local v13       #metered:Z
    goto :goto_0
.end method

.method private static buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;
    .locals 5
    .parameter "template"

    .prologue
    const/4 v2, 0x0

    .line 374
    if-nez p0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-object v2

    .line 375
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, networkId:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, strippedNetworkId:Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 378
    new-instance v2, Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private forceMobilePolicyCombined()Z
    .locals 6

    .prologue
    .line 269
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 270
    .local v4, subscriberIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 271
    .local v2, policy:Landroid/net/NetworkPolicy;
    iget-object v5, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    .end local v2           #policy:Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v1, 0x0

    .line 275
    .local v1, modified:Z
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 276
    .local v3, subscriberId:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/settings/net/NetworkPolicyEditor;->setMobilePolicySplitInternal(Ljava/lang/String;Z)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_1

    .line 278
    .end local v3           #subscriberId:Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private setMobilePolicySplitInternal(Ljava/lang/String;Z)Z
    .locals 27
    .parameter "subscriberId"
    .parameter "split"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v21

    .line 318
    .local v21, beforeSplit:Z
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 319
    .local v5, template3g:Landroid/net/NetworkTemplate;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v26

    .line 320
    .local v26, template4g:Landroid/net/NetworkTemplate;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 322
    .local v3, templateAll:Landroid/net/NetworkTemplate;
    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 324
    const/4 v2, 0x0

    .line 364
    .end local v5           #template3g:Landroid/net/NetworkTemplate;
    :goto_0
    return v2

    .line 326
    .restart local v5       #template3g:Landroid/net/NetworkTemplate;
    :cond_0
    if-eqz v21, :cond_5

    if-nez p2, :cond_5

    .line 328
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v22

    .line 329
    .local v22, policy3g:Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v23

    .line 331
    .local v23, policy4g:Landroid/net/NetworkPolicy;
    const/16 v25, 0x0

    .line 332
    .local v25, restrictive:Landroid/net/NetworkPolicy;
    if-nez v22, :cond_1

    if-nez v23, :cond_1

    .line 333
    const/4 v2, 0x0

    goto :goto_0

    .line 334
    :cond_1
    if-nez v22, :cond_2

    .line 335
    move-object/from16 v25, v23

    .line 341
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v2, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v25

    iget v4, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v25

    iget v5, v0, Landroid/net/NetworkPolicy;->cycleLength:I

    .end local v5           #template3g:Landroid/net/NetworkTemplate;
    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-wide v7, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v25

    iget-wide v9, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    move-object/from16 v0, v25

    iget-boolean v15, v0, Landroid/net/NetworkPolicy;->metered:Z

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->inferred:Z

    move/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    const/4 v2, 0x1

    goto :goto_0

    .line 336
    .restart local v5       #template3g:Landroid/net/NetworkTemplate;
    :cond_2
    if-nez v23, :cond_3

    .line 337
    move-object/from16 v25, v22

    goto :goto_1

    .line 339
    :cond_3
    invoke-virtual/range {v22 .. v23}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v2

    if-gez v2, :cond_4

    move-object/from16 v25, v22

    :goto_2
    goto :goto_1

    :cond_4
    move-object/from16 v25, v23

    goto :goto_2

    .line 349
    .end local v22           #policy3g:Landroid/net/NetworkPolicy;
    .end local v23           #policy4g:Landroid/net/NetworkPolicy;
    .end local v25           #restrictive:Landroid/net/NetworkPolicy;
    :cond_5
    if-nez v21, :cond_7

    if-eqz p2, :cond_7

    .line 351
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v24

    .line 352
    .local v24, policyAll:Landroid/net/NetworkPolicy;
    if-nez v24, :cond_6

    .line 353
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 355
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v4, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v24

    iget v6, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v24

    iget v7, v0, Landroid/net/NetworkPolicy;->cycleLength:I

    move-object/from16 v0, v24

    iget-object v8, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-wide v9, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v24

    iget-wide v11, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v13, -0x1

    const-wide/16 v15, -0x1

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->metered:Z

    move/from16 v17, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->inferred:Z

    move/from16 v18, v0

    invoke-direct/range {v4 .. v18}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IILjava/lang/String;JJJJZZ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v6, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v24

    iget v8, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v24

    iget v9, v0, Landroid/net/NetworkPolicy;->cycleLength:I

    move-object/from16 v0, v24

    iget-object v10, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-wide v11, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v24

    iget-wide v13, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v15, -0x1

    const-wide/16 v17, -0x1

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->metered:Z

    move/from16 v19, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->inferred:Z

    move/from16 v20, v0

    move-object/from16 v7, v26

    invoke-direct/range {v6 .. v20}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IILjava/lang/String;JJJJZZ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 364
    .end local v24           #policyAll:Landroid/net/NetworkPolicy;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2
    .parameter "template"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 116
    .local v0, policy:Landroid/net/NetworkPolicy;
    if-nez v0, :cond_0

    .line 117
    invoke-static {p1}, Lcom/android/settings/net/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    return-object v0
.end method

.method public getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 3
    .parameter "template"

    .prologue
    .line 124
    iget-object v2, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 125
    .local v1, policy:Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    .end local v1           #policy:Landroid/net/NetworkPolicy;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPolicyCycleDay(Landroid/net/NetworkTemplate;)I
    .locals 2
    .parameter "template"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 168
    .local v0, policy:Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPolicyCycleLength(Landroid/net/NetworkTemplate;)I
    .locals 1
    .parameter "template"

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleLength:I

    return v0
.end method

.method public getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J
    .locals 3
    .parameter "template"

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 207
    .local v0, policy:Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getPolicyMaybeUnquoted(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2
    .parameter "template"

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 134
    .local v0, policy:Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    .line 137
    .end local v0           #policy:Landroid/net/NetworkPolicy;
    :goto_0
    return-object v0

    .restart local v0       #policy:Landroid/net/NetworkPolicy;
    :cond_0
    invoke-static {p1}, Lcom/android/settings/net/NetworkPolicyEditor;->buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    goto :goto_0
.end method

.method public getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J
    .locals 3
    .parameter "template"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 194
    .local v0, policy:Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public isMobilePolicySplit(Ljava/lang/String;)Z
    .locals 6
    .parameter "subscriberId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, has3g:Z
    const/4 v1, 0x0

    .line 285
    .local v1, has4g:Z
    iget-object v5, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 286
    .local v3, policy:Landroid/net/NetworkPolicy;
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 287
    .local v4, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 290
    :pswitch_0
    const/4 v0, 0x1

    .line 291
    goto :goto_0

    .line 293
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 298
    .end local v3           #policy:Landroid/net/NetworkPolicy;
    .end local v4           #template:Landroid/net/NetworkTemplate;
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 288
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 66
    iget-object v6, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v6}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v4

    .line 68
    .local v4, policies:[Landroid/net/NetworkPolicy;
    const/4 v3, 0x0

    .line 69
    .local v3, modified:Z
    iget-object v6, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 70
    move-object v0, v4

    .local v0, arr$:[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 72
    .local v5, policy:Landroid/net/NetworkPolicy;
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 73
    iput-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 74
    const/4 v3, 0x1

    .line 76
    :cond_0
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 77
    iput-wide v8, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 78
    const/4 v3, 0x1

    .line 81
    :cond_1
    iget-object v6, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v5           #policy:Landroid/net/NetworkPolicy;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->forceMobilePolicyCombined()Z

    move-result v6

    or-int/2addr v3, v6

    .line 90
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    .line 91
    :cond_3
    return-void
.end method

.method public setMobilePolicySplit(Ljava/lang/String;Z)V
    .locals 1
    .parameter "subscriberId"
    .parameter "split"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setMobilePolicySplitInternal(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    .line 306
    :cond_0
    return-void
.end method

.method public setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V
    .locals 2
    .parameter "template"
    .parameter "cycleDay"
    .parameter "cycleTimezone"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 173
    .local v0, policy:Landroid/net/NetworkPolicy;
    iput p2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 174
    iput-object p3, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 176
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    .line 178
    return-void
.end method

.method public setPolicyCycleLength(Landroid/net/NetworkTemplate;I)V
    .locals 2
    .parameter "template"
    .parameter "cycleLength"

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 186
    .local v0, policy:Landroid/net/NetworkPolicy;
    iput p2, v0, Landroid/net/NetworkPolicy;->cycleLength:I

    .line 187
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 188
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    .line 190
    return-void
.end method

.method public setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V
    .locals 2
    .parameter "template"
    .parameter "limitBytes"

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 212
    .local v0, policy:Landroid/net/NetworkPolicy;
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 214
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    .line 216
    return-void
.end method

.method public setPolicyMetered(Landroid/net/NetworkTemplate;Z)V
    .locals 7
    .parameter "template"
    .parameter "metered"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, modified:Z
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 231
    .local v1, policy:Landroid/net/NetworkPolicy;
    if-eqz p2, :cond_4

    .line 232
    if-nez v1, :cond_3

    .line 233
    invoke-static {p1}, Lcom/android/settings/net/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 234
    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->metered:Z

    .line 235
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 236
    iget-object v4, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const/4 v0, 0x1

    .line 255
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/net/NetworkPolicyEditor;->buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 256
    .local v2, unquoted:Landroid/net/NetworkTemplate;
    invoke-virtual {p0, v2}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 257
    .local v3, unquotedPolicy:Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_1

    .line 258
    iget-object v4, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    const/4 v0, 0x1

    .line 262
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    .line 263
    :cond_2
    return-void

    .line 238
    .end local v2           #unquoted:Landroid/net/NetworkTemplate;
    .end local v3           #unquotedPolicy:Landroid/net/NetworkPolicy;
    :cond_3
    iget-boolean v4, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-nez v4, :cond_0

    .line 239
    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->metered:Z

    .line 240
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 241
    const/4 v0, 0x1

    goto :goto_0

    .line 245
    :cond_4
    if-eqz v1, :cond_0

    .line 247
    iget-boolean v4, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_0

    .line 248
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->metered:Z

    .line 249
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 250
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V
    .locals 2
    .parameter "template"
    .parameter "warningBytes"

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 199
    .local v0, policy:Landroid/net/NetworkPolicy;
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 200
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 201
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    .line 203
    return-void
.end method

.method public write([Landroid/net/NetworkPolicy;)V
    .locals 1
    .parameter "policies"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 107
    return-void
.end method

.method public writeAsync()V
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 96
    .local v0, policies:[Landroid/net/NetworkPolicy;
    new-instance v1, Lcom/android/settings/net/NetworkPolicyEditor$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/net/NetworkPolicyEditor$1;-><init>(Lcom/android/settings/net/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/net/NetworkPolicyEditor$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method
