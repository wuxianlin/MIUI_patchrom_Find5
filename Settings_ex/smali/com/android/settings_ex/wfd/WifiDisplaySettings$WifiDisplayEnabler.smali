.class public Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayEnabler;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiDisplayEnabler"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayEnabler;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    iput-object p2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayEnabler;->mContext:Landroid/content/Context;

    .line 772
    iput-object p3, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayEnabler;->mSwitch:Landroid/widget/Switch;

    .line 773
    return-void
.end method

.method private setSwitchState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 795
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 797
    .local v0, enabled:Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayEnabler;->mStateMachineEvent:Z

    .line 798
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 799
    iput-boolean v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayEnabler;->mStateMachineEvent:Z

    .line 800
    return-void

    .end local v0           #enabled:Z
    :cond_0
    move v0, v2

    .line 795
    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 809
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 782
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 777
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayEnabler;->setSwitchState()V

    .line 778
    return-void
.end method
