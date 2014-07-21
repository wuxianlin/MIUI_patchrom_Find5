.class public Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;
.super Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;
.source "DolbyMobileSystem.java"


# static fields
.field private static _categoryPresets:[[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

.field private static _customPresets:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

.field private static _presets:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;


# instance fields
.field private _currentPreset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

.field private _lastCategoryPreset:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x4

    .line 51
    sput-object v7, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_presets:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    .line 56
    new-array v6, v9, [[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    sput-object v6, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_categoryPresets:[[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    .line 61
    sput-object v7, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_customPresets:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    .line 78
    invoke-static {}, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->GetPresets()Ljava/util/Vector;

    move-result-object v5

    .line 82
    .local v5, presets:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;>;"
    invoke-static {}, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->GetInitialCustomPresets()Ljava/util/Vector;

    move-result-object v2

    .line 84
    .local v2, customPresets:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    sput-object v6, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_customPresets:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    .line 86
    invoke-virtual {v5, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 88
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v9}, Ljava/util/Vector;-><init>(I)V

    .line 89
    .local v1, categoryPresets:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Vector<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;>;>;"
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    if-ge v0, v9, :cond_0

    .line 90
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    .line 92
    .local v4, preset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;
    invoke-virtual {v4}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->getCategory()Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->toInt()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    .end local v4           #preset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_2

    .line 95
    sget-object v8, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_categoryPresets:[[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v7, v7, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    aput-object v6, v8, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    sput-object v6, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_presets:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    .line 103
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v9, :cond_3

    .line 104
    const-string v6, "DolbyMobileSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->FromInt(I)Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " presets: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 106
    :cond_3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .parameter "audioSessionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 130
    invoke-direct {p0, p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;-><init>(I)V

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_currentPreset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    .line 70
    new-array v1, v5, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    iput-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_lastCategoryPreset:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    .line 131
    const-string v1, "DolbyMobileSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DolbyMobileSystem("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_presets:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 135
    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_presets:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    aget-object v1, v1, v4

    iput-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_currentPreset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    .line 136
    :cond_0
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 138
    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_categoryPresets:[[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    aget-object v1, v1, v0

    array-length v1, v1

    if-lez v1, :cond_1

    .line 139
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_lastCategoryPreset:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    sget-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_categoryPresets:[[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    aput-object v2, v1, v0

    .line 136
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_2
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_currentPreset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    if-eqz v1, :cond_3

    .line 143
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_currentPreset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    invoke-virtual {p0, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->applyPreset(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;)V

    .line 148
    :cond_3
    invoke-static {}, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->GetSpeakerCoefficients48000()[B

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->setSpeakerCoeffs(I[B)I

    .line 149
    const/4 v1, 0x1

    invoke-static {}, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->GetSpeakerCoefficients44100()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->setSpeakerCoeffs(I[B)I

    .line 152
    return-void
.end method


# virtual methods
.method public applyPreset(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;)V
    .locals 3
    .parameter "preset"

    .prologue
    .line 199
    const-string v0, "DolbyMobileSystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyPreset: Applying preset \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->setAllSettings(Ljava/util/Map;)I

    .line 203
    iput-object p1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_currentPreset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    .line 204
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_lastCategoryPreset:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->getCategory()Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->toInt()I

    move-result v1

    aput-object p1, v0, v1

    .line 205
    return-void
.end method

.method public getCurrentPreset()Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_currentPreset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    return-object v0
.end method

.method public getCustomPresets()[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_customPresets:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    invoke-virtual {v0}, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    return-object v0
.end method

.method public getCustomPresets(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;
    .locals 2
    .parameter "category"

    .prologue
    .line 185
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_categoryPresets:[[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->toInt()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    return-object v0
.end method

.method public getLastPreset(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;
    .locals 2
    .parameter "category"

    .prologue
    .line 231
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_lastCategoryPreset:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->toInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPresets()[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_presets:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    invoke-virtual {v0}, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    return-object v0
.end method

.method public getPresets(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;
    .locals 2
    .parameter "category"

    .prologue
    .line 168
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;->_categoryPresets:[[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->toInt()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    return-object v0
.end method

.method public storeCustomPresets()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method
