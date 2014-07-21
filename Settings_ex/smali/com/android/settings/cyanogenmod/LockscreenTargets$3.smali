.class Lcom/android/settings/cyanogenmod/LockscreenTargets$3;
.super Ljava/lang/Object;
.source "LockscreenTargets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/LockscreenTargets;->createShortcutDialogView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$600(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTemporaryImage:Ljava/io/File;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$900(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 465
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTemporaryImage:Ljava/io/File;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$900(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 466
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIconPicker:Lcom/android/settings/cyanogenmod/IconPicker;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$1000(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Lcom/android/settings/cyanogenmod/IconPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTemporaryImage:Ljava/io/File;
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$900(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/cyanogenmod/IconPicker;->pickIcon(ILjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Ljava/io/IOException;
    const-string v1, "LockscreenTargets"

    const-string v2, "Could not create temporary icon"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
