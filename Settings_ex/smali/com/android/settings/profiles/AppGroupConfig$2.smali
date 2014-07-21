.class Lcom/android/settings/profiles/AppGroupConfig$2;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/AppGroupConfig;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/AppGroupConfig;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/AppGroupConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings/profiles/AppGroupConfig$2;->this$0:Lcom/android/settings/profiles/AppGroupConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig$2;->this$0:Lcom/android/settings/profiles/AppGroupConfig;

    #calls: Lcom/android/settings/profiles/AppGroupConfig;->doDelete()V
    invoke-static {v0}, Lcom/android/settings/profiles/AppGroupConfig;->access$200(Lcom/android/settings/profiles/AppGroupConfig;)V

    .line 278
    return-void
.end method
