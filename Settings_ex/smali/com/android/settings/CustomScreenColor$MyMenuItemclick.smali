.class Lcom/android/settings/CustomScreenColor$MyMenuItemclick;
.super Ljava/lang/Object;
.source "CustomScreenColor.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CustomScreenColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMenuItemclick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CustomScreenColor;


# direct methods
.method private constructor <init>(Lcom/android/settings/CustomScreenColor;)V
    .locals 0
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/settings/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/android/settings/CustomScreenColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CustomScreenColor;Lcom/android/settings/CustomScreenColor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/android/settings/CustomScreenColor$MyMenuItemclick;-><init>(Lcom/android/settings/CustomScreenColor;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 670
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 684
    :goto_0
    return v1

    .line 672
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/android/settings/CustomScreenColor;

    #calls: Lcom/android/settings/CustomScreenColor;->resotreBackgroundByDefault()V
    invoke-static {v0}, Lcom/android/settings/CustomScreenColor;->access$300(Lcom/android/settings/CustomScreenColor;)V

    goto :goto_0

    .line 675
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/android/settings/CustomScreenColor;

    #calls: Lcom/android/settings/CustomScreenColor;->selectPicFromGallery2()V
    invoke-static {v0}, Lcom/android/settings/CustomScreenColor;->access$400(Lcom/android/settings/CustomScreenColor;)V

    goto :goto_0

    .line 678
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/android/settings/CustomScreenColor;

    #calls: Lcom/android/settings/CustomScreenColor;->selectPicFromGallery2()V
    invoke-static {v0}, Lcom/android/settings/CustomScreenColor;->access$400(Lcom/android/settings/CustomScreenColor;)V

    goto :goto_0

    .line 681
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/android/settings/CustomScreenColor;

    #calls: Lcom/android/settings/CustomScreenColor;->restoreDefaultHSCI()V
    invoke-static {v0}, Lcom/android/settings/CustomScreenColor;->access$500(Lcom/android/settings/CustomScreenColor;)V

    goto :goto_0

    .line 670
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d02f7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
