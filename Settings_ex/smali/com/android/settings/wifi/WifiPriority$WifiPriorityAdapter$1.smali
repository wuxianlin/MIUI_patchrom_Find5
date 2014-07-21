.class Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter$1;
.super Ljava/lang/Object;
.source "WifiPriority.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter;->reloadNetworks()V
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
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter$1;->this$1:Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 132
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v2, v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 135
    :cond_2
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ge v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 136
    :cond_3
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gt v1, v2, :cond_0

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .end local p1
    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/WifiPriority$WifiPriorityAdapter$1;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method
