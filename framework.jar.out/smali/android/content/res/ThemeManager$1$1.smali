.class Landroid/content/res/ThemeManager$1$1;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/ThemeManager$1;->onProgress(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/content/res/ThemeManager$1;

.field final synthetic val$listener:Landroid/content/res/ThemeManager$ThemeChangeListener;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Landroid/content/res/ThemeManager$1;Landroid/content/res/ThemeManager$ThemeChangeListener;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Landroid/content/res/ThemeManager$1$1;->this$1:Landroid/content/res/ThemeManager$1;

    iput-object p2, p0, Landroid/content/res/ThemeManager$1$1;->val$listener:Landroid/content/res/ThemeManager$ThemeChangeListener;

    iput p3, p0, Landroid/content/res/ThemeManager$1$1;->val$progress:I

    iput-object p4, p0, Landroid/content/res/ThemeManager$1$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager$1$1;->val$listener:Landroid/content/res/ThemeManager$ThemeChangeListener;

    iget v2, p0, Landroid/content/res/ThemeManager$1$1;->val$progress:I

    invoke-interface {v1, v2}, Landroid/content/res/ThemeManager$ThemeChangeListener;->onProgress(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Landroid/content/res/ThemeManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update progress for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/ThemeManager$1$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
