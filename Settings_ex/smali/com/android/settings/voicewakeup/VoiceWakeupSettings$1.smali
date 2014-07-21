.class Lcom/android/settings/voicewakeup/VoiceWakeupSettings$1;
.super Landroid/database/ContentObserver;
.source "VoiceWakeupSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/voicewakeup/VoiceWakeupSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/voicewakeup/VoiceWakeupSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/voicewakeup/VoiceWakeupSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/voicewakeup/VoiceWakeupSettings$1;->this$0:Lcom/android/settings/voicewakeup/VoiceWakeupSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/voicewakeup/VoiceWakeupSettings$1;->onChange(ZLandroid/net/Uri;)V

    .line 77
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/voicewakeup/VoiceWakeupSettings$1;->this$0:Lcom/android/settings/voicewakeup/VoiceWakeupSettings;

    #calls: Lcom/android/settings/voicewakeup/VoiceWakeupSettings;->refreshEnabledState()V
    invoke-static {v0}, Lcom/android/settings/voicewakeup/VoiceWakeupSettings;->access$000(Lcom/android/settings/voicewakeup/VoiceWakeupSettings;)V

    .line 82
    return-void
.end method
