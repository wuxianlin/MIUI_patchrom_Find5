.class Lcom/android/settings/profiles/NFCProfileSelect$2;
.super Ljava/lang/Object;
.source "NFCProfileSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/NFCProfileSelect;->showProfileSelectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/NFCProfileSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/NFCProfileSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/profiles/NFCProfileSelect$2;->this$0:Lcom/android/settings/profiles/NFCProfileSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/profiles/NFCProfileSelect$2;->this$0:Lcom/android/settings/profiles/NFCProfileSelect;

    #setter for: Lcom/android/settings/profiles/NFCProfileSelect;->currentChoice:I
    invoke-static {v0, p2}, Lcom/android/settings/profiles/NFCProfileSelect;->access$002(Lcom/android/settings/profiles/NFCProfileSelect;I)I

    .line 99
    return-void
.end method
