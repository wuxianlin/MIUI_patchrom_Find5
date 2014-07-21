.class Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ListDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListPreferenceAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/accessibility/ListDialogPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/accessibility/ListDialogPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accessibility/ListDialogPreference;Lcom/android/settings/accessibility/ListDialogPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;-><init>(Lcom/android/settings/accessibility/ListDialogPreference;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    #getter for: Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I
    invoke-static {v0}, Lcom/android/settings/accessibility/ListDialogPreference;->access$200(Lcom/android/settings/accessibility/ListDialogPreference;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 1
    .parameter "position"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    #getter for: Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I
    invoke-static {v0}, Lcom/android/settings/accessibility/ListDialogPreference;->access$200(Lcom/android/settings/accessibility/ListDialogPreference;)[I

    move-result-object v0

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    #getter for: Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I
    invoke-static {v0}, Lcom/android/settings/accessibility/ListDialogPreference;->access$200(Lcom/android/settings/accessibility/ListDialogPreference;)[I

    move-result-object v0

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 276
    if-nez p2, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    #getter for: Lcom/android/settings/accessibility/ListDialogPreference;->mListItemLayout:I
    invoke-static {v1}, Lcom/android/settings/accessibility/ListDialogPreference;->access$300(Lcom/android/settings/accessibility/ListDialogPreference;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-virtual {v0, p2, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->onBindListItem(Landroid/view/View;I)V

    .line 283
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method
