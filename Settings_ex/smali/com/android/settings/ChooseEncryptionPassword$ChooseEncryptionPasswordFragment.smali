.class public Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;
.super Landroid/app/Fragment;
.source "ChooseEncryptionPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseEncryptionPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseEncryptionPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLength:I

    .line 90
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMaxLength:I

    .line 91
    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLetters:I

    .line 92
    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinUpperCase:I

    .line 93
    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLowerCase:I

    .line 94
    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinSymbols:I

    .line 95
    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinNumeric:I

    .line 96
    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinNonLetter:I

    .line 98
    const/high16 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mRequestedQuality:I

    .line 100
    sget-object v0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    .line 113
    new-instance v0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$1;-><init>(Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 156
    return-void
.end method

.method private handleNext()V
    .locals 6

    .prologue
    .line 378
    iget-object v3, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, pin:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const/4 v0, 0x0

    .line 383
    .local v0, errorMsg:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    if-ne v3, v4, :cond_3

    .line 384
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    if-nez v0, :cond_2

    .line 386
    iput-object v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 387
    iget-object v3, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    sget-object v3, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->updateStage(Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;)V

    .line 402
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 403
    iget-object v3, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    invoke-direct {p0, v0, v3}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;)V

    goto :goto_0

    .line 390
    :cond_3
    iget-object v3, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    if-ne v3, v4, :cond_2

    .line 391
    iget-object v3, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 392
    iget-object v3, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveEncryptionPassword(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 395
    :cond_4
    iget-object v3, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 396
    .local v2, tmp:Ljava/lang/CharSequence;
    if-eqz v2, :cond_5

    move-object v3, v2

    .line 397
    check-cast v3, Landroid/text/Spannable;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 399
    :cond_5
    sget-object v3, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->updateStage(Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;)V

    goto :goto_1
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    const/4 v3, 0x1

    .line 420
    iget-object v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, mesg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    iget-object v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 425
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 442
    iget-object v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, password:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 444
    .local v1, length:I
    iget-object v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    if-ne v4, v7, :cond_3

    if-lez v1, :cond_3

    .line 445
    iget v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v4, :cond_1

    .line 446
    iget-boolean v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_0

    const v4, 0x7f080563

    :goto_0
    new-array v5, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 464
    .end local v2           #msg:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 465
    return-void

    .line 446
    :cond_0
    const v4, 0x7f080564

    goto :goto_0

    .line 451
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 453
    iget-object v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 456
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f080565

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 457
    iget-object v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 461
    .end local v0           #error:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    iget v4, v4, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->alphaHint:I

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(I)V

    .line 462
    iget-object v7, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 461
    :cond_4
    iget-object v4, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    iget v4, v4, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->numericHint:I

    goto :goto_2

    :cond_5
    move v4, v6

    .line 462
    goto :goto_3
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "password"

    .prologue
    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLength:I

    if-ge v10, v11, :cond_1

    .line 293
    iget-boolean v10, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_0

    const v10, 0x7f080563

    :goto_0
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLength:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 374
    :goto_1
    return-object v10

    .line 293
    :cond_0
    const v10, 0x7f080564

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMaxLength:I

    if-le v10, v11, :cond_3

    .line 298
    iget-boolean v10, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_2

    const v10, 0x7f080567

    :goto_2
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMaxLength:I

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    const v10, 0x7f080568

    goto :goto_2

    .line 302
    :cond_3
    const/4 v4, 0x0

    .line 303
    .local v4, letters:I
    const/4 v7, 0x0

    .line 304
    .local v7, numbers:I
    const/4 v5, 0x0

    .line 305
    .local v5, lowercase:I
    const/4 v8, 0x0

    .line 306
    .local v8, symbols:I
    const/4 v9, 0x0

    .line 307
    .local v9, uppercase:I
    const/4 v6, 0x0

    .line 308
    .local v6, nonletter:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_9

    .line 309
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 311
    .local v2, c:C
    const/16 v10, 0x20

    if-lt v2, v10, :cond_4

    const/16 v10, 0x7f

    if-le v2, v10, :cond_5

    .line 312
    :cond_4
    const v10, 0x7f08056b

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 314
    :cond_5
    const/16 v10, 0x30

    if-lt v2, v10, :cond_6

    const/16 v10, 0x39

    if-gt v2, v10, :cond_6

    .line 315
    add-int/lit8 v7, v7, 0x1

    .line 316
    add-int/lit8 v6, v6, 0x1

    .line 308
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 317
    :cond_6
    const/16 v10, 0x41

    if-lt v2, v10, :cond_7

    const/16 v10, 0x5a

    if-gt v2, v10, :cond_7

    .line 318
    add-int/lit8 v4, v4, 0x1

    .line 319
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 320
    :cond_7
    const/16 v10, 0x61

    if-lt v2, v10, :cond_8

    const/16 v10, 0x7a

    if-gt v2, v10, :cond_8

    .line 321
    add-int/lit8 v4, v4, 0x1

    .line 322
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 324
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 325
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 328
    .end local v2           #c:C
    :cond_9
    const/high16 v10, 0x2

    iget v11, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_b

    if-gtz v4, :cond_a

    if-lez v8, :cond_b

    .line 332
    :cond_a
    const v10, 0x7f080569

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 333
    :cond_b
    const/high16 v10, 0x6

    iget v11, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_11

    .line 334
    iget v10, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLetters:I

    if-ge v4, v10, :cond_c

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0003

    iget v12, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 338
    :cond_c
    iget v10, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinNumeric:I

    if-ge v7, v10, :cond_d

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0006

    iget v12, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 342
    :cond_d
    iget v10, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v5, v10, :cond_e

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0004

    iget v12, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 346
    :cond_e
    iget v10, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v9, v10, :cond_f

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0005

    iget v12, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 350
    :cond_f
    iget v10, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinSymbols:I

    if-ge v8, v10, :cond_10

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0007

    iget v12, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 354
    :cond_10
    iget v10, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v6, v10, :cond_16

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0008

    iget v12, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 360
    :cond_11
    const/high16 v10, 0x4

    iget v11, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_13

    const/4 v0, 0x1

    .line 362
    .local v0, alphabetic:Z
    :goto_5
    const/high16 v10, 0x5

    iget v11, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_14

    const/4 v1, 0x1

    .line 364
    .local v1, alphanumeric:Z
    :goto_6
    if-nez v0, :cond_12

    if-eqz v1, :cond_15

    :cond_12
    if-nez v4, :cond_15

    .line 365
    const v10, 0x7f08056c

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 360
    .end local v0           #alphabetic:Z
    .end local v1           #alphanumeric:Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_5

    .line 362
    .restart local v0       #alphabetic:Z
    :cond_14
    const/4 v1, 0x0

    goto :goto_6

    .line 367
    .restart local v1       #alphanumeric:Z
    :cond_15
    if-eqz v1, :cond_16

    if-nez v7, :cond_16

    .line 368
    const v10, 0x7f08056d

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 371
    .end local v0           #alphabetic:Z
    .end local v1           #alphanumeric:Z
    :cond_16
    iget-object v10, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 372
    const v10, 0x7f08056f

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 374
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 470
    sget-object v0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->updateUi()V

    .line 473
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 477
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 263
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 264
    packed-switch p1, :pswitch_data_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 417
    :goto_0
    return-void

    .line 410
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->handleNext()V

    goto :goto_0

    .line 414
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x7f0d004b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 163
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/ChooseEncryptionPassword;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Fragment contained in wrong activity"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_0
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mRequestedQuality:I

    .line 168
    const-string v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLength:I

    .line 171
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMaxLength:I

    .line 172
    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLetters:I

    .line 174
    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinUpperCase:I

    .line 176
    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinLowerCase:I

    .line 178
    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinNumeric:I

    .line 180
    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinSymbols:I

    .line 182
    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordMinNonLetter:I

    .line 185
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 186
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 192
    const v9, 0x7f04001f

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 194
    .local v8, view:Landroid/view/View;
    const v9, 0x7f0d004b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 195
    iget-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v9, 0x7f0d004c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 197
    iget-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mIsAlphaMode:Z

    .line 200
    const v9, 0x7f0d004d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 201
    const v9, 0x7f0d004a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 202
    iget-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 203
    iget-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 206
    .local v0, activity:Landroid/app/Activity;
    new-instance v9, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v10, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v11, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v9, v0, v10, v11}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 208
    iget-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 210
    const v9, 0x7f0d0048

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 211
    iget-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v9}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 213
    iget-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 214
    .local v2, currentType:I
    iget-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 217
    .local v4, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 218
    .local v1, confirmCredentials:Z
    if-nez p3, :cond_2

    .line 219
    sget-object v9, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->updateStage(Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;)V

    .line 229
    :cond_0
    :goto_0
    instance-of v9, v0, Landroid/preference/PreferenceActivity;

    if-eqz v9, :cond_1

    move-object v5, v0

    .line 230
    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 231
    .local v5, preferenceActivity:Landroid/preference/PreferenceActivity;
    const v3, 0x7f0800af

    .line 232
    .local v3, id:I
    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 233
    .local v7, title:Ljava/lang/CharSequence;
    invoke-virtual {v5, v7, v7}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 236
    .end local v3           #id:I
    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v7           #title:Ljava/lang/CharSequence;
    :cond_1
    return-object v8

    .line 221
    :cond_2
    const-string v9, "first_pin"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 222
    const-string v9, "ui_stage"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, state:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 224
    invoke-static {v6}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    .line 225
    iget-object v9, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->updateStage(Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 429
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->handleNext()V

    .line 433
    const/4 v0, 0x1

    .line 435
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 251
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 242
    iget-object v0, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->updateStage(Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 244
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 256
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 481
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    .line 276
    .local v0, previousStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mUiStage:Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    .line 277
    invoke-direct {p0}, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->updateUi()V

    .line 281
    if-eq v0, p1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 284
    :cond_0
    return-void
.end method
