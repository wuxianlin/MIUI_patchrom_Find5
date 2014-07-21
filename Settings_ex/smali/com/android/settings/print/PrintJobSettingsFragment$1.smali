.class Lcom/android/settings/print/PrintJobSettingsFragment$1;
.super Ljava/lang/Object;
.source "PrintJobSettingsFragment.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintJobSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintJobSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintJobSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/print/PrintJobSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 1
    .parameter "printJobId"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintJobSettingsFragment;

    #calls: Lcom/android/settings/print/PrintJobSettingsFragment;->updateUi()V
    invoke-static {v0}, Lcom/android/settings/print/PrintJobSettingsFragment;->access$000(Lcom/android/settings/print/PrintJobSettingsFragment;)V

    .line 60
    return-void
.end method
