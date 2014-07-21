.class Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup$1;
.super Ljava/lang/Object;
.source "AutoBrightnessSetup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup$1;->this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup$1;->this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->showCustomizeDialog(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->access$000(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;Landroid/os/Bundle;)V

    .line 80
    return-void
.end method
