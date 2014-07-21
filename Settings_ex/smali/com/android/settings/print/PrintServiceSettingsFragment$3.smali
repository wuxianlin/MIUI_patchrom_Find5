.class Lcom/android/settings/print/PrintServiceSettingsFragment$3;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;Z)Z
    .locals 4
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 292
    if-eqz p2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$500(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    invoke-virtual {p1, v1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_CHECKED"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #calls: Lcom/android/settings/print/PrintServiceSettingsFragment;->showDialog(I)V
    invoke-static {v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$600(Lcom/android/settings/print/PrintServiceSettingsFragment;I)V

    .line 303
    :goto_0
    return v0

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$700(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$800(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    .line 303
    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$700(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$800(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    goto :goto_1
.end method
