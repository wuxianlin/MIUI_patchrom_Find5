.class Lcom/android/settings_ex/hardware/DisplayColor$2;
.super Ljava/lang/Object;
.source "DisplayColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/hardware/DisplayColor;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/hardware/DisplayColor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/hardware/DisplayColor;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings_ex/hardware/DisplayColor$2;->this$0:Lcom/android/settings_ex/hardware/DisplayColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 109
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getDefValue()I

    move-result v0

    .line 110
    .local v0, defaultValue:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/hardware/DisplayColor$2;->this$0:Lcom/android/settings_ex/hardware/DisplayColor;

    #getter for: Lcom/android/settings_ex/hardware/DisplayColor;->mSeekBars:[Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;
    invoke-static {v2}, Lcom/android/settings_ex/hardware/DisplayColor;->access$000(Lcom/android/settings_ex/hardware/DisplayColor;)[Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/settings_ex/hardware/DisplayColor$2;->this$0:Lcom/android/settings_ex/hardware/DisplayColor;

    #getter for: Lcom/android/settings_ex/hardware/DisplayColor;->mSeekBars:[Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;
    invoke-static {v2}, Lcom/android/settings_ex/hardware/DisplayColor;->access$000(Lcom/android/settings_ex/hardware/DisplayColor;)[Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;

    move-result-object v2

    aget-object v2, v2, v1

    #getter for: Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;->access$100(Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 112
    iget-object v2, p0, Lcom/android/settings_ex/hardware/DisplayColor$2;->this$0:Lcom/android/settings_ex/hardware/DisplayColor;

    #getter for: Lcom/android/settings_ex/hardware/DisplayColor;->mCurrentColors:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/hardware/DisplayColor;->access$200(Lcom/android/settings_ex/hardware/DisplayColor;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    const-string v2, " "

    iget-object v3, p0, Lcom/android/settings_ex/hardware/DisplayColor$2;->this$0:Lcom/android/settings_ex/hardware/DisplayColor;

    #getter for: Lcom/android/settings_ex/hardware/DisplayColor;->mCurrentColors:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/hardware/DisplayColor;->access$200(Lcom/android/settings_ex/hardware/DisplayColor;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    .line 115
    return-void
.end method
