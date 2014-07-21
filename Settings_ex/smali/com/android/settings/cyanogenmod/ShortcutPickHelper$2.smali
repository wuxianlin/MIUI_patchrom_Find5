.class Lcom/android/settings/cyanogenmod/ShortcutPickHelper$2;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->processShortcut(Landroid/content/Intent;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$2;->this$0:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$2;->this$0:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    #getter for: Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->access$200(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    return-void
.end method
