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

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
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
    .line 35
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
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/Set;

    .line 49
    new-instance v0, Landroid/content/res/ThemeManager$1;

    invoke-direct {v0, p0}, Landroid/content/res/ThemeManager$1;-><init>(Landroid/content/res/ThemeManager;)V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

    .line 44
    iput-object p1, p0, Landroid/content/res/ThemeManager;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/ThemeManager;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/res/ThemeManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Landroid/content/res/ThemeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 84
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Client was already added "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    iget-object v2, p0, Landroid/content/res/ThemeManager;->mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

    invoke-interface {v1, v2}, Landroid/content/res/IThemeService;->requestThemeChangeUpdates(Landroid/content/res/IThemeChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public applyDefaultTheme()V
    .locals 3

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1}, Landroid/content/res/IThemeService;->applyDefaultTheme()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to access ThemeService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 3

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1}, Landroid/content/res/IThemeService;->getProgress()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 168
    :goto_0
    return v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to access ThemeService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isThemeApplying()Z
    .locals 3

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1}, Landroid/content/res/IThemeService;->isThemeApplying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 159
    :goto_0
    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to access ThemeService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClientDestroyed(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeManager;->removeClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V

    .line 118
    return-void
.end method

.method public onClientPaused(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeManager;->removeClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V

    .line 110
    return-void
.end method

.method public onClientResumed(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeManager;->addClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V

    .line 114
    return-void
.end method

.method public removeClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 98
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    iget-object v2, p0, Landroid/content/res/ThemeManager;->mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

    invoke-interface {v1, v2}, Landroid/content/res/IThemeService;->removeUpdates(Landroid/content/res/IThemeChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to remove listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestThemeChange(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 124
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/content/pm/ThemeUtils;->getSupportedComponents(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Landroid/content/res/ThemeManager;->requestThemeChange(Ljava/lang/String;Ljava/util/List;)V

    .line 126
    return-void
.end method

.method public requestThemeChange(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
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
    .line 129
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 130
    .local v1, componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    .local v0, component:Ljava/lang/String;
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    .end local v0           #component:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/res/ThemeManager;->requestThemeChange(Ljava/util/Map;)V

    .line 134
    return-void
.end method

.method public requestThemeChange(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p1}, Landroid/content/res/IThemeService;->requestThemeChange(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to access ThemeService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
