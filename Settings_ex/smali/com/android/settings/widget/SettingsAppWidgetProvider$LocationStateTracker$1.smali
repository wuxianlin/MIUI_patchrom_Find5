.class Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 554
    iget-object v5, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 556
    .local v2, um:Landroid/os/UserManager;
    const-string v5, "no_share_location"

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 557
    iget-object v5, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v6, "location_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 559
    .local v0, currentMode:I
    const/4 v1, 0x3

    .line 560
    .local v1, mode:I
    packed-switch v0, :pswitch_data_0

    .line 574
    :goto_0
    iget-object v5, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v6, "location_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 575
    if-eqz v1, :cond_0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 578
    .end local v0           #currentMode:I
    .end local v1           #mode:I
    :goto_2
    return-object v3

    .line 562
    .restart local v0       #currentMode:I
    .restart local v1       #mode:I
    :pswitch_0
    const/4 v1, 0x2

    .line 563
    goto :goto_0

    .line 565
    :pswitch_1
    const/4 v1, 0x3

    .line 566
    goto :goto_0

    .line 568
    :pswitch_2
    const/4 v1, 0x0

    .line 569
    goto :goto_0

    .line 571
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 575
    goto :goto_1

    .line 578
    .end local v0           #currentMode:I
    .end local v1           #mode:I
    :cond_1
    iget-object v5, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iget-object v6, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_3

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 551
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 586
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 587
    return-void

    .line 583
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 551
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
