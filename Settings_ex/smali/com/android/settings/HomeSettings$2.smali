.class Lcom/android/settings/HomeSettings$2;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/HomeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/HomeSettings$2;->this$0:Lcom/android/settings/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    .local v0, index:I
    iget-object v2, p0, Lcom/android/settings/HomeSettings$2;->this$0:Lcom/android/settings/HomeSettings;

    iget-object v1, p0, Lcom/android/settings/HomeSettings$2;->this$0:Lcom/android/settings/HomeSettings;

    iget-object v1, v1, Lcom/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/HomeSettings$HomeAppPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/HomeSettings;->uninstallApp(Lcom/android/settings/HomeSettings$HomeAppPreference;)V

    .line 92
    return-void
.end method
