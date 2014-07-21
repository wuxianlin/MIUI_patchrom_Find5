.class Lcom/android/settings/DevelopmentSettings$2;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DevelopmentSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$2;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$2;->this$0:Lcom/android/settings/DevelopmentSettings;

    #calls: Lcom/android/settings/DevelopmentSettings;->updateRuntimeValue()V
    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->access$000(Lcom/android/settings/DevelopmentSettings;)V

    .line 1569
    return-void
.end method
