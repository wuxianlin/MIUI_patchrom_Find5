.class Lcom/android/settings/profiles/AppGroupConfig$4;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/AppGroupConfig;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/AppGroupConfig;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/AppGroupConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/settings/profiles/AppGroupConfig$4;->this$0:Lcom/android/settings/profiles/AppGroupConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig$4;->this$0:Lcom/android/settings/profiles/AppGroupConfig;

    #getter for: Lcom/android/settings/profiles/AppGroupConfig;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v0}, Lcom/android/settings/profiles/AppGroupConfig;->access$300(Lcom/android/settings/profiles/AppGroupConfig;)Landroid/app/ProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig$4;->this$0:Lcom/android/settings/profiles/AppGroupConfig;

    #getter for: Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;
    invoke-static {v1}, Lcom/android/settings/profiles/AppGroupConfig;->access$000(Lcom/android/settings/profiles/AppGroupConfig;)Landroid/app/NotificationGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->removeNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig$4;->this$0:Lcom/android/settings/profiles/AppGroupConfig;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;
    invoke-static {v0, v1}, Lcom/android/settings/profiles/AppGroupConfig;->access$002(Lcom/android/settings/profiles/AppGroupConfig;Landroid/app/NotificationGroup;)Landroid/app/NotificationGroup;

    .line 298
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig$4;->this$0:Lcom/android/settings/profiles/AppGroupConfig;

    invoke-virtual {v0}, Lcom/android/settings/profiles/AppGroupConfig;->finish()V

    .line 299
    return-void
.end method
