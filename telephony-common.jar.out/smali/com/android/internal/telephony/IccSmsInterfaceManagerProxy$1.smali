.class Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "IccSmsInterfaceManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;->getResultCode()I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 80
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;->getResultData()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, destAddr:Ljava/lang/String;
    const-string v1, "scAddr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, scAddr:Ljava/lang/String;
    const-string v1, "callingPackage"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, callingPackage:Ljava/lang/String;
    const-string v1, "parts"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 51
    .local v5, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "sentIntents"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 53
    .local v6, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v1, "deliveryIntents"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 56
    .local v7, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v1, "callingUid"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\\"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "callingUid"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    :cond_1
    const-string v1, "multipart"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 66
    :cond_2
    const/4 v13, 0x0

    .line 67
    .local v13, sentIntent:Landroid/app/PendingIntent;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 70
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const/4 v14, 0x0

    .line 71
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 74
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v12, 0x0

    .line 75
    .local v12, text:Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #text:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 78
    .restart local v12       #text:Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v8

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method
