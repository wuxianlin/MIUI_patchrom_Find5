.class public Lcom/android/settings/HostnamePreference;
.super Landroid/preference/EditTextPreference;
.source "HostnamePreference.java"


# instance fields
.field private final DEFAULT_HOSTNAME:Ljava/lang/String;

.field mHostnameInputFilter:Landroid/text/InputFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/HostnamePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/HostnamePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v1, Lcom/android/settings/HostnamePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/HostnamePreference$1;-><init>(Lcom/android/settings/HostnamePreference;)V

    iput-object v1, p0, Lcom/android/settings/HostnamePreference;->mHostnameInputFilter:Landroid/text/InputFilter;

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/HostnamePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 40
    const-string v1, "android-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/HostnamePreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/HostnamePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/HostnamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/HostnamePreference;->mHostnameInputFilter:Landroid/text/InputFilter;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/HostnamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 48
    return-void

    .line 42
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "net.hostname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 60
    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/HostnamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, hostname:Ljava/lang/String;
    const-string v1, "(?:\\.|-)+$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "^(?:\\.|-)+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/settings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v0, p0, Lcom/android/settings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    .line 77
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/HostnamePreference;->setText(Ljava/lang/String;)V

    .line 79
    .end local v0           #hostname:Ljava/lang/String;
    :cond_1
    return-void

    .line 74
    .restart local v0       #hostname:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/HostnamePreference;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/settings/HostnamePreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, hostname:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/HostnamePreference;->persistHostname(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public persistHostname(Ljava/lang/String;)V
    .locals 2
    .parameter "hostname"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings/HostnamePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_hostname"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    const-string v0, "HostnamePreference"

    const-string v1, "tried to set null hostname, request ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 87
    const-string v0, "HostnamePreference"

    const-string v1, "setting empty hostname"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_1
    const-string v0, "net.hostname"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings/HostnamePreference;->persistHostname(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/HostnamePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "HostnamePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hostname has been set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
