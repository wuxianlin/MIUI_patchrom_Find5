.class public abstract Lcom/android/settings/accessibility/ListDialogPreference;
.super Landroid/preference/DialogPreference;
.source "ListDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;,
        Lcom/android/settings/accessibility/ListDialogPreference$SavedState;,
        Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;
    }
.end annotation


# instance fields
.field private mEntryTitles:[Ljava/lang/CharSequence;

.field private mEntryValues:[I

.field private mListItemLayout:I

.field private mOnValueChangedListener:Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;

.field private mValue:I

.field private mValueIndex:I

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ListDialogPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ListDialogPreference;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/ListDialogPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mListItemLayout:I

    return v0
.end method


# virtual methods
.method protected getIndexForValue(I)I
    .locals 4
    .parameter "value"

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    .line 175
    .local v2, values:[I
    array-length v0, v2

    .line 176
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 177
    aget v3, v2, v1

    if-ne v3, p1, :cond_0

    .line 182
    .end local v1           #i:I
    :goto_1
    return v1

    .line 176
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueIndex:I

    if-ltz v0, :cond_0

    .line 129
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueIndex:I

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTitleAt(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "index"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    return v0
.end method

.method protected getValueAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    aget v0, v0, p1

    return v0
.end method

.method protected abstract onBindListItem(Landroid/view/View;I)V
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 8
    .parameter "builder"

    .prologue
    const/4 v7, 0x0

    .line 137
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 140
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getDialogLayoutResource()I

    move-result v2

    .line 141
    .local v2, dialogLayout:I
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 142
    .local v4, picker:Landroid/view/View;
    new-instance v0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;

    invoke-direct {v0, p0, v7}, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;-><init>(Lcom/android/settings/accessibility/ListDialogPreference;Lcom/android/settings/accessibility/ListDialogPreference$1;)V

    .line 143
    .local v0, adapter:Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;
    const v6, 0x102000a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView;

    .line 144
    .local v3, list:Landroid/widget/AbsListView;
    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    new-instance v6, Lcom/android/settings/accessibility/ListDialogPreference$1;

    invoke-direct {v6, p0}, Lcom/android/settings/accessibility/ListDialogPreference$1;-><init>(Lcom/android/settings/accessibility/ListDialogPreference;)V

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    iget v6, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/ListDialogPreference;->getIndexForValue(I)I

    move-result v5

    .line 161
    .local v5, selectedPosition:I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 162
    invoke-virtual {v3, v5}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 165
    :cond_0
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {p1, v7, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 240
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_1
    check-cast p1, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;

    .line 247
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 248
    iget v0, p1, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->value:I

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 227
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 228
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 233
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 234
    .local v0, myState:Lcom/android/settings/accessibility/ListDialogPreference$SavedState;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v2

    iput v2, v0, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->value:I

    move-object v1, v0

    .line 235
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 222
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 223
    return-void

    .line 222
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setListItemLayoutResource(I)V
    .locals 0
    .parameter "layoutResId"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mListItemLayout:I

    .line 76
    return-void
.end method

.method public setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mOnValueChangedListener:Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;

    .line 67
    return-void
.end method

.method public setTitles([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "titles"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    .line 95
    return-void
.end method

.method public setValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 192
    iget v2, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    if-eq v2, p1, :cond_3

    move v0, v1

    .line 193
    .local v0, changed:Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueSet:Z

    if-nez v2, :cond_2

    .line 194
    :cond_0
    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getIndexForValue(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueIndex:I

    .line 196
    iput-boolean v1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueSet:Z

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->persistInt(I)Z

    .line 198
    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->notifyDependencyChange(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->notifyChanged()V

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mOnValueChangedListener:Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mOnValueChangedListener:Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;

    invoke-interface {v1, p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    .line 206
    :cond_2
    return-void

    .line 192
    .end local v0           #changed:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValues([I)V
    .locals 0
    .parameter "values"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    .line 85
    return-void
.end method
