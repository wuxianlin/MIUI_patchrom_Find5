.class Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "MSimSubscriptionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    .line 290
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;

    #calls: Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->updateServiceState()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->access$100(Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;)V

    .line 291
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 285
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->updateSignalStrength()V

    .line 286
    return-void
.end method
