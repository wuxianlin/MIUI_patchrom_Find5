.class final Lcom/android/server/wm/StartingData;
.super Ljava/lang/Object;
.source "StartingData.java"


# instance fields
.field final compatInfo:Landroid/content/res/CompatibilityInfo;

.field final icon:I

.field final labelRes:I

.field final logo:I

.field final nonLocalizedLabel:Ljava/lang/CharSequence;

.field final pkg:Ljava/lang/String;

.field final theme:I

.field final windowFlags:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)V
    .locals 0
    .parameter "_pkg"
    .parameter "_theme"
    .parameter "_compatInfo"
    .parameter "_nonLocalizedLabel"
    .parameter "_labelRes"
    .parameter "_icon"
    .parameter "_logo"
    .parameter "_windowFlags"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/android/server/wm/StartingData;->theme:I

    .line 36
    iput-object p3, p0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 37
    iput-object p4, p0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 38
    iput p5, p0, Lcom/android/server/wm/StartingData;->labelRes:I

    .line 39
    iput p6, p0, Lcom/android/server/wm/StartingData;->icon:I

    .line 40
    iput p7, p0, Lcom/android/server/wm/StartingData;->logo:I

    .line 41
    iput p8, p0, Lcom/android/server/wm/StartingData;->windowFlags:I

    .line 42
    return-void
.end method
