.class Lcom/android/settings/users/RestrictedProfileSettings$1;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/RestrictedProfileSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/RestrictedProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/RestrictedProfileSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings/users/RestrictedProfileSettings$1;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings$1;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    #calls: Lcom/android/settings/users/RestrictedProfileSettings;->clearEditUserInfoDialog()V
    invoke-static {v0}, Lcom/android/settings/users/RestrictedProfileSettings;->access$000(Lcom/android/settings/users/RestrictedProfileSettings;)V

    .line 248
    return-void
.end method
