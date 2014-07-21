.class Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastCycleLength:I

.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

.field final synthetic val$cdEditor:Landroid/view/View;

.field final synthetic val$cycleDay:I

.field final synthetic val$cycleDayPicker:Landroid/widget/NumberPicker;

.field final synthetic val$cycleLength:I

.field final synthetic val$cycleWeekDayPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;ILcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;ILandroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    iput p2, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$cycleLength:I

    iput-object p3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput p5, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDay:I

    iput-object p6, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    iput-object p7, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$cycleWeekDayPicker:Landroid/widget/NumberPicker;

    iput-object p8, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$cdEditor:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1873
    iget v0, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$cycleLength:I

    iput v0, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->lastCycleLength:I

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
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
    .line 1878
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->lastCycleLength:I

    if-eq p3, v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p3}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyCycleLength(Landroid/net/NetworkTemplate;I)V

    .line 1880
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    iget v2, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDay:I

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$cycleWeekDayPicker:Landroid/widget/NumberPicker;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$cdEditor:Landroid/view/View;

    move v1, p3

    #calls: Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->updatePicker(IILandroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/view/View;)V
    invoke-static/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->access$2800(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;IILandroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/view/View;)V

    .line 1882
    iput p3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->lastCycleLength:I

    .line 1884
    :cond_0
    return-void
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
    .line 1889
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
