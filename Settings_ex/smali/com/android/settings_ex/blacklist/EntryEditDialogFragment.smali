.class public Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;
.super Landroid/app/DialogFragment;
.source "EntryEditDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;
    }
.end annotation


# static fields
.field private static final BLACKLIST_PROJECTION:[Ljava/lang/String;

.field private static final NUMBER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBlockCalls:Landroid/widget/CheckBox;

.field private mBlockMessages:Landroid/widget/CheckBox;

.field private mContactPickButton:Landroid/widget/ImageButton;

.field private mEditText:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "phone"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->BLACKLIST_PROJECTION:[Ljava/lang/String;

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->NUMBER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->onDeleteConfirmResult(Z)V

    return-void
.end method

.method private createDialogView(JLandroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "id"
    .parameter "savedState"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 145
    .local v6, activity:Landroid/app/Activity;
    const-string v0, "layout_inflater"

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 147
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f04003f

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 149
    .local v9, view:Landroid/view/View;
    const v0, 0x7f0d00bf

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    const v0, 0x7f0d00c0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mContactPickButton:Landroid/widget/ImageButton;

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mContactPickButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$2;-><init>(Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v0, 0x7f0d00c2

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    .line 166
    const v0, 0x7f0d00c3

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    .line 168
    if-eqz p3, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const-string v2, "number"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    const-string v2, "phone"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    const-string v2, "message"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    :cond_1
    return-object v9

    .line 172
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 173
    sget-object v0, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 174
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->BLACKLIST_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 176
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    :goto_3
    if-eqz v7, :cond_0

    .line 184
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 178
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 179
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 181
    :cond_5
    const-wide/16 p1, -0x1

    goto :goto_3
.end method

.method private getEntryId()J
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static newInstance(J)Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;
    .locals 3
    .parameter "id"

    .prologue
    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 78
    new-instance v1, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;-><init>()V

    .line 79
    .local v1, fragment:Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v1
.end method

.method private onDeleteConfirmResult(Z)V
    .locals 5
    .parameter "confirmed"

    .prologue
    const/4 v4, 0x0

    .line 132
    if-eqz p1, :cond_0

    .line 133
    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getEntryId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 134
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->dismiss()V

    .line 137
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private updateBlacklistEntry()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 199
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, number:Ljava/lang/String;
    const-string v5, "number"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v8, "phone"

    iget-object v5, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v5, "message"

    iget-object v8, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    invoke-direct {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getEntryId()J

    move-result-wide v1

    .line 209
    .local v1, id:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_2

    .line 210
    sget-object v5, Landroid/provider/Telephony$Blacklist;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 216
    .local v4, uri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    return-void

    .end local v1           #id:J
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    move v5, v7

    .line 203
    goto :goto_0

    :cond_1
    move v6, v7

    .line 204
    goto :goto_1

    .line 214
    .restart local v1       #id:J
    :cond_2
    sget-object v5, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #uri:Landroid/net/Uri;
    goto :goto_2
.end method

.method private updateOkButtonState()V
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 222
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 223
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 227
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 228
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mOkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    :cond_1
    return-void

    .line 228
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->updateOkButtonState()V

    .line 254
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 249
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 258
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 259
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->NUMBER_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 266
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 126
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->updateBlacklistEntry()V

    .line 129
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getEntryId()J

    move-result-wide v2

    .line 90
    .local v2, id:J
    if-eqz p1, :cond_1

    const-string v5, "blacklist_edit_state"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 93
    .local v1, dialogState:Landroid/os/Bundle;
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f080263

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->createDialogView(JLandroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 99
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 100
    const v4, 0x7f080265

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialogState:Landroid/os/Bundle;
    :cond_1
    move-object v1, v4

    .line 90
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v0, dialogState:Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 238
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string v1, "message"

    iget-object v2, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    const-string v1, "blacklist_edit_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 241
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 111
    .local v0, dialog:Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 112
    .local v1, neutralButton:Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$1;-><init>(Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-direct {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->updateOkButtonState()V

    .line 122
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 245
    return-void
.end method
