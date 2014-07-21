.class Lcom/android/settings/applications/AppOpsSummary$1;
.super Ljava/lang/Object;
.source "AppOpsSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AppOpsSummary;->resetCountersConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppOpsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppOpsSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsSummary$1;->this$0:Lcom/android/settings/applications/AppOpsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary$1;->this$0:Lcom/android/settings/applications/AppOpsSummary;

    #calls: Lcom/android/settings/applications/AppOpsSummary;->resetCounters()V
    invoke-static {v0}, Lcom/android/settings/applications/AppOpsSummary;->access$000(Lcom/android/settings/applications/AppOpsSummary;)V

    .line 193
    return-void
.end method
