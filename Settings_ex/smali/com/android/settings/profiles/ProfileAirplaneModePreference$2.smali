.class Lcom/android/settings/profiles/ProfileAirplaneModePreference$2;
.super Ljava/lang/Object;
.source "ProfileAirplaneModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/ProfileAirplaneModePreference;->createAirplaneModeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/ProfileAirplaneModePreference;

.field final synthetic val$AirplaneModeValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/ProfileAirplaneModePreference;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference$2;->this$0:Lcom/android/settings/profiles/ProfileAirplaneModePreference;

    iput-object p2, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference$2;->val$AirplaneModeValues:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference$2;->this$0:Lcom/android/settings/profiles/ProfileAirplaneModePreference;

    #getter for: Lcom/android/settings/profiles/ProfileAirplaneModePreference;->currentChoice:I
    invoke-static {v1}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->access$000(Lcom/android/settings/profiles/ProfileAirplaneModePreference;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference$2;->val$AirplaneModeValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference$2;->this$0:Lcom/android/settings/profiles/ProfileAirplaneModePreference;

    #getter for: Lcom/android/settings/profiles/ProfileAirplaneModePreference;->currentChoice:I
    invoke-static {v2}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->access$000(Lcom/android/settings/profiles/ProfileAirplaneModePreference;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, value:I
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference$2;->this$0:Lcom/android/settings/profiles/ProfileAirplaneModePreference;

    #getter for: Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mAirplaneModeItem:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;
    invoke-static {v1}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->access$100(Lcom/android/settings/profiles/ProfileAirplaneModePreference;)Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;->mSettings:Landroid/app/AirplaneModeSettings;

    iget-object v2, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference$2;->this$0:Lcom/android/settings/profiles/ProfileAirplaneModePreference;

    #getter for: Lcom/android/settings/profiles/ProfileAirplaneModePreference;->currentChoice:I
    invoke-static {v2}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->access$000(Lcom/android/settings/profiles/ProfileAirplaneModePreference;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AirplaneModeSettings;->setValue(I)V

    .line 145
    iget-object v2, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference$2;->this$0:Lcom/android/settings/profiles/ProfileAirplaneModePreference;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference$2;->this$0:Lcom/android/settings/profiles/ProfileAirplaneModePreference;

    invoke-virtual {v1}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0800e4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 148
    .end local v0           #value:I
    :cond_0
    return-void

    .line 145
    .restart local v0       #value:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference$2;->this$0:Lcom/android/settings/profiles/ProfileAirplaneModePreference;

    invoke-virtual {v1}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0800e3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
