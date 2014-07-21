.class Lcom/android/settings_ex/RadioInfo$11;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$11;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 897
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 898
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$11;->this$0:Lcom/android/settings_ex/RadioInfo;

    const-class v2, Lcom/android/settings_ex/BandMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 899
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$11;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 900
    const/4 v0, 0x1

    return v0
.end method
