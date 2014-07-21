.class public Lcom/android/settings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const v0, 0x7f010028

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 34
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    .line 51
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 53
    .local v2, view:Landroid/view/View;
    const v4, 0x1020001

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 54
    .local v3, widget:Landroid/view/View;
    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/widget/RadioButton;

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 55
    check-cast v1, Landroid/widget/RadioButton;

    .line 56
    .local v1, rb:Landroid/widget/RadioButton;
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 57
    iget-boolean v4, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v4, :cond_2

    .line 58
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 61
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 62
    sput-object v1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 66
    :cond_0
    iput-boolean v6, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 68
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 74
    .end local v0           #isChecked:Z
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    return-object v2

    .line 70
    .restart local v1       #rb:Landroid/widget/RadioButton;
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 86
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 91
    :cond_0
    if-eqz p2, :cond_2

    .line 92
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 95
    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_2
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 100
    sput-object v3, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 106
    return-void
.end method
