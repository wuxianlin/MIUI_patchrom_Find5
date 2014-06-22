.class public Landroid/content/res/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ThemeManager$ThemeChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/ThemeManager$ThemeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/content/res/IThemeService;

.field private final mThemeChangeListener:Landroid/content/res/IThemeChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Landroid/content/res/ThemeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/IThemeService;)V
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/HashMap;

    .line 45
    new-instance v0, Landroid/content/res/ThemeManager$1;

    invoke-direct {v0, p0}, Landroid/content/res/ThemeManager$1;-><init>(Landroid/content/res/ThemeManager;)V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

    .line 40
    iput-object p1, p0, Landroid/content/res/ThemeManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/ThemeManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/res/ThemeManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/content/res/ThemeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addClient(Ljava/lang/String;Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 3
    .parameter "pkgName"
    .parameter "listener"

    .prologue
    .line 82
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Client was already added "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    iget-object v2, p0, Landroid/content/res/ThemeManager;->mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

    invoke-interface {v1, v2}, Landroid/content/res/IThemeService;->requestThemeChangeUpdates(Landroid/content/res/IThemeChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public applyDefaultTheme()V
    .locals 3

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1}, Landroid/content/res/IThemeService;->applyDefaultTheme()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to access ThemeService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProgress(Ljava/lang/String;)I
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p1}, Landroid/content/res/IThemeService;->getProgress(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to access ThemeService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isThemeApplying(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p1}, Landroid/content/res/IThemeService;->isThemeApplying(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    :goto_0
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to access ThemeService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClientDestroyed(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeManager;->removeClient(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onClientPaused(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeManager;->removeClient(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onClientResumed(Ljava/lang/String;Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .parameter "pkgName"
    .parameter "listener"

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ThemeManager;->addClient(Ljava/lang/String;Landroid/content/res/ThemeManager$ThemeChangeListener;)V

    .line 112
    return-void
.end method

.method public removeClient(Ljava/lang/String;)V
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 96
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 99
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    iget-object v2, p0, Landroid/content/res/ThemeManager;->mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

    invoke-interface {v1, v2}, Landroid/content/res/IThemeService;->removeUpdates(Landroid/content/res/IThemeChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to remove listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestThemeChange(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "pkgName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p1, p2}, Landroid/content/res/IThemeService;->requestThemeChange(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to access ThemeService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
