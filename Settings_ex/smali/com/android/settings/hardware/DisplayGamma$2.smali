.class Lcom/android/settings/hardware/DisplayGamma$2;
.super Ljava/lang/Object;
.source "DisplayGamma.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/hardware/DisplayGamma;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/hardware/DisplayGamma;


# direct methods
.method constructor <init>(Lcom/android/settings/hardware/DisplayGamma;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings/hardware/DisplayGamma$2;->this$0:Lcom/android/settings/hardware/DisplayGamma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 145
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/hardware/DisplayGamma$2;->this$0:Lcom/android/settings/hardware/DisplayGamma;

    #getter for: Lcom/android/settings/hardware/DisplayGamma;->mSeekBars:[[Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;
    invoke-static {v5}, Lcom/android/settings/hardware/DisplayGamma;->access$000(Lcom/android/settings/hardware/DisplayGamma;)[[Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 146
    iget-object v5, p0, Lcom/android/settings/hardware/DisplayGamma$2;->this$0:Lcom/android/settings/hardware/DisplayGamma;

    invoke-virtual {v5}, Lcom/android/settings/hardware/DisplayGamma;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 147
    .local v4, prefs:Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "display_gamma_default_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, defaultKey:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, defaultColors:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, color:I
    :goto_1
    invoke-static {}, Lcom/android/settings/hardware/DisplayGamma;->access$100()[I

    move-result-object v5

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 153
    iget-object v5, p0, Lcom/android/settings/hardware/DisplayGamma$2;->this$0:Lcom/android/settings/hardware/DisplayGamma;

    #getter for: Lcom/android/settings/hardware/DisplayGamma;->mSeekBars:[[Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;
    invoke-static {v5}, Lcom/android/settings/hardware/DisplayGamma;->access$000(Lcom/android/settings/hardware/DisplayGamma;)[[Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;

    move-result-object v5

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    aget-object v6, v1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->setGamma(I)V

    .line 154
    iget-object v5, p0, Lcom/android/settings/hardware/DisplayGamma$2;->this$0:Lcom/android/settings/hardware/DisplayGamma;

    #getter for: Lcom/android/settings/hardware/DisplayGamma;->mCurrentColors:[[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/hardware/DisplayGamma;->access$200(Lcom/android/settings/hardware/DisplayGamma;)[[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    aget-object v6, v1, v0

    aput-object v6, v5, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_0
    const-string v5, " "

    iget-object v6, p0, Lcom/android/settings/hardware/DisplayGamma$2;->this$0:Lcom/android/settings/hardware/DisplayGamma;

    #getter for: Lcom/android/settings/hardware/DisplayGamma;->mCurrentColors:[[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/hardware/DisplayGamma;->access$200(Lcom/android/settings/hardware/DisplayGamma;)[[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->setGamma(ILjava/lang/String;)Z

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v0           #color:I
    .end local v1           #defaultColors:[Ljava/lang/String;
    .end local v2           #defaultKey:Ljava/lang/String;
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method
