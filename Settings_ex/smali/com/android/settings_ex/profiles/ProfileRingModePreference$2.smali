.class Lcom/android/settings_ex/profiles/ProfileRingModePreference$2;
.super Ljava/lang/Object;
.source "ProfileRingModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profiles/ProfileRingModePreference;->createRingModeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profiles/ProfileRingModePreference;

.field final synthetic val$ringModeValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/ProfileRingModePreference;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference$2;->this$0:Lcom/android/settings_ex/profiles/ProfileRingModePreference;

    iput-object p2, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference$2;->val$ringModeValues:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference$2;->this$0:Lcom/android/settings_ex/profiles/ProfileRingModePreference;

    #getter for: Lcom/android/settings_ex/profiles/ProfileRingModePreference;->currentChoice:I
    invoke-static {v1}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->access$000(Lcom/android/settings_ex/profiles/ProfileRingModePreference;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference$2;->val$ringModeValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference$2;->this$0:Lcom/android/settings_ex/profiles/ProfileRingModePreference;

    #getter for: Lcom/android/settings_ex/profiles/ProfileRingModePreference;->currentChoice:I
    invoke-static {v2}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->access$000(Lcom/android/settings_ex/profiles/ProfileRingModePreference;)I

    move-result v2

    aget-object v0, v1, v2

    .line 149
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference$2;->this$0:Lcom/android/settings_ex/profiles/ProfileRingModePreference;

    #getter for: Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mRingModeItem:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;
    invoke-static {v1}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->access$100(Lcom/android/settings_ex/profiles/ProfileRingModePreference;)Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;->mSettings:Landroid/app/RingModeSettings;

    invoke-virtual {v1, v0}, Landroid/app/RingModeSettings;->setValue(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference$2;->this$0:Lcom/android/settings_ex/profiles/ProfileRingModePreference;

    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference$2;->this$0:Lcom/android/settings_ex/profiles/ProfileRingModePreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference$2;->this$0:Lcom/android/settings_ex/profiles/ProfileRingModePreference;

    #getter for: Lcom/android/settings_ex/profiles/ProfileRingModePreference;->currentChoice:I
    invoke-static {v3}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->access$000(Lcom/android/settings_ex/profiles/ProfileRingModePreference;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method
