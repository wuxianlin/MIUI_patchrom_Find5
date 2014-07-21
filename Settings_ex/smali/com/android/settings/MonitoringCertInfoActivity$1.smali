.class Lcom/android/settings/MonitoringCertInfoActivity$1;
.super Ljava/lang/Object;
.source "MonitoringCertInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MonitoringCertInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MonitoringCertInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/MonitoringCertInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/MonitoringCertInfoActivity$1;->this$0:Lcom/android/settings/MonitoringCertInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/MonitoringCertInfoActivity$1;->this$0:Lcom/android/settings/MonitoringCertInfoActivity;

    invoke-virtual {v0}, Lcom/android/settings/MonitoringCertInfoActivity;->finish()V

    .line 76
    return-void
.end method
