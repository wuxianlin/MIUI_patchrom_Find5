.class public Lcom/android/settings/blacklist/ToggleImageView;
.super Landroid/widget/ImageView;
.source "ToggleImageView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/blacklist/ToggleImageView$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mIsChecked:Z

.field private mOnCheckedChangeListener:Lcom/android/settings/blacklist/ToggleImageView$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/blacklist/ToggleImageView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/blacklist/ToggleImageView;->mIsChecked:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/blacklist/ToggleImageView;->mIsChecked:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-boolean v3, p0, Lcom/android/settings/blacklist/ToggleImageView;->mIsChecked:Z

    .line 49
    sget-object v2, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 53
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Lcom/android/settings/blacklist/ToggleImageView;->setChecked(Z)V

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/settings/blacklist/ToggleImageView;->mIsChecked:Z

    return v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/settings/blacklist/ToggleImageView;->toggle()V

    .line 61
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/blacklist/ToggleImageView;->setCheckedInternal(ZZ)V

    .line 67
    return-void
.end method

.method setCheckedInternal(ZZ)V
    .locals 2
    .parameter "checked"
    .parameter "callListener"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/settings/blacklist/ToggleImageView;->mIsChecked:Z

    if-eq v0, p1, :cond_0

    .line 85
    iput-boolean p1, p0, Lcom/android/settings/blacklist/ToggleImageView;->mIsChecked:Z

    .line 86
    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/settings/blacklist/ToggleImageView;->CHECKED_STATE_SET:[I

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/blacklist/ToggleImageView;->setImageState([IZ)V

    .line 87
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/blacklist/ToggleImageView;->mOnCheckedChangeListener:Lcom/android/settings/blacklist/ToggleImageView$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/blacklist/ToggleImageView;->mOnCheckedChangeListener:Lcom/android/settings/blacklist/ToggleImageView$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/android/settings/blacklist/ToggleImageView;->mIsChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/android/settings/blacklist/ToggleImageView$OnCheckedChangeListener;->onCheckedChanged(Lcom/android/settings/blacklist/ToggleImageView;Z)V

    .line 91
    :cond_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/android/settings/blacklist/ToggleImageView$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/blacklist/ToggleImageView;->mOnCheckedChangeListener:Lcom/android/settings/blacklist/ToggleImageView$OnCheckedChangeListener;

    .line 81
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/blacklist/ToggleImageView;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/blacklist/ToggleImageView;->setChecked(Z)V

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
