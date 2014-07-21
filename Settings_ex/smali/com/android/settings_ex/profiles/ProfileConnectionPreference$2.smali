.class Lcom/android/settings_ex/profiles/ProfileConnectionPreference$2;
.super Ljava/lang/Object;
.source "ProfileConnectionPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profiles/ProfileConnectionPreference;->createConnectionDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profiles/ProfileConnectionPreference;

.field final synthetic val$ConnectionValues:[Ljava/lang/String;

.field final synthetic val$connectionNames:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/ProfileConnectionPreference;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings_ex/profiles/ProfileConnectionPreference$2;->this$0:Lcom/android/settings_ex/profiles/ProfileConnectionPreference;

    iput-object p2, p0, Lcom/android/settings_ex/profiles/ProfileConnectionPreference$2;->val$ConnectionValues:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings_ex/profiles/ProfileConnectionPreference$2;->val$connectionNames:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileConnectionPreference$2;->this$0:Lcom/android/settings_ex/profiles/ProfileConnectionPreference;

    #getter for: Lcom/android/settings_ex/profiles/ProfileConnectionPreference;->currentChoice:I
    invoke-static {v1}, Lcom/android/settings_ex/profiles/ProfileConnectionPreference;->access$000(Lcom/android/settings_ex/profiles/ProfileConnectionPreference;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileConnectionPreference$2;->val$ConnectionValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConnectionPreference$2;->this$0:Lcom/android/settings_ex/profiles/ProfileConnectionPreference;

    #getter for: Lcom/android/settings_ex/profiles/ProfileConnectionPreference;->currentChoice:I
    invoke-static {v2}, Lcom/android/settings_ex/profiles/ProfileConnectionPreference;->access$000(Lcom/android/settings_ex/profiles/ProfileConnectionPreference;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, value:I
    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileConnectionPreference$2;->this$0:Lcom/android/settings_ex/profiles/ProfileConnectionPreference;

    #getter for: Lcom/android/settings_ex/profiles/ProfileConnectionPreference;->mConnectionItem:Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;
    invoke-static {v1}, Lcom/android/settings_ex/profiles/ProfileConnectionPreference;->access$100(Lcom/android/settings_ex/profiles/ProfileConnectionPreference;)Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    invoke-virtual {v1, v0}, Landroid/app/ConnectionSettings;->setValue(I)V

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileConnectionPreference$2;->this$0:Lcom/android/settings_ex/profiles/ProfileConnectionPreference;

    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConnectionPreference$2;->val$connectionNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/profiles/ProfileConnectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    .end local v0           #value:I
    :cond_0
    return-void
.end method
