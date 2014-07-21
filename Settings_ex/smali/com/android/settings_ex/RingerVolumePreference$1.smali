.class Lcom/android/settings_ex/RingerVolumePreference$1;
.super Landroid/os/Handler;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RingerVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings_ex/RingerVolumePreference$1;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference$1;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    #calls: Lcom/android/settings_ex/RingerVolumePreference;->updateSlidersAndMutedStates()V
    invoke-static {v0}, Lcom/android/settings_ex/RingerVolumePreference;->access$000(Lcom/android/settings_ex/RingerVolumePreference;)V

    .line 119
    return-void
.end method
