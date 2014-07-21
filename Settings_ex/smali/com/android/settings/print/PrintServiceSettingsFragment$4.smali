.class Lcom/android/settings/print/PrintServiceSettingsFragment$4;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$4;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$4;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #calls: Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V
    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$100(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    .line 310
    return-void
.end method
