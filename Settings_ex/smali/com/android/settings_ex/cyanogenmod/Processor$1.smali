.class Lcom/android/settings_ex/cyanogenmod/Processor$1;
.super Landroid/os/Handler;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/cyanogenmod/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/Processor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cyanogenmod/Processor;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/Processor$1;->this$0:Lcom/android/settings_ex/cyanogenmod/Processor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/Processor$1;->this$0:Lcom/android/settings_ex/cyanogenmod/Processor;

    #getter for: Lcom/android/settings_ex/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/cyanogenmod/Processor;->access$400(Lcom/android/settings_ex/cyanogenmod/Processor;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/Processor$1;->this$0:Lcom/android/settings_ex/cyanogenmod/Processor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/settings_ex/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/settings_ex/cyanogenmod/Processor;->access$300(Lcom/android/settings_ex/cyanogenmod/Processor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method
