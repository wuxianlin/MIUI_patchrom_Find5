.class public final Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;
.super Landroid/app/DialogFragment;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDeviceNameEdited:Z

.field private mDeviceNameUpdated:Z

.field mDeviceNameView:Landroid/widget/EditText;

.field final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mOkButton:Landroid/widget/Button;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 68
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;-><init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 84
    .local v0, localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private createDialogView(Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "deviceName"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 127
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040040

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 128
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0d00c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 129
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;

    const/16 v6, 0xf8

    invoke-direct {v5, v6}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 132
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;-><init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 146
    return-object v1
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 114
    const-string v0, "BluetoothNameDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting device name to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 116
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    if-eqz v2, :cond_1

    .line 187
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 188
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 191
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 199
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, deviceName:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 91
    const-string v1, "device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, "device_name_edited"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 94
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080475

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080476

    new-instance v3, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$2;-><init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 107
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 152
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 153
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 154
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 155
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 160
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 162
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 120
    const-string v0, "device_name"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "device_name_edited"

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

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
    .line 203
    return-void
.end method

.method updateDeviceName()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 180
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_0
    return-void
.end method
