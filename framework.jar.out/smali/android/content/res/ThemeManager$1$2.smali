.class Landroid/content/res/ThemeManager$1$2;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/ThemeManager$1;->onFinish(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/content/res/ThemeManager$1;

.field final synthetic val$isSuccess:Z

.field final synthetic val$listener:Landroid/content/res/ThemeManager$ThemeChangeListener;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/res/ThemeManager$1;Landroid/content/res/ThemeManager$ThemeChangeListener;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Landroid/content/res/ThemeManager$1$2;->this$1:Landroid/content/res/ThemeManager$1;

    iput-object p2, p0, Landroid/content/res/ThemeManager$1$2;->val$listener:Landroid/content/res/ThemeManager$ThemeChangeListener;

    iput-boolean p3, p0, Landroid/content/res/ThemeManager$1$2;->val$isSuccess:Z

    iput-object p4, p0, Landroid/content/res/ThemeManager$1$2;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager$1$2;->val$listener:Landroid/content/res/ThemeManager$ThemeChangeListener;

    iget-boolean v2, p0, Landroid/content/res/ThemeManager$1$2;->val$isSuccess:Z

    invoke-interface {v1, v2}, Landroid/content/res/ThemeManager$ThemeChangeListener;->onFinish(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Landroid/content/res/ThemeManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update listener for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/ThemeManager$1$2;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
