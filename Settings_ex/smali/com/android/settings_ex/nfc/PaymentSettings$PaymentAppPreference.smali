.class public Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;
.super Landroid/preference/Preference;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentAppPreference"
.end annotation


# instance fields
.field private final appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

.field private final listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "appInfo"
    .parameter "listener"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 201
    const v0, 0x7f040071

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->setLayoutResource(I)V

    .line 202
    iput-object p2, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .line 203
    iput-object p3, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    .line 204
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 210
    iget-object v2, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v2, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    const v2, 0x1020019

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 214
    .local v1, radioButton:Landroid/widget/RadioButton;
    iget-object v2, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v2, v2, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 216
    const v2, 0x7f0d0136

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 217
    .local v0, banner:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v2, v2, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    return-void
.end method
