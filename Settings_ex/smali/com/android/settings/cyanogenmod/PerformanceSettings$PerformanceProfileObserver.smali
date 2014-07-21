.class Lcom/android/settings/cyanogenmod/PerformanceSettings$PerformanceProfileObserver;
.super Landroid/database/ContentObserver;
.source "PerformanceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/PerformanceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceProfileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/PerformanceSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/cyanogenmod/PerformanceSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings$PerformanceProfileObserver;->this$0:Lcom/android/settings/cyanogenmod/PerformanceSettings;

    .line 76
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings$PerformanceProfileObserver;->this$0:Lcom/android/settings/cyanogenmod/PerformanceSettings;

    #calls: Lcom/android/settings/cyanogenmod/PerformanceSettings;->setCurrentValue()V
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/PerformanceSettings;->access$000(Lcom/android/settings/cyanogenmod/PerformanceSettings;)V

    .line 82
    return-void
.end method
