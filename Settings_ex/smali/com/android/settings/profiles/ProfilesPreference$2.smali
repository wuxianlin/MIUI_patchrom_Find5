.class Lcom/android/settings/profiles/ProfilesPreference$2;
.super Ljava/lang/Object;
.source "ProfilesPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/ProfilesPreference;->onBindView(Landroid/view/View;)V
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
    .line 75
    iput-object p1, p0, Lcom/android/settings/profiles/ProfilesPreference$2;->this$0:Lcom/android/settings/profiles/ProfilesPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference$2;->this$0:Lcom/android/settings/profiles/ProfilesPreference;

    #calls: Lcom/android/settings/profiles/ProfilesPreference;->startProfileConfigActivity()V
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesPreference;->access$100(Lcom/android/settings/profiles/ProfilesPreference;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method
