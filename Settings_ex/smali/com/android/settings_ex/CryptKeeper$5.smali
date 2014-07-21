.class Lcom/android/settings_ex/CryptKeeper$5;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/CryptKeeper;->updateEmergencyCallButtonState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$5;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$5;->this$0:Lcom/android/settings_ex/CryptKeeper;

    #calls: Lcom/android/settings_ex/CryptKeeper;->takeEmergencyCallAction()V
    invoke-static {v0}, Lcom/android/settings_ex/CryptKeeper;->access$1200(Lcom/android/settings_ex/CryptKeeper;)V

    .line 711
    return-void
.end method
