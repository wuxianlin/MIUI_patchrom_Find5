.class Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter$2;->this$1:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    iput-object p2, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter$2;->val$row:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter$2;->this$1:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    iget-object v0, v0, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings_ex/DreamSettings;

    #getter for: Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;
    invoke-static {v0}, Lcom/android/settings_ex/DreamSettings;->access$200(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_ex/DreamBackend;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter$2;->val$row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DreamBackend$DreamInfo;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DreamBackend;->launchSettings(Lcom/android/settings_ex/DreamBackend$DreamInfo;)V

    .line 329
    return-void
.end method
