.class Lcom/android/settings/profiles/ProfileConfig$1;
.super Ljava/lang/Object;
.source "ProfileConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/ProfileConfig;->deleteProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/ProfileConfig;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/ProfileConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/settings/profiles/ProfileConfig$1;->this$0:Lcom/android/settings/profiles/ProfileConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileConfig$1;->this$0:Lcom/android/settings/profiles/ProfileConfig;

    #calls: Lcom/android/settings/profiles/ProfileConfig;->doDelete()V
    invoke-static {v0}, Lcom/android/settings/profiles/ProfileConfig;->access$000(Lcom/android/settings/profiles/ProfileConfig;)V

    .line 433
    return-void
.end method
