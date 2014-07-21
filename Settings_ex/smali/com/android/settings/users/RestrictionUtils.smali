.class public Lcom/android/settings/users/RestrictionUtils;
.super Ljava/lang/Object;
.source "RestrictionUtils.java"


# static fields
.field public static final sRestrictionDescriptions:[I

.field public static final sRestrictionKeys:[Ljava/lang/String;

.field public static final sRestrictionTitles:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "no_share_location"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    .line 40
    new-array v0, v3, [I

    const v1, 0x7f080ba4

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->sRestrictionTitles:[I

    .line 47
    new-array v0, v3, [I

    const v1, 0x7f080ba5

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->sRestrictionDescriptions:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 10
    .parameter "context"
    .parameter "user"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 61
    .local v3, res:Landroid/content/res/Resources;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 63
    .local v4, um:Landroid/os/UserManager;
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v5

    .line 65
    .local v5, userRestrictions:Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v6, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 66
    new-instance v1, Landroid/content/RestrictionEntry;

    sget-object v6, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    aget-object v9, v6, v2

    sget-object v6, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    :goto_1
    invoke-direct {v1, v9, v6}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;Z)V

    .line 69
    .local v1, entry:Landroid/content/RestrictionEntry;
    sget-object v6, Lcom/android/settings/users/RestrictionUtils;->sRestrictionTitles:[I

    aget v6, v6, v2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/RestrictionEntry;->setTitle(Ljava/lang/String;)V

    .line 70
    sget-object v6, Lcom/android/settings/users/RestrictionUtils;->sRestrictionDescriptions:[I

    aget v6, v6, v2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/RestrictionEntry;->setDescription(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v7}, Landroid/content/RestrictionEntry;->setType(I)V

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #entry:Landroid/content/RestrictionEntry;
    :cond_0
    move v6, v8

    .line 66
    goto :goto_1

    .line 75
    :cond_1
    return-object v0
.end method

.method public static restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/RestrictionEntry;

    .line 97
    .local v1, entry:Landroid/content/RestrictionEntry;
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 98
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 100
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v1           #entry:Landroid/content/RestrictionEntry;
    :cond_2
    return-object v0
.end method

.method public static setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 8
    .parameter "context"
    .parameter
    .parameter "user"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 81
    .local v2, um:Landroid/os/UserManager;
    invoke-virtual {v2, p2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v3

    .line 83
    .local v3, userRestrictions:Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    .line 84
    .local v0, entry:Landroid/content/RestrictionEntry;
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "no_share_location"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_providers_allowed"

    const-string v6, ""

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 84
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 91
    .end local v0           #entry:Landroid/content/RestrictionEntry;
    :cond_2
    invoke-virtual {v2, v3, p2}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 92
    return-void
.end method
