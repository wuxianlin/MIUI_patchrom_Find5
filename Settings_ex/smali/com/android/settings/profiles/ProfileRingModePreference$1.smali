.class Lcom/android/settings/profiles/ProfileRingModePreference$1;
.super Ljava/lang/Object;
.source "ProfileRingModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/ProfileRingModePreference;->createRingModeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/ProfileRingModePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/ProfileRingModePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/profiles/ProfileRingModePreference$1;->this$0:Lcom/android/settings/profiles/ProfileRingModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileRingModePreference$1;->this$0:Lcom/android/settings/profiles/ProfileRingModePreference;

    #setter for: Lcom/android/settings/profiles/ProfileRingModePreference;->currentChoice:I
    invoke-static {v0, p2}, Lcom/android/settings/profiles/ProfileRingModePreference;->access$002(Lcom/android/settings/profiles/ProfileRingModePreference;I)I

    .line 141
    return-void
.end method
