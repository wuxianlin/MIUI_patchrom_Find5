.class public Lcom/koushikdutta/widgets/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"


# instance fields
.field private CheckboxVisible:Z

.field private Enabled:Z

.field private Icon:I

.field private Summary:Ljava/lang/String;

.field private Title:Ljava/lang/String;

.field private checked:Z

.field mAttr:I

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFragment:Lcom/koushikdutta/widgets/BetterListFragmentInternal;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;II)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "summary"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    .line 52
    iput v1, p0, Lcom/koushikdutta/widgets/ListItem;->mAttr:I

    .line 130
    iput-boolean v1, p0, Lcom/koushikdutta/widgets/ListItem;->CheckboxVisible:Z

    .line 131
    iput-boolean v1, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    .line 101
    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p1, p2}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->Title:Ljava/lang/String;

    .line 103
    :cond_0
    if-eqz p3, :cond_1

    .line 104
    invoke-virtual {p1, p3}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->Summary:Ljava/lang/String;

    .line 105
    :cond_1
    iput-object p1, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;III)V
    .locals 0
    .parameter "context"
    .parameter "title"
    .parameter "summary"
    .parameter "icon"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;II)V

    .line 116
    iput p4, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "summary"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    .line 52
    iput v1, p0, Lcom/koushikdutta/widgets/ListItem;->mAttr:I

    .line 130
    iput-boolean v1, p0, Lcom/koushikdutta/widgets/ListItem;->CheckboxVisible:Z

    .line 131
    iput-boolean v1, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    .line 109
    iput-object p2, p0, Lcom/koushikdutta/widgets/ListItem;->Title:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/koushikdutta/widgets/ListItem;->Summary:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "title"
    .parameter "summary"
    .parameter "icon"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iput p4, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "context"
    .parameter "title"
    .parameter "summary"
    .parameter "drawable"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput-object p4, p0, Lcom/koushikdutta/widgets/ListItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    return-void
.end method

.method static synthetic access$002(Lcom/koushikdutta/widgets/ListItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    return p1
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    return v0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 13
    .parameter "context"
    .parameter "convertView"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 155
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 156
    .local v3, inflater:Landroid/view/LayoutInflater;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 157
    :cond_0
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    invoke-virtual {v8}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->getListItemResource()I

    move-result v8

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 160
    :cond_1
    const v8, 0x7f0d0039

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 161
    .local v6, title:Landroid/widget/TextView;
    const v8, 0x7f0d0055

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 162
    .local v5, summary:Landroid/widget/TextView;
    const v8, 0x7f0d00b8

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 163
    .local v0, cb:Landroid/widget/CompoundButton;
    invoke-virtual {v0, v11}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    iget-boolean v8, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 165
    move-object v2, p2

    .line 166
    .local v2, cv:Landroid/view/View;
    new-instance v8, Lcom/koushikdutta/widgets/ListItem$1;

    invoke-direct {v8, p0, v2}, Lcom/koushikdutta/widgets/ListItem$1;-><init>(Lcom/koushikdutta/widgets/ListItem;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 174
    iget-boolean v8, p0, Lcom/koushikdutta/widgets/ListItem;->CheckboxVisible:Z

    if-eqz v8, :cond_4

    move v8, v9

    :goto_0
    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 175
    iget-boolean v8, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 177
    iget-boolean v8, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 178
    iget-boolean v8, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 179
    iget-boolean v8, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 181
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->Title:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 182
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->Title:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_1
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->Summary:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 188
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->Summary:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :goto_2
    const v8, 0x7f0d0117

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 195
    .local v4, iv:Landroid/widget/ImageView;
    if-eqz v4, :cond_3

    .line 196
    iget v8, p0, Lcom/koushikdutta/widgets/ListItem;->mAttr:I

    if-eqz v8, :cond_2

    .line 197
    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 198
    .local v1, ctx:Landroid/content/Context;
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 199
    .local v7, value:Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    iget v11, p0, Lcom/koushikdutta/widgets/ListItem;->mAttr:I

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v7, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 200
    iput v9, p0, Lcom/koushikdutta/widgets/ListItem;->mAttr:I

    .line 201
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    .line 204
    .end local v1           #ctx:Landroid/content/Context;
    .end local v7           #value:Landroid/util/TypedValue;
    :cond_2
    iget v8, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    if-eqz v8, :cond_7

    .line 205
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget v8, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    :cond_3
    :goto_3
    return-object p2

    .end local v4           #iv:Landroid/widget/ImageView;
    :cond_4
    move v8, v10

    .line 174
    goto :goto_0

    .line 186
    :cond_5
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 192
    :cond_6
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 208
    .restart local v4       #iv:Landroid/widget/ImageView;
    :cond_7
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_8

    .line 209
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v8, p0, Lcom/koushikdutta/widgets/ListItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 213
    :cond_8
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 232
    return-void
.end method

.method onClickInternal(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 221
    iget-boolean v1, p0, Lcom/koushikdutta/widgets/ListItem;->CheckboxVisible:Z

    if-eqz v1, :cond_1

    .line 222
    const v1, 0x7f0d00b8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 224
    .local v0, cb:Landroid/widget/CompoundButton;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 229
    .end local v0           #cb:Landroid/widget/CompoundButton;
    :goto_1
    return-void

    .line 224
    .restart local v0       #cb:Landroid/widget/CompoundButton;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 227
    .end local v0           #cb:Landroid/widget/CompoundButton;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onLongClick()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .parameter "attr"

    .prologue
    .line 54
    iput p1, p0, Lcom/koushikdutta/widgets/ListItem;->mAttr:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    .line 57
    return-object p0
.end method

.method public setCheckboxVisible(Z)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .parameter "visible"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/koushikdutta/widgets/ListItem;->CheckboxVisible:Z

    .line 135
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->notifyDataSetChanged()V

    .line 136
    return-object p0
.end method

.method public setChecked(Z)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .parameter "isChecked"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/koushikdutta/widgets/ListItem;->checked:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/ListItem;->CheckboxVisible:Z

    .line 150
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->notifyDataSetChanged()V

    .line 151
    return-object p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .parameter "drawable"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/koushikdutta/widgets/ListItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    .line 48
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->notifyDataSetChanged()V

    .line 49
    return-object p0
.end method

.method public setEnabled(Z)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/koushikdutta/widgets/ListItem;->Enabled:Z

    .line 62
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->notifyDataSetChanged()V

    .line 63
    return-object p0
.end method

.method public setIcon(I)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .parameter "icon"

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    iput p1, p0, Lcom/koushikdutta/widgets/ListItem;->Icon:I

    .line 41
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->notifyDataSetChanged()V

    .line 42
    return-object p0
.end method

.method public setSummary(I)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .parameter "summary"

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/widgets/ListItem;->setSummary(Ljava/lang/String;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/widgets/ListItem;->setSummary(Ljava/lang/String;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .parameter "summary"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/koushikdutta/widgets/ListItem;->Summary:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListItem;->mFragment:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->notifyDataSetChanged()V

    .line 97
    return-object p0
.end method
