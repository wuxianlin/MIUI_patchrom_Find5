.class Lcom/android/server/ThemeService$ThemeWorkerHandler;
.super Landroid/os/Handler;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeWorkerHandler"
.end annotation


# static fields
.field private static final MESSAGE_APPLY_DEFAULT_THEME:I = 0x2

.field private static final MESSAGE_CHANGE_THEME:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/ThemeService;


# direct methods
.method public constructor <init>(Lcom/android/server/ThemeService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    .line 111
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 116
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 125
    invoke-static {}, Lcom/android/server/ThemeService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 119
    .local v0, componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #calls: Lcom/android/server/ThemeService;->doApplyTheme(Ljava/util/Map;)V
    invoke-static {v1, v0}, Lcom/android/server/ThemeService;->access$000(Lcom/android/server/ThemeService;Ljava/util/Map;)V

    goto :goto_0

    .line 122
    .end local v0           #componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #calls: Lcom/android/server/ThemeService;->doApplyDefaultTheme()V
    invoke-static {v1}, Lcom/android/server/ThemeService;->access$100(Lcom/android/server/ThemeService;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
