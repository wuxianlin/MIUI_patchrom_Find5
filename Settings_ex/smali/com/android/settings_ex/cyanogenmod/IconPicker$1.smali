.class Lcom/android/settings_ex/cyanogenmod/IconPicker$1;
.super Ljava/lang/Object;
.source "IconPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cyanogenmod/IconPicker;->pickIcon(ILjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/IconPicker;

.field final synthetic val$fragmentId:I

.field final synthetic val$image:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cyanogenmod/IconPicker;Ljava/io/File;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$1;->this$0:Lcom/android/settings_ex/cyanogenmod/IconPicker;

    iput-object p2, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$1;->val$image:Ljava/io/File;

    iput p3, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$1;->val$fragmentId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$1;->this$0:Lcom/android/settings_ex/cyanogenmod/IconPicker;

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$1;->val$image:Ljava/io/File;

    iget v2, p0, Lcom/android/settings_ex/cyanogenmod/IconPicker$1;->val$fragmentId:I

    #calls: Lcom/android/settings_ex/cyanogenmod/IconPicker;->showChosen(ILjava/io/File;I)V
    invoke-static {v0, p2, v1, v2}, Lcom/android/settings_ex/cyanogenmod/IconPicker;->access$000(Lcom/android/settings_ex/cyanogenmod/IconPicker;ILjava/io/File;I)V

    .line 90
    return-void
.end method
