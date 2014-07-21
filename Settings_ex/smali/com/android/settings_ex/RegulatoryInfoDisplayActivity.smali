.class public Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;
.super Landroid/app/Activity;
.source "RegulatoryInfoDisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final REGULATORY_INFO_RESOURCE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const-string v0, "regulatory_info"

    iput-object v0, p0, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->REGULATORY_INFO_RESOURCE:Ljava/lang/String;

    return-void
.end method

.method private getResourceId()I
    .locals 8

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "regulatory_info"

    const-string v6, "drawable"

    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 102
    .local v2, resId:I
    const-string v4, "ro.boot.hardware.sku"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, sku:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "regulatory_info_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, regulatory_info_res:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 107
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 108
    move v2, v0

    .line 111
    .end local v0           #id:I
    .end local v1           #regulatory_info_res:Ljava/lang/String;
    :cond_0
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x2

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 54
    .local v9, resources:Landroid/content/res/Resources;
    const v11, 0x7f0b0007

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->finish()V

    .line 58
    :cond_0
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0807ca

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 62
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v6, 0x0

    .line 63
    .local v6, regulatoryInfoDrawableExists:Z
    invoke-direct {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getResourceId()I

    move-result v8

    .line 64
    .local v8, resId:I
    if-eqz v8, :cond_1

    .line 66
    :try_start_0
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 69
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    if-le v11, v13, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-le v11, v13, :cond_2

    const/4 v6, 0x1

    .line 76
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    const v11, 0x7f080bab

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 78
    .local v7, regulatoryText:Ljava/lang/CharSequence;
    if-eqz v6, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0400b7

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 80
    .local v10, view:Landroid/view/View;
    const v11, 0x7f0d01df

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 81
    .local v4, image:Landroid/widget/ImageView;
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 94
    .end local v4           #image:Landroid/widget/ImageView;
    .end local v10           #view:Landroid/view/View;
    :goto_1
    return-void

    .line 69
    .end local v7           #regulatoryText:Ljava/lang/CharSequence;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 71
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    .line 72
    .local v3, ignored:Landroid/content/res/Resources$NotFoundException;
    const/4 v6, 0x0

    goto :goto_0

    .line 84
    .end local v3           #ignored:Landroid/content/res/Resources$NotFoundException;
    .restart local v7       #regulatoryText:Ljava/lang/CharSequence;
    :cond_3
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 85
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 88
    .local v2, dialog:Landroid/app/AlertDialog;
    const v11, 0x102000b

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 89
    .local v5, messageText:Landroid/widget/TextView;
    const/16 v11, 0x11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 92
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v5           #messageText:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->finish()V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->finish()V

    .line 117
    return-void
.end method
