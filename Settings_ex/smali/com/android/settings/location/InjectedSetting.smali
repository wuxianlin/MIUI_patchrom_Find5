.class Lcom/android/settings/location/InjectedSetting;
.super Ljava/lang/Object;
.source "InjectedSetting.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation


# instance fields
.field public final className:Ljava/lang/String;

.field public final iconId:I

.field public final packageName:Ljava/lang/String;

.field public final settingsActivity:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "className"
    .parameter "title"
    .parameter "iconId"
    .parameter "settingsActivity"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    .line 64
    const-string v0, "className"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/location/InjectedSetting;->className:Ljava/lang/String;

    .line 65
    const-string v0, "title"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/location/InjectedSetting;->title:Ljava/lang/String;

    .line 66
    iput p4, p0, Lcom/android/settings/location/InjectedSetting;->iconId:I

    .line 67
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/location/InjectedSetting;
    .locals 6
    .parameter "packageName"
    .parameter "className"
    .parameter "title"
    .parameter "iconId"
    .parameter "settingsActivity"

    .prologue
    .line 75
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    :cond_0
    const-string v0, "SettingsInjector"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "SettingsInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal setting specification: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", settingsActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/android/settings/location/InjectedSetting;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/location/InjectedSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    if-ne p0, p1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    instance-of v3, p1, Lcom/android/settings/location/InjectedSetting;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 112
    check-cast v0, Lcom/android/settings/location/InjectedSetting;

    .line 114
    .local v0, that:Lcom/android/settings/location/InjectedSetting;
    iget-object v3, p0, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/location/InjectedSetting;->className:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/location/InjectedSetting;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/location/InjectedSetting;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/settings/location/InjectedSetting;->iconId:I

    iget v4, v0, Lcom/android/settings/location/InjectedSetting;->iconId:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/settings/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getServiceIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 122
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->className:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 123
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 124
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/settings/location/InjectedSetting;->iconId:I

    add-int v0, v1, v2

    .line 125
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 126
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InjectedSetting{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClassName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/location/InjectedSetting;->iconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settingsActivity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
