.class Lcom/android/settings_ex/profiles/ProfileConfig$2;
.super Ljava/lang/Object;
.source "ProfileConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profiles/ProfileConfig;->deleteProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profiles/ProfileConfig;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/ProfileConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/settings_ex/profiles/ProfileConfig$2;->this$0:Lcom/android/settings_ex/profiles/ProfileConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 437
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 438
    return-void
.end method
