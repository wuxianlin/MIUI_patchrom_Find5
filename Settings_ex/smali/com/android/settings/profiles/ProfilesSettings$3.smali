.class Lcom/android/settings/profiles/ProfilesSettings$3;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/ProfilesSettings;->resetAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/ProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/ProfilesSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    #getter for: Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings;->access$100(Lcom/android/settings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProfileManager;->resetAll()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    #getter for: Lcom/android/settings/profiles/ProfilesSettings;->mAdapter:Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings;->access$200(Lcom/android/settings/profiles/ProfilesSettings;)Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;->refreshProfiles()V

    .line 255
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    #getter for: Lcom/android/settings/profiles/ProfilesSettings;->mAdapter:Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings;->access$200(Lcom/android/settings/profiles/ProfilesSettings;)Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;->refreshAppGroups()V

    .line 256
    return-void
.end method
