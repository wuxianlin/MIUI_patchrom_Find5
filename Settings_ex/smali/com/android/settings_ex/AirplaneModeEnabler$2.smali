.class Lcom/android/settings_ex/AirplaneModeEnabler$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AirplaneModeEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$2;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler$2;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    #calls: Lcom/android/settings_ex/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$000(Lcom/android/settings_ex/AirplaneModeEnabler;)V

    .line 58
    return-void
.end method
