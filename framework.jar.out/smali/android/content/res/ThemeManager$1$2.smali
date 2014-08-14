.class Landroid/content/res/ThemeManager$1$2;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/ThemeManager$1;->onFinish(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/content/res/ThemeManager$1;

.field final synthetic val$isSuccess:Z


# direct methods
.method constructor <init>(Landroid/content/res/ThemeManager$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Landroid/content/res/ThemeManager$1$2;->this$1:Landroid/content/res/ThemeManager$1;

    iput-boolean p2, p0, Landroid/content/res/ThemeManager$1$2;->val$isSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 71
    iget-object v3, p0, Landroid/content/res/ThemeManager$1$2;->this$1:Landroid/content/res/ThemeManager$1;

    iget-object v3, v3, Landroid/content/res/ThemeManager$1;->this$0:Landroid/content/res/ThemeManager;

    #getter for: Landroid/content/res/ThemeManager;->mListeners:Ljava/util/Set;
    invoke-static {v3}, Landroid/content/res/ThemeManager;->access$000(Landroid/content/res/ThemeManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ThemeManager$ThemeChangeListener;

    .line 73
    .local v2, listener:Landroid/content/res/ThemeManager$ThemeChangeListener;
    :try_start_0
    iget-boolean v3, p0, Landroid/content/res/ThemeManager$1$2;->val$isSuccess:Z

    invoke-interface {v2, v3}, Landroid/content/res/ThemeManager$ThemeChangeListener;->onFinish(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Landroid/content/res/ThemeManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to update theme change listener"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 78
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v2           #listener:Landroid/content/res/ThemeManager$ThemeChangeListener;
    :cond_0
    return-void
.end method
