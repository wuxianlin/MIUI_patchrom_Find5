.class public Lcom/koushikdutta/superuser/PinViewHelper;
.super Ljava/lang/Object;
.source "PinViewHelper.java"


# instance fields
.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const v7, 0x7f04007d

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 31
    .local v5, ret:Landroid/view/View;
    const v7, 0x7f0d0146

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 32
    .local v4, password:Landroid/widget/EditText;
    const/16 v7, 0xa

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 33
    .local v3, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v3

    if-ge v1, v7, :cond_0

    .line 34
    aget v2, v3, v1

    .line 35
    .local v2, id:I
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 36
    .local v0, b:Landroid/widget/Button;
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 38
    new-instance v7, Lcom/koushikdutta/superuser/PinViewHelper$1;

    invoke-direct {v7, p0, v4, v6}, Lcom/koushikdutta/superuser/PinViewHelper$1;-><init>(Lcom/koushikdutta/superuser/PinViewHelper;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v0           #b:Landroid/widget/Button;
    .end local v2           #id:I
    .end local v6           #text:Ljava/lang/String;
    :cond_0
    const v7, 0x7f0d0151

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/koushikdutta/superuser/PinViewHelper$2;

    invoke-direct {v8, p0, v4}, Lcom/koushikdutta/superuser/PinViewHelper$2;-><init>(Lcom/koushikdutta/superuser/PinViewHelper;Landroid/widget/EditText;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v7, 0x7f0d006a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/koushikdutta/superuser/PinViewHelper$3;

    invoke-direct {v8, p0}, Lcom/koushikdutta/superuser/PinViewHelper$3;-><init>(Lcom/koushikdutta/superuser/PinViewHelper;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v7, 0x7f0d0141

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/koushikdutta/superuser/PinViewHelper$4;

    invoke-direct {v8, p0, v4}, Lcom/koushikdutta/superuser/PinViewHelper$4;-><init>(Lcom/koushikdutta/superuser/PinViewHelper;Landroid/widget/EditText;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v5, p0, Lcom/koushikdutta/superuser/PinViewHelper;->mView:Landroid/view/View;

    .line 73
    return-void

    .line 32
    nop

    :array_0
    .array-data 0x4
        0x50t 0x1t 0xdt 0x7ft
        0x47t 0x1t 0xdt 0x7ft
        0x48t 0x1t 0xdt 0x7ft
        0x49t 0x1t 0xdt 0x7ft
        0x4at 0x1t 0xdt 0x7ft
        0x4bt 0x1t 0xdt 0x7ft
        0x4ct 0x1t 0xdt 0x7ft
        0x4dt 0x1t 0xdt 0x7ft
        0x4et 0x1t 0xdt 0x7ft
        0x4ft 0x1t 0xdt 0x7ft
    .end array-data
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/koushikdutta/superuser/PinViewHelper;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onEnter(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 81
    return-void
.end method
