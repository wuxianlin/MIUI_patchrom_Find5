.class Lcom/android/settings_ex/cyanogenmod/ButtonSettings$1;
.super Ljava/lang/Object;
.source "ButtonSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cyanogenmod/ButtonSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/ButtonSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cyanogenmod/ButtonSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/ButtonSettings$1;->this$0:Lcom/android/settings_ex/cyanogenmod/ButtonSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonSettings$1;->this$0:Lcom/android/settings_ex/cyanogenmod/ButtonSettings;

    #getter for: Lcom/android/settings_ex/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/cyanogenmod/ButtonSettings;->access$000(Lcom/android/settings_ex/cyanogenmod/ButtonSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 448
    return-void
.end method
