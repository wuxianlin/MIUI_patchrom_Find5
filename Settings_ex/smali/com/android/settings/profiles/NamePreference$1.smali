.class Lcom/android/settings/profiles/NamePreference$1;
.super Ljava/lang/Object;
.source "NamePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/NamePreference;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/NamePreference;

.field final synthetic val$entry:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/NamePreference;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/profiles/NamePreference$1;->this$0:Lcom/android/settings/profiles/NamePreference;

    iput-object p2, p0, Lcom/android/settings/profiles/NamePreference$1;->val$entry:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/settings/profiles/NamePreference$1;->val$entry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/profiles/NamePreference$1;->this$0:Lcom/android/settings/profiles/NamePreference;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings/profiles/NamePreference;->mName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/profiles/NamePreference;->access$002(Lcom/android/settings/profiles/NamePreference;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/android/settings/profiles/NamePreference$1;->this$0:Lcom/android/settings/profiles/NamePreference;

    #getter for: Lcom/android/settings/profiles/NamePreference;->mNameView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/profiles/NamePreference;->access$100(Lcom/android/settings/profiles/NamePreference;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/profiles/NamePreference$1;->this$0:Lcom/android/settings/profiles/NamePreference;

    #calls: Lcom/android/settings/profiles/NamePreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v1, p0}, Lcom/android/settings/profiles/NamePreference;->access$200(Lcom/android/settings/profiles/NamePreference;Ljava/lang/Object;)Z

    .line 110
    return-void
.end method
