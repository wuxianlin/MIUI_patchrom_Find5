.class Lcom/koushikdutta/widgets/ListItem$1;
.super Ljava/lang/Object;
.source "ListItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/widgets/ListItem;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/widgets/ListItem;

.field final synthetic val$cv:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/koushikdutta/widgets/ListItem;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/koushikdutta/widgets/ListItem$1;->this$0:Lcom/koushikdutta/widgets/ListItem;

    iput-object p2, p0, Lcom/koushikdutta/widgets/ListItem$1;->val$cv:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem$1;->this$0:Lcom/koushikdutta/widgets/ListItem;

    #setter for: Lcom/koushikdutta/widgets/ListItem;->checked:Z
    invoke-static {v0, p2}, Lcom/koushikdutta/widgets/ListItem;->access$002(Lcom/koushikdutta/widgets/ListItem;Z)Z

    .line 170
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem$1;->this$0:Lcom/koushikdutta/widgets/ListItem;

    iget-object v1, p0, Lcom/koushikdutta/widgets/ListItem$1;->val$cv:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 171
    return-void
.end method
