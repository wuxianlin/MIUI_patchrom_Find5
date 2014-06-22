.class Landroid/content/res/ThemeManager$1;
.super Landroid/content/res/IThemeChangeListener$Stub;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/ThemeManager;


# direct methods
.method constructor <init>(Landroid/content/res/ThemeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Landroid/content/res/ThemeManager$1;->this$0:Landroid/content/res/ThemeManager;

    invoke-direct {p0}, Landroid/content/res/IThemeChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ZLjava/lang/String;)V
    .locals 3
    .parameter "isSuccess"
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v1, p0, Landroid/content/res/ThemeManager$1;->this$0:Landroid/content/res/ThemeManager;

    #getter for: Landroid/content/res/ThemeManager;->mListeners:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/content/res/ThemeManager;->access$000(Landroid/content/res/ThemeManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ThemeManager$ThemeChangeListener;

    .line 66
    .local v0, listener:Landroid/content/res/ThemeManager$ThemeChangeListener;
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Landroid/content/res/ThemeManager$1;->this$0:Landroid/content/res/ThemeManager;

    #getter for: Landroid/content/res/ThemeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/content/res/ThemeManager;->access$200(Landroid/content/res/ThemeManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/content/res/ThemeManager$1$2;

    invoke-direct {v2, p0, v0, p1, p2}, Landroid/content/res/ThemeManager$1$2;-><init>(Landroid/content/res/ThemeManager$1;Landroid/content/res/ThemeManager$ThemeChangeListener;ZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    :cond_0
    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 3
    .parameter "progress"
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v1, p0, Landroid/content/res/ThemeManager$1;->this$0:Landroid/content/res/ThemeManager;

    #getter for: Landroid/content/res/ThemeManager;->mListeners:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/content/res/ThemeManager;->access$000(Landroid/content/res/ThemeManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ThemeManager$ThemeChangeListener;

    .line 49
    .local v0, listener:Landroid/content/res/ThemeManager$ThemeChangeListener;
    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Landroid/content/res/ThemeManager$1;->this$0:Landroid/content/res/ThemeManager;

    #getter for: Landroid/content/res/ThemeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/content/res/ThemeManager;->access$200(Landroid/content/res/ThemeManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/content/res/ThemeManager$1$1;

    invoke-direct {v2, p0, v0, p1, p2}, Landroid/content/res/ThemeManager$1$1;-><init>(Landroid/content/res/ThemeManager$1;Landroid/content/res/ThemeManager$ThemeChangeListener;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :cond_0
    return-void
.end method
