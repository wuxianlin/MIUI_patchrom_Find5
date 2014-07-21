.class Lcom/android/settings_ex/deviceinfo/UsageBarPreference$1$1;
.super Ljava/lang/Object;
.source "UsageBarPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/UsageBarPreference$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/UsageBarPreference$1;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsageBarPreference$1;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference$1$1;->this$1:Lcom/android/settings_ex/deviceinfo/UsageBarPreference$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference$1$1;->this$1:Lcom/android/settings_ex/deviceinfo/UsageBarPreference$1;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mOnRequestMediaRescanListener:Lcom/android/settings_ex/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->access$000(Lcom/android/settings_ex/deviceinfo/UsageBarPreference;)Lcom/android/settings_ex/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;->onRequestMediaRescan()V

    .line 117
    return-void
.end method
