.class Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;
.super Landroid/widget/ArrayAdapter;
.source "ScreenColorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ScreenColorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorModeAdaper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemView:Landroid/widget/RelativeLayout;

.field private mResource:I

.field final synthetic this$0:Lcom/android/settings_ex/ScreenColorSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/ScreenColorSettings;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "list"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->this$0:Lcom/android/settings_ex/ScreenColorSettings;

    .line 120
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 121
    iput p3, p0, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->mResource:I

    .line 122
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, name:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 128
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 131
    .local v4, vi:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->mResource:I

    iget-object v6, p0, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 135
    .end local v4           #vi:Landroid/view/LayoutInflater;
    .end local p2
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, p0, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    const v6, 0x1020019

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 138
    .local v1, radioButton:Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    const v6, 0x102001a

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 139
    .local v2, setting:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->this$0:Lcom/android/settings_ex/ScreenColorSettings;

    #getter for: Lcom/android/settings_ex/ScreenColorSettings;->mMode:I
    invoke-static {v5}, Lcom/android/settings_ex/ScreenColorSettings;->access$000(Lcom/android/settings_ex/ScreenColorSettings;)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 140
    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 141
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 147
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq p1, v5, :cond_2

    .line 148
    iget-object v5, p0, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    const v6, 0x7f0d00dd

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    const v6, 0x7f0d01f0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 161
    .local v3, v:Landroid/view/View;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    new-instance v5, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper$2;-><init>(Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v5, p0, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    return-object v5

    .line 133
    .end local v1           #radioButton:Landroid/widget/RadioButton;
    .end local v2           #setting:Landroid/widget/ImageView;
    .end local v3           #v:Landroid/view/View;
    .restart local p2
    :cond_0
    check-cast p2, Landroid/widget/RelativeLayout;

    .end local p2
    iput-object p2, p0, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 143
    .restart local v1       #radioButton:Landroid/widget/RadioButton;
    .restart local v2       #setting:Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 144
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 151
    :cond_2
    new-instance v5, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper$1;-><init>(Lcom/android/settings_ex/ScreenColorSettings$ColorModeAdaper;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method
