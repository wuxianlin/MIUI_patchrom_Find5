.class Lcom/android/settings/tts/TextToSpeechSettings$3;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TextToSpeechSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$3;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 0
    .parameter "utteranceId"

    .prologue
    .line 192
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .parameter "utteranceId"

    .prologue
    .line 196
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Error while trying to synthesize sample text"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .parameter "utteranceId"

    .prologue
    .line 189
    return-void
.end method
