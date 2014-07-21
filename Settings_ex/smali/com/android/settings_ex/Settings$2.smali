.class Lcom/android/settings_ex/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/settings_ex/Settings$2;->this$0:Lcom/android/settings_ex/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/Settings$2;->this$0:Lcom/android/settings_ex/Settings;

    iget-object v1, p0, Lcom/android/settings_ex/Settings$2;->this$0:Lcom/android/settings_ex/Settings;

    #getter for: Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings_ex/Settings;->access$100(Lcom/android/settings_ex/Settings;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #calls: Lcom/android/settings_ex/Settings;->switchToParent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/Settings;->access$200(Lcom/android/settings_ex/Settings;Ljava/lang/String;)V

    .line 261
    return-void
.end method
