.class public Lcom/android/settings_ex/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/CryptKeeper$ValidationTask;,
        Lcom/android/settings_ex/CryptKeeper$DecryptTask;,
        Lcom/android/settings_ex/CryptKeeper$FadeToBlack;,
        Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCooldown:I

.field private mEncryptionGoneBad:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreBack:Z

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mTryAgain:Z

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    iput-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mIgnoreBack:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mTryAgain:Z

    .line 118
    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    .line 219
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeper$1;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/CryptKeeper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings_ex/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeper;->mTryAgain:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/CryptKeeper;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/settings_ex/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->notifyUser()V

    return-void
.end method

.method private cooldown()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 492
    const v2, 0x7f0d0025

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 494
    .local v0, status:Landroid/widget/TextView;
    iget v2, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:I

    if-gtz v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 497
    invoke-direct {p0, v3}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 498
    const v2, 0x7f080a92

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 507
    :goto_0
    return-void

    .line 500
    :cond_0
    const v2, 0x7f08053d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 501
    .local v1, template:Ljava/lang/CharSequence;
    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget v2, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:I

    .line 504
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private delayAudioNotification()V
    .locals 1

    .prologue
    .line 767
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    .line 768
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .prologue
    .line 421
    const-string v1, "CryptKeeper"

    const-string v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 423
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 425
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 426
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 429
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f0d0062

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 431
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 434
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->updateProgress()V

    .line 435
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 631
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 632
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 633
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 635
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 591
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 594
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 596
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 598
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 624
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 599
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 602
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 603
    add-int/lit8 v2, v2, 0x1

    .line 604
    goto :goto_0

    .line 607
    :cond_2
    const/4 v0, 0x0

    .line 608
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 609
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 613
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 618
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 619
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 620
    goto :goto_0

    .line 624
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings_ex.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .parameter "viewType"

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings_ex.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 757
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 758
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 760
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 761
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 265
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_1

    .line 266
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    .line 280
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 282
    return-void

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/high16 v3, 0x42c8

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private passwordEntryInit()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 523
    const v5, 0x7f0d005f

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 524
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 525
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 527
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 528
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 529
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 532
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 533
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 534
    const v5, 0x7f0d005c

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 535
    .local v0, emergencyCall:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 536
    const-string v5, "CryptKeeper"

    const-string v6, "Removing the emergency Call button"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 541
    .end local v0           #emergencyCall:Landroid/view/View;
    :cond_0
    const v5, 0x7f0d0060

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 542
    .local v1, imeSwitcher:Landroid/view/View;
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 544
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    invoke-direct {p0, v2, v7}, Lcom/android/settings_ex/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 545
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 546
    new-instance v5, Lcom/android/settings_ex/CryptKeeper$3;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/CryptKeeper$3;-><init>(Lcom/android/settings_ex/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_2

    .line 558
    const-string v5, "CryptKeeper"

    const-string v6, "Acquiring wakelock."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 560
    .local v3, pm:Landroid/os/PowerManager;
    if-eqz v3, :cond_2

    .line 561
    const/16 v5, 0x1a

    const-string v6, "CryptKeeper"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 562
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 567
    .end local v3           #pm:Landroid/os/PowerManager;
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings_ex/CryptKeeper$4;

    invoke-direct {v6, p0, v2}, Lcom/android/settings_ex/CryptKeeper$4;-><init>(Lcom/android/settings_ex/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 573
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 575
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 576
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 579
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 580
    return-void
.end method

.method private resumeCall()V
    .locals 5

    .prologue
    .line 746
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 747
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 749
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling ITelephony service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 681
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 683
    .local v1, isLteDevice:Z
    :goto_0
    if-nez v1, :cond_0

    .line 684
    const-string v3, "CryptKeeper"

    const-string v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 686
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 688
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 690
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 681
    .end local v1           #isLteDevice:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final setBackFunctionality(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    .line 514
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mIgnoreBack:Z

    .line 515
    if-eqz p1, :cond_1

    .line 516
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x337

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 520
    :goto_1
    return-void

    .line 514
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x377

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1
.end method

.method private setupUi()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const v5, 0x7f04002a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 355
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v2, :cond_0

    const-string v2, "error"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 357
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->showFactoryReset()V

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 361
    :cond_2
    const-string v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, progress:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 363
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 364
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 365
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationComplete:Z

    if-nez v2, :cond_5

    const-string v2, "password"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 366
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings_ex/CryptKeeper;->mTryAgain:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:I

    if-lez v1, :cond_7

    .line 367
    :cond_6
    iput v3, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:I

    .line 368
    iput-boolean v3, p0, Lcom/android/settings_ex/CryptKeeper;->mTryAgain:Z

    .line 369
    invoke-direct {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 371
    :cond_7
    const v1, 0x7f040028

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 372
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->passwordEntryInit()V

    goto :goto_0

    .line 373
    :cond_8
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationRequested:Z

    if-nez v2, :cond_1

    .line 375
    new-instance v2, Lcom/android/settings_ex/CryptKeeper$ValidationTask;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 376
    iput-boolean v4, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 439
    const v2, 0x7f0d005d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 442
    const v2, 0x7f0d0063

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 443
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 444
    new-instance v2, Lcom/android/settings_ex/CryptKeeper$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/CryptKeeper$2;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    const v2, 0x7f0d0039

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08053f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 454
    const v2, 0x7f0d0025

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080540

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 456
    const v2, 0x7f0d0064

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 458
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 461
    :cond_0
    return-void
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 738
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 739
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->resumeCall()V

    .line 743
    :goto_0
    return-void

    .line 741
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 699
    const v5, 0x7f0d005c

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 701
    .local v0, emergencyCall:Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 731
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 705
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 706
    new-instance v5, Lcom/android/settings_ex/CryptKeeper$5;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/CryptKeeper$5;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 720
    .local v2, newState:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 722
    const v4, 0x7f080b0c

    .line 723
    .local v4, textId:I
    const v3, 0x7f020130

    .line 724
    .local v3, phoneCallIcon:I
    const v5, 0x7f020130

    invoke-virtual {v0, v5, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 730
    .end local v3           #phoneCallIcon:I
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 714
    .end local v2           #newState:I
    .end local v4           #textId:I
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 726
    .restart local v2       #newState:I
    :cond_2
    const v4, 0x7f080b0b

    .line 727
    .restart local v4       #textId:I
    const v1, 0x7f020071

    .line 728
    .local v1, emergencyIcon:I
    const v5, 0x7f020071

    invoke-virtual {v0, v5, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private updateProgress()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 464
    const-string v5, "vold.encrypt_progress"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, state:Ljava/lang/String;
    const-string v5, "error_partially_encrypted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->showFactoryReset()V

    .line 488
    :goto_0
    return-void

    .line 471
    :cond_0
    const/4 v1, 0x0

    .line 474
    .local v1, progress:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    const/16 v1, 0x32

    .line 479
    :goto_1
    const v5, 0x7f08053c

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 480
    .local v3, status:Ljava/lang/CharSequence;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encryption progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const v5, 0x7f0d0025

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 482
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 483
    new-array v5, v8, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 474
    .end local v3           #status:Ljava/lang/CharSequence;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 794
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 784
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mIgnoreBack:Z

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 301
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->isDebugView()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 305
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 315
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->finish()V

    .line 337
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 320
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 322
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 323
    instance-of v1, v0, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v1, :cond_2

    .line 324
    check-cast v0, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;

    .line 325
    iget-object v1, v0, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 326
    iget-object v0, v0, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;->statusbar:Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 327
    const-string v0, "CryptKeeper"

    const-string v1, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    if-nez v0, :cond_3

    .line 333
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x337

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 405
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 407
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 412
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 640
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 642
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 662
    .end local v0           #password:Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 649
    .restart local v0       #password:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 654
    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 655
    iput-boolean v1, p0, Lcom/android/settings_ex/CryptKeeper;->mTryAgain:Z

    .line 657
    const-string v3, "CryptKeeper"

    const-string v4, "Attempting to send command to decrypt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v3, Lcom/android/settings_ex/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 660
    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->delayAudioNotification()V

    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 395
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;Landroid/app/StatusBarManager;)V

    .line 397
    .local v0, state:Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iput-object v3, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 399
    iput-object v3, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 400
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 346
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 347
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->setupUi()V

    .line 348
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 382
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->delayAudioNotification()V

    .line 790
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->delayAudioNotification()V

    .line 779
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 799
    iget-boolean v1, p0, Lcom/android/settings_ex/CryptKeeper;->mTryAgain:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:I

    if-lez v1, :cond_1

    .line 800
    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 801
    .local v0, isEnableBackKey:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 803
    .end local v0           #isEnableBackKey:Z
    :cond_1
    return-void

    .line 800
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
