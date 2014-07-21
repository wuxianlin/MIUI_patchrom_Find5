.class Lcom/android/settings_ex/cyanogenmod/NavRing$1;
.super Ljava/lang/Object;
.source "NavRing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cyanogenmod/NavRing;->resetAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/NavRing;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cyanogenmod/NavRing;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/NavRing$1;->this$0:Lcom/android/settings_ex/cyanogenmod/NavRing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/NavRing$1;->this$0:Lcom/android/settings_ex/cyanogenmod/NavRing;

    invoke-virtual {v0}, Lcom/android/settings_ex/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->resetActionsToDefaults(Landroid/content/Context;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/NavRing$1;->this$0:Lcom/android/settings_ex/cyanogenmod/NavRing;

    #calls: Lcom/android/settings_ex/cyanogenmod/NavRing;->updateDrawables()V
    invoke-static {v0}, Lcom/android/settings_ex/cyanogenmod/NavRing;->access$100(Lcom/android/settings_ex/cyanogenmod/NavRing;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/NavRing$1;->this$0:Lcom/android/settings_ex/cyanogenmod/NavRing;

    invoke-virtual {v0}, Lcom/android/settings_ex/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0802f7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    return-void
.end method
