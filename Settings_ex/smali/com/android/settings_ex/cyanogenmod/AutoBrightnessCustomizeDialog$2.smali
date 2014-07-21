.class Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$2;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$2;->this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 130
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 131
    .local v0, pm:Landroid/widget/PopupMenu;
    const v1, 0x7f100002

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 132
    new-instance v1, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$2$1;-><init>(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 146
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 147
    return-void
.end method
