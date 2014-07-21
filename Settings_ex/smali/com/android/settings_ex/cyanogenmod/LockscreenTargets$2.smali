.class Lcom/android/settings_ex/cyanogenmod/LockscreenTargets$2;
.super Ljava/lang/Object;
.source "LockscreenTargets.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;->onTrigger(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    .line 440
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;->access$300(Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets$TargetInfo;

    .line 441
    .local v10, info:Lcom/android/settings_ex/cyanogenmod/LockscreenTargets$TargetInfo;
    if-eqz v10, :cond_1

    iget-object v7, v10, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 442
    .local v7, type:Ljava/lang/String;
    :goto_0
    if-eqz v10, :cond_2

    iget-object v8, v10, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 443
    .local v8, source:Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_0

    iget-object v9, v10, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets$TargetInfo;->packageName:Ljava/lang/String;

    .line 444
    .local v9, packageName:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;->access$200(Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getInsetForIconType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 446
    .local v2, inset:I
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;

    #calls: Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;->getPickedIconFromDialog()Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;->access$400(Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 448
    .local v0, drawable:Landroid/graphics/drawable/InsetDrawable;
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;->mTargetIndex:I
    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;->access$500(Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;)I

    move-result v4

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;->access$600(Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    #calls: Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;->setTarget(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v3 .. v9}, Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;->access$700(Lcom/android/settings_ex/cyanogenmod/LockscreenTargets;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void

    .end local v0           #drawable:Landroid/graphics/drawable/InsetDrawable;
    .end local v2           #inset:I
    .end local v7           #type:Ljava/lang/String;
    .end local v8           #source:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    :cond_1
    move-object v7, v9

    .line 441
    goto :goto_0

    .restart local v7       #type:Ljava/lang/String;
    :cond_2
    move-object v8, v9

    .line 442
    goto :goto_1
.end method
