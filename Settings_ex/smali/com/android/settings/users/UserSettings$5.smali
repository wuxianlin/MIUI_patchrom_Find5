.class Lcom/android/settings/users/UserSettings$5;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field final synthetic val$longMessageDisplayed:Z

.field final synthetic val$preferences:Landroid/content/SharedPreferences;

.field final synthetic val$userType:I


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$5;->this$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$5;->val$userType:I

    iput-boolean p3, p0, Lcom/android/settings/users/UserSettings$5;->val$longMessageDisplayed:Z

    iput-object p4, p0, Lcom/android/settings/users/UserSettings$5;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$5;->this$0:Lcom/android/settings/users/UserSettings;

    iget v1, p0, Lcom/android/settings/users/UserSettings$5;->val$userType:I

    #calls: Lcom/android/settings/users/UserSettings;->addUserNow(I)V
    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->access$1100(Lcom/android/settings/users/UserSettings;I)V

    .line 464
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings$5;->val$longMessageDisplayed:Z

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$5;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_add_user_long_message_displayed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 468
    :cond_0
    return-void
.end method
