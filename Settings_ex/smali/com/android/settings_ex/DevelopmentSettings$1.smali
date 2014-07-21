.class Lcom/android/settings_ex/DevelopmentSettings$1;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DevelopmentSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DevelopmentSettings;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newRuntimeValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DevelopmentSettings;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    iput-object p2, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->val$newRuntimeValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1558
    const-string v1, "persist.sys.dalvik.vm.lib"

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->val$newRuntimeValue:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1560
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->val$context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1562
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1563
    return-void
.end method
