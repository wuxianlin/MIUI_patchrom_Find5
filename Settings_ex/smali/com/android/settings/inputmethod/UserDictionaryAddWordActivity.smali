.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;
.super Landroid/app/Activity;
.source "UserDictionaryAddWordActivity.java"


# instance fields
.field private mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private reportBackToCaller(ILandroid/os/Bundle;)V
    .locals 6
    .parameter "resultCode"
    .parameter "result"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 77
    .local v3, senderIntent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "listener"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, listener:Ljava/lang/Object;
    instance-of v4, v0, Landroid/os/Messenger;

    if-nez v4, :cond_0

    .line 89
    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    .line 79
    check-cast v2, Landroid/os/Messenger;

    .line 81
    .local v2, messenger:Landroid/os/Messenger;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 82
    .local v1, m:Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    iput p1, v1, Landroid/os/Message;->what:I

    .line 85
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 92
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->reportBackToCaller(ILandroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    .line 94
    return-void
.end method

.method public onClickConfirm(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, parameters:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v2, p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    .line 99
    .local v1, resultCode:I
    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->reportBackToCaller(ILandroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v4, 0x7f0400d9

    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 45
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.android.settings.USER_DICTIONARY_EDIT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    const/4 v3, 0x0

    .line 59
    .local v3, mode:I
    :goto_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 60
    .local v1, args:Landroid/os/Bundle;
    const-string v4, "mode"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 67
    :cond_0
    new-instance v4, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    .line 68
    return-void

    .line 49
    .end local v1           #args:Landroid/os/Bundle;
    .end local v3           #mode:I
    :cond_1
    const-string v4, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    const/4 v3, 0x1

    .restart local v3       #mode:I
    goto :goto_0

    .line 53
    .end local v3           #mode:I
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->saveStateIntoBundle(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method
