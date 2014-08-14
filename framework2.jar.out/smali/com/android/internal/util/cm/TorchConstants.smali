.class public Lcom/android/internal/util/cm/TorchConstants;
.super Ljava/lang/Object;
.source "TorchConstants.java"


# static fields
.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "net.cactii.flash2.TORCH_STATE_CHANGED"

.field public static final ACTION_TOGGLE_STATE:Ljava/lang/String; = "net.cactii.flash2.TOGGLE_FLASHLIGHT"

.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "net.cactii.flash2"

.field public static final EXTRA_BRIGHT_MODE:Ljava/lang/String; = "bright"

.field public static final EXTRA_CURRENT_STATE:Ljava/lang/String; = "state"

.field public static INTENT_LAUNCH_APP:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "net.cactii.flash2"

    const-string v2, "net.cactii.flash2.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/cm/TorchConstants;->INTENT_LAUNCH_APP:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
