.class Lcom/android/settings_ex/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .parameter "cfi"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #setter for: Lcom/android/settings_ex/RadioInfo;->mCfiValue:Z
    invoke-static {v0, p1}, Lcom/android/settings_ex/RadioInfo;->access$802(Lcom/android/settings_ex/RadioInfo;Z)Z

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateCallRedirect()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$900(Lcom/android/settings_ex/RadioInfo;)V

    .line 167
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, arrayCi:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/RadioInfo;->access$1000(Lcom/android/settings_ex/RadioInfo;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/RadioInfo;->access$1100(Lcom/android/settings_ex/RadioInfo;Ljava/util/List;)V

    .line 173
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/RadioInfo;->access$500(Lcom/android/settings_ex/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 155
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateDataStats2()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$400(Lcom/android/settings_ex/RadioInfo;)V

    .line 150
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$000(Lcom/android/settings_ex/RadioInfo;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateDataStats()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$100(Lcom/android/settings_ex/RadioInfo;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updatePdpList()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$200(Lcom/android/settings_ex/RadioInfo;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$300(Lcom/android/settings_ex/RadioInfo;)V

    .line 145
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #setter for: Lcom/android/settings_ex/RadioInfo;->mMwiValue:Z
    invoke-static {v0, p1}, Lcom/android/settings_ex/RadioInfo;->access$602(Lcom/android/settings_ex/RadioInfo;Z)Z

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateMessageWaiting()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$700(Lcom/android/settings_ex/RadioInfo;)V

    .line 161
    return-void
.end method
