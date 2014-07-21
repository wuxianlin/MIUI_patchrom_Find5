.class Lcom/android/settings/profiles/ProfilesPreference$1;
.super Ljava/lang/Object;
.source "ProfilesPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/profiles/ProfilesPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/ProfilesPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/ProfilesPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/profiles/ProfilesPreference$1;->this$0:Lcom/android/settings/profiles/ProfilesPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference$1;->this$0:Lcom/android/settings/profiles/ProfilesPreference;

    invoke-virtual {v0}, Lcom/android/settings/profiles/ProfilesPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference$1;->this$0:Lcom/android/settings/profiles/ProfilesPreference;

    invoke-virtual {v0}, Lcom/android/settings/profiles/ProfilesPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference$1;->this$0:Lcom/android/settings/profiles/ProfilesPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfilesPreference;->setChecked(Z)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference$1;->this$0:Lcom/android/settings/profiles/ProfilesPreference;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesPreference$1;->this$0:Lcom/android/settings/profiles/ProfilesPreference;

    invoke-virtual {v1}, Lcom/android/settings/profiles/ProfilesPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/profiles/ProfilesPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/android/settings/profiles/ProfilesPreference;->access$000(Lcom/android/settings/profiles/ProfilesPreference;Ljava/lang/Object;)Z

    goto :goto_0
.end method
