.class Lcom/android/settings_ex/DisplaySettings$3;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$3;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$3;->this$0:Lcom/android/settings_ex/DisplaySettings;

    #getter for: Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/FontDialogPreference;
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$100(Lcom/android/settings_ex/DisplaySettings;)Lcom/android/settings_ex/FontDialogPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/FontDialogPreference;->click()V

    .line 421
    return-void
.end method
