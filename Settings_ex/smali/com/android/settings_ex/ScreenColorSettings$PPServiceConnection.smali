.class Lcom/android/settings_ex/ScreenColorSettings$PPServiceConnection;
.super Ljava/lang/Object;
.source "ScreenColorSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ScreenColorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PPServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ScreenColorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/ScreenColorSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings_ex/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings_ex/ScreenColorSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/ScreenColorSettings;Lcom/android/settings_ex/ScreenColorSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ScreenColorSettings$PPServiceConnection;-><init>(Lcom/android/settings_ex/ScreenColorSettings;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings_ex/ScreenColorSettings;

    invoke-static {p2}, Lcom/android/display/IPPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/display/IPPService;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1, v2}, Lcom/android/settings_ex/ScreenColorSettings;->access$302(Lcom/android/settings_ex/ScreenColorSettings;Lcom/android/display/IPPService;)Lcom/android/display/IPPService;

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings_ex/ScreenColorSettings;

    #getter for: Lcom/android/settings_ex/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1}, Lcom/android/settings_ex/ScreenColorSettings;->access$300(Lcom/android/settings_ex/ScreenColorSettings;)Lcom/android/display/IPPService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/settings_ex/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings_ex/ScreenColorSettings;

    #getter for: Lcom/android/settings_ex/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1}, Lcom/android/settings_ex/ScreenColorSettings;->access$300(Lcom/android/settings_ex/ScreenColorSettings;)Lcom/android/display/IPPService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/display/IPPService;->startPP()Z

    .line 188
    iget-object v1, p0, Lcom/android/settings_ex/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings_ex/ScreenColorSettings;

    iget-object v2, p0, Lcom/android/settings_ex/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings_ex/ScreenColorSettings;

    #getter for: Lcom/android/settings_ex/ScreenColorSettings;->mMode:I
    invoke-static {v2}, Lcom/android/settings_ex/ScreenColorSettings;->access$000(Lcom/android/settings_ex/ScreenColorSettings;)I

    move-result v2

    #calls: Lcom/android/settings_ex/ScreenColorSettings;->setScreenColorMode(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/ScreenColorSettings;->access$100(Lcom/android/settings_ex/ScreenColorSettings;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ScreenColorSettings"

    const-string v2, "startPP exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings_ex/ScreenColorSettings;

    #getter for: Lcom/android/settings_ex/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1}, Lcom/android/settings_ex/ScreenColorSettings;->access$300(Lcom/android/settings_ex/ScreenColorSettings;)Lcom/android/display/IPPService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings_ex/ScreenColorSettings;

    #getter for: Lcom/android/settings_ex/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1}, Lcom/android/settings_ex/ScreenColorSettings;->access$300(Lcom/android/settings_ex/ScreenColorSettings;)Lcom/android/display/IPPService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/display/IPPService;->stopPP()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings_ex/ScreenColorSettings;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings_ex/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1, v2}, Lcom/android/settings_ex/ScreenColorSettings;->access$302(Lcom/android/settings_ex/ScreenColorSettings;Lcom/android/display/IPPService;)Lcom/android/display/IPPService;

    .line 205
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ScreenColorSettings"

    const-string v2, "stopPP exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
