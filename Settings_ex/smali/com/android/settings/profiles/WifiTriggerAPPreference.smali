.class public Lcom/android/settings/profiles/WifiTriggerAPPreference;
.super Lcom/android/settings/profiles/AbstractTriggerPreference;
.source "WifiTriggerAPPreference.java"


# instance fields
.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mSSID:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/profiles/AbstractTriggerPreference;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p2}, Lcom/android/settings/profiles/WifiTriggerAPPreference;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 30
    iget-object v0, p0, Lcom/android/settings/profiles/WifiTriggerAPPreference;->mSSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/WifiTriggerAPPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "ssid"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/profiles/AbstractTriggerPreference;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/android/settings/profiles/WifiTriggerAPPreference;->mSSID:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/android/settings/profiles/WifiTriggerAPPreference;->mSSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/WifiTriggerAPPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 40
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/profiles/WifiTriggerAPPreference;->mSSID:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/settings/profiles/WifiTriggerAPPreference;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 42
    return-void

    .line 40
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/profiles/WifiTriggerAPPreference;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 50
    .local v0, length:I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 51
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 55
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/profiles/WifiTriggerAPPreference;->mSSID:Ljava/lang/String;

    return-object v0
.end method
