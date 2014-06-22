.class Lcom/android/server/ServerThread$AdbPortObserver;
.super Landroid/database/ContentObserver;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbPortObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;


# direct methods
.method public constructor <init>(Lcom/android/server/ServerThread;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/ServerThread$AdbPortObserver;->this$0:Lcom/android/server/ServerThread;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 114
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/server/ServerThread$AdbPortObserver;->this$0:Lcom/android/server/ServerThread;

    iget-object v1, v1, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "adb_port"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, adbPort:I
    const-string v1, "service.adb.tcp.port"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method
