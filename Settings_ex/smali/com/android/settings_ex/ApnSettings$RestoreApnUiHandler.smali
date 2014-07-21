.class Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/ApnSettings;Lcom/android/settings_ex/ApnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings_ex/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 341
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 354
    :goto_0
    return-void

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    #calls: Lcom/android/settings_ex/ApnSettings;->fillList()V
    invoke-static {v0}, Lcom/android/settings_ex/ApnSettings;->access$200(Lcom/android/settings_ex/ApnSettings;)V

    .line 344
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 345
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings_ex/ApnSettings;->access$102(Z)Z

    .line 346
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ApnSettings;->removeDialog(I)V

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080770

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
