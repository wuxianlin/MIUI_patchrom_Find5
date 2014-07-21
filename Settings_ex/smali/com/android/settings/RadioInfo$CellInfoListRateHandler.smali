.class Lcom/android/settings/RadioInfo$CellInfoListRateHandler;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellInfoListRateHandler"
.end annotation


# instance fields
.field index:I

.field rates:[I

.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->rates:[I

    .line 933
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->index:I

    return-void

    .line 932
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getRate()I
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->rates:[I

    iget v1, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->index:I

    aget v0, v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 941
    iget v0, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->index:I

    .line 942
    iget v0, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->index:I

    iget-object v1, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->rates:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 943
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->index:I

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1800(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->rates:[I

    iget v2, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->index:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 946
    iget-object v0, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/settings/RadioInfo;

    #calls: Lcom/android/settings/RadioInfo;->updateCellInfoListRate()V
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3400(Lcom/android/settings/RadioInfo;)V

    .line 947
    return-void
.end method
