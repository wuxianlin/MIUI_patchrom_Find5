.class Lcom/android/settings/applications/AppOpsDetails$1;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AppOpsDetails;->refreshUi()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field firstMode:Z

.field final synthetic this$0:Lcom/android/settings/applications/AppOpsDetails;

.field final synthetic val$entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

.field final synthetic val$switchOp:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppOpsDetails;ILcom/android/settings/applications/AppOpsState$AppOpEntry;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsDetails$1;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    iput p2, p0, Lcom/android/settings/applications/AppOpsDetails$1;->val$switchOp:I

    iput-object p3, p0, Lcom/android/settings/applications/AppOpsDetails$1;->val$entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppOpsDetails$1;->firstMode:Z

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "selectedItemView"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, parentView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v0, p0, Lcom/android/settings/applications/AppOpsDetails$1;->firstMode:Z

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppOpsDetails$1;->firstMode:Z

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails$1;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    #getter for: Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/settings/applications/AppOpsDetails;->access$100(Lcom/android/settings/applications/AppOpsDetails;)Landroid/app/AppOpsManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/AppOpsDetails$1;->val$switchOp:I

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsDetails$1;->val$entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails$1;->val$entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v3}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsDetails$1;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    #calls: Lcom/android/settings/applications/AppOpsDetails;->positionToMode(I)I
    invoke-static {v4, p3}, Lcom/android/settings/applications/AppOpsDetails;->access$000(Lcom/android/settings/applications/AppOpsDetails;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, parentView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
