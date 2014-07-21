.class Lcom/android/settings_ex/MultiSimSettings$1;
.super Landroid/os/Handler;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/MultiSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MultiSimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MultiSimSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    .line 576
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 676
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown Event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :goto_0
    return-void

    .line 578
    :pswitch_0
    const-string v6, "MultiSimSettings"

    const-string v7, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    iget-boolean v6, v6, Lcom/android/settings_ex/MultiSimSettings;->mIsForeground:Z

    if-eqz v6, :cond_0

    .line 580
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/MultiSimSettings;->dismissDialog(I)V

    .line 582
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/MultiSimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 583
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #calls: Lcom/android/settings_ex/MultiSimSettings;->updateDataSummary()V
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$200(Lcom/android/settings_ex/MultiSimSettings;)V

    .line 585
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 587
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 588
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    invoke-virtual {v7}, Lcom/android/settings_ex/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080074

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, status:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    invoke-virtual {v6, v2}, Lcom/android/settings_ex/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    .end local v2           #status:Ljava/lang/String;
    :cond_1
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 596
    .local v1, result:Z
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SET_DATA_SUBSCRIPTION_DONE: result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    if-ne v1, v9, :cond_2

    .line 598
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080072

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 599
    .restart local v2       #status:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/MultiSimSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 601
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 603
    .end local v2           #status:Ljava/lang/String;
    .end local v4           #toast:Landroid/widget/Toast;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080073

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 604
    .restart local v2       #status:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    invoke-virtual {v6, v2}, Lcom/android/settings_ex/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 610
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #result:Z
    .end local v2           #status:Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/MultiSimSettings;->updateMultiSimEntriesForVoice()V

    .line 611
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/MultiSimSettings;->updateMultiSimEntriesForSms()V

    goto/16 :goto_0

    .line 615
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mHasTuneAway:Z
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$300(Lcom/android/settings_ex/MultiSimSettings;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 616
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #calls: Lcom/android/settings_ex/MultiSimSettings;->updateVoiceSummary()V
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$400(Lcom/android/settings_ex/MultiSimSettings;)V

    goto/16 :goto_0

    .line 618
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    iget v7, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/settings_ex/MultiSimSettings;->updateVoiceSub(I)V
    invoke-static {v6, v7}, Lcom/android/settings_ex/MultiSimSettings;->access$500(Lcom/android/settings_ex/MultiSimSettings;I)V

    goto/16 :goto_0

    .line 622
    :pswitch_3
    const-string v6, "MultiSimSettings"

    const-string v7, "EVENT_SET_VOICE_SUBSCRIPTION_DONE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 625
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_4

    .line 626
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SET_VOICE_SUBSCRIPTION_DONE: returned Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v5

    .line 629
    .local v5, voiceSub:I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, sub:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$600(Lcom/android/settings_ex/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 631
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$600(Lcom/android/settings_ex/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/android/settings_ex/MultiSimSettings;->access$700(Lcom/android/settings_ex/MultiSimSettings;)[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #setter for: Lcom/android/settings_ex/MultiSimSettings;->mVoiceSub:I
    invoke-static {v6, v5}, Lcom/android/settings_ex/MultiSimSettings;->access$802(Lcom/android/settings_ex/MultiSimSettings;I)I

    goto/16 :goto_0

    .line 635
    .end local v3           #sub:Ljava/lang/String;
    .end local v5           #voiceSub:I
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mVoiceSub:I
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$800(Lcom/android/settings_ex/MultiSimSettings;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 636
    .restart local v3       #sub:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$600(Lcom/android/settings_ex/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 637
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$600(Lcom/android/settings_ex/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/android/settings_ex/MultiSimSettings;->access$700(Lcom/android/settings_ex/MultiSimSettings;)[Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mVoiceSub:I
    invoke-static {v8}, Lcom/android/settings_ex/MultiSimSettings;->access$800(Lcom/android/settings_ex/MultiSimSettings;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mVoiceSub:I
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$800(Lcom/android/settings_ex/MultiSimSettings;)I

    move-result v6

    invoke-static {v6}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setVoiceSubscription(I)V

    goto/16 :goto_0

    .line 641
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #sub:Ljava/lang/String;
    :pswitch_4
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #calls: Lcom/android/settings_ex/MultiSimSettings;->updateSmsSummary()V
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$900(Lcom/android/settings_ex/MultiSimSettings;)V

    goto/16 :goto_0

    .line 644
    :pswitch_5
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #calls: Lcom/android/settings_ex/MultiSimSettings;->updateTuneAwayStatus()V
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$1000(Lcom/android/settings_ex/MultiSimSettings;)V

    goto/16 :goto_0

    .line 647
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 648
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_5

    .line 649
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SET_TUNE_AWAY_DONE: returned Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #calls: Lcom/android/settings_ex/MultiSimSettings;->updateTuneAwayState()V
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$1100(Lcom/android/settings_ex/MultiSimSettings;)V

    goto/16 :goto_0

    .line 653
    :cond_5
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SET_TUNE_AWAY_DONE: mTuneAwayValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mTuneAwayValue:Z
    invoke-static {v8}, Lcom/android/settings_ex/MultiSimSettings;->access$1200(Lcom/android/settings_ex/MultiSimSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$1300(Lcom/android/settings_ex/MultiSimSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mTuneAwayValue:Z
    invoke-static {v7}, Lcom/android/settings_ex/MultiSimSettings;->access$1200(Lcom/android/settings_ex/MultiSimSettings;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 655
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$1300(Lcom/android/settings_ex/MultiSimSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mTuneAwayValue:Z
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$1200(Lcom/android/settings_ex/MultiSimSettings;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "Enable"

    :goto_1
    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mTuneAwayValue:Z
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$1200(Lcom/android/settings_ex/MultiSimSettings;)Z

    move-result v6

    invoke-static {v6}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setTuneAway(Z)V

    goto/16 :goto_0

    .line 655
    :cond_6
    const-string v6, "Disable"

    goto :goto_1

    .line 659
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    iget v7, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/settings_ex/MultiSimSettings;->updatePrioritySub(I)V
    invoke-static {v6, v7}, Lcom/android/settings_ex/MultiSimSettings;->access$1400(Lcom/android/settings_ex/MultiSimSettings;I)V

    goto/16 :goto_0

    .line 662
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 663
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_7

    .line 664
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SET_PRIORITY_SUBSCRIPTION_DONE: returned Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #calls: Lcom/android/settings_ex/MultiSimSettings;->updatePrioritySubState()V
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$1500(Lcom/android/settings_ex/MultiSimSettings;)V

    goto/16 :goto_0

    .line 669
    :cond_7
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SET_PRIORITY_SUBSCRIPTION_DONE : mPrioritySubValue "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mPrioritySubValue:I
    invoke-static {v8}, Lcom/android/settings_ex/MultiSimSettings;->access$1600(Lcom/android/settings_ex/MultiSimSettings;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$1700(Lcom/android/settings_ex/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mPrioritySubValue:I
    invoke-static {v7}, Lcom/android/settings_ex/MultiSimSettings;->access$1600(Lcom/android/settings_ex/MultiSimSettings;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 672
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$1700(Lcom/android/settings_ex/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/android/settings_ex/MultiSimSettings;->access$700(Lcom/android/settings_ex/MultiSimSettings;)[Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mPrioritySubValue:I
    invoke-static {v8}, Lcom/android/settings_ex/MultiSimSettings;->access$1600(Lcom/android/settings_ex/MultiSimSettings;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v6, p0, Lcom/android/settings_ex/MultiSimSettings$1;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    #getter for: Lcom/android/settings_ex/MultiSimSettings;->mPrioritySubValue:I
    invoke-static {v6}, Lcom/android/settings_ex/MultiSimSettings;->access$1600(Lcom/android/settings_ex/MultiSimSettings;)I

    move-result v6

    invoke-static {v6}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setPrioritySubscription(I)V

    goto/16 :goto_0

    .line 576
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method
