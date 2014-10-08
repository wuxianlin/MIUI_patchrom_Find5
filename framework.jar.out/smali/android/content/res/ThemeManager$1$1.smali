.class Landroid/content/res/ThemeManager$1$1;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/ThemeManager$1;->onProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/content/res/ThemeManager$1;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Landroid/content/res/ThemeManager$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Landroid/content/res/ThemeManager$1$1;->this$1:Landroid/content/res/ThemeManager$1;

    iput p2, p0, Landroid/content/res/ThemeManager$1$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v2, p0, Landroid/content/res/ThemeManager$1$1;->this$1:Landroid/content/res/ThemeManager$1;

    iget-object v2, v2, Landroid/content/res/ThemeManager$1;->this$0:Landroid/content/res/ThemeManager;

    #getter for: Landroid/content/res/ThemeManager;->mListeners:Ljava/util/Set;
    invoke-static {v2}, Landroid/content/res/ThemeManager;->access$000(Landroid/content/res/ThemeManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/res/ThemeManager$ThemeChangeListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ThemeManager$ThemeChangeListener;

    iget v3, p0, Landroid/content/res/ThemeManager$1$1;->val$progress:I

    invoke-interface {v2, v3}, Landroid/content/res/ThemeManager$ThemeChangeListener;->onProgress(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Landroid/content/res/ThemeManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to update theme change progress"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_0
    return-void
.end method
