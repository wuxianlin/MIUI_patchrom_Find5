.class Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1;
.super Lcom/koushikdutta/superuser/PolicyNativeFragment$FragmentInternal;
.source "PolicyNativeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment;->createFragmentInterface()Lcom/koushikdutta/superuser/PolicyFragmentInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment;Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1;->this$0:Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment;

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/superuser/PolicyNativeFragment$FragmentInternal;-><init>(Lcom/koushikdutta/superuser/PolicyNativeFragment;Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-void
.end method


# virtual methods
.method protected createLogNativeFragment()Lcom/koushikdutta/superuser/LogNativeFragment;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1$1;-><init>(Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1;)V

    return-object v0
.end method

.method protected createSettingsNativeFragment()Lcom/koushikdutta/superuser/SettingsNativeFragment;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1$2;

    invoke-direct {v0, p0}, Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1$2;-><init>(Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1;)V

    return-object v0
.end method
