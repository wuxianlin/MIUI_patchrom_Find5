.class Lcom/android/settings_ex/DreamSettings$5;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DreamSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings$5;->this$0:Lcom/android/settings_ex/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$5;->this$0:Lcom/android/settings_ex/DreamSettings;

    #getter for: Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;
    invoke-static {v0}, Lcom/android/settings_ex/DreamSettings;->access$200(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_ex/DreamBackend;

    move-result-object v3

    if-eqz p2, :cond_0

    if-ne p2, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/DreamBackend;->setActivatedOnDock(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$5;->this$0:Lcom/android/settings_ex/DreamSettings;

    #getter for: Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;
    invoke-static {v0}, Lcom/android/settings_ex/DreamSettings;->access$200(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_ex/DreamBackend;

    move-result-object v0

    if-eq p2, v2, :cond_1

    if-ne p2, v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DreamBackend;->setActivatedOnSleep(Z)V

    .line 209
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 210
    return-void

    :cond_3
    move v0, v1

    .line 207
    goto :goto_0
.end method
