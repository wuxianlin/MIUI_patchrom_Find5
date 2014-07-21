.class Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter$1;
.super Ljava/lang/Object;
.source "BetterListFragmentInternal.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/koushikdutta/widgets/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter$1;->this$1:Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/koushikdutta/widgets/ListItem;Lcom/koushikdutta/widgets/ListItem;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/koushikdutta/widgets/ListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/koushikdutta/widgets/ListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    check-cast p1, Lcom/koushikdutta/widgets/ListItem;

    .end local p1
    check-cast p2, Lcom/koushikdutta/widgets/ListItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter$1;->compare(Lcom/koushikdutta/widgets/ListItem;Lcom/koushikdutta/widgets/ListItem;)I

    move-result v0

    return v0
.end method
