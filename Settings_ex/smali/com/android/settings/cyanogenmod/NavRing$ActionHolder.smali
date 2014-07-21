.class Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;
.super Ljava/lang/Object;
.source "NavRing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/NavRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionHolder"
.end annotation


# instance fields
.field private mAvailableEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/cyanogenmod/NavRing;


# direct methods
.method private constructor <init>(Lcom/android/settings/cyanogenmod/NavRing;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->this$0:Lcom/android/settings/cyanogenmod/NavRing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/cyanogenmod/NavRing;Lcom/android/settings/cyanogenmod/NavRing$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;-><init>(Lcom/android/settings/cyanogenmod/NavRing;)V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;I)V
    .locals 2
    .parameter "action"
    .parameter "entryResId"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->this$0:Lcom/android/settings/cyanogenmod/NavRing;

    invoke-virtual {v1, p2}, Lcom/android/settings/cyanogenmod/NavRing;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public getAction(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getActionIndex(Ljava/lang/String;)I
    .locals 3
    .parameter "action"

    .prologue
    .line 77
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 78
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 79
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    .end local v1           #i:I
    :goto_1
    return v1

    .line 78
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0
.end method
