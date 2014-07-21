.class Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

.field final synthetic val$toggle:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Landroid/widget/Switch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;->val$toggle:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$300(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;->val$toggle:Landroid/widget/Switch;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 254
    return-void
.end method
