.class Lcom/android/internal/widget/LockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/widget/LockPatternView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayMode:I

.field private final mInStealthMode:Z

.field private final mInputEnabled:Z

.field private final mPatternSize:B

.field private final mSerializedPattern:Ljava/lang/String;

.field private final mShowErrorPath:Z

.field private final mTactileFeedbackEnabled:Z

.field private final mVisibleDots:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1192
    new-instance v0, Lcom/android/internal/widget/LockPatternView$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/widget/LockPatternView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/LockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 1136
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    .line 1139
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mPatternSize:B

    .line 1140
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    .line 1141
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    .line 1142
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    .line 1143
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mVisibleDots:Z

    .line 1144
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mShowErrorPath:Z

    .line 1145
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/widget/LockPatternView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1104
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IBZZZZZ)V
    .locals 0
    .parameter "superState"
    .parameter "serializedPattern"
    .parameter "displayMode"
    .parameter "patternSize"
    .parameter "inputEnabled"
    .parameter "inStealthMode"
    .parameter "tactileFeedbackEnabled"
    .parameter "visibleDots"
    .parameter "showErrorPath"

    .prologue
    .line 1121
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1122
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1123
    iput p3, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    .line 1124
    iput-byte p4, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mPatternSize:B

    .line 1125
    iput-boolean p5, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    .line 1126
    iput-boolean p6, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    .line 1127
    iput-boolean p7, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    .line 1128
    iput-boolean p8, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mVisibleDots:Z

    .line 1129
    iput-boolean p9, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mShowErrorPath:Z

    .line 1130
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IBZZZZZLcom/android/internal/widget/LockPatternView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 1104
    invoke-direct/range {p0 .. p9}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IBZZZZZ)V

    return-void
.end method


# virtual methods
.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 1152
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    return v0
.end method

.method public getPatternSize()B
    .locals 1

    .prologue
    .line 1156
    iget-byte v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mPatternSize:B

    return v0
.end method

.method public getSerializedPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    return-object v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 1164
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    return v0
.end method

.method public isInputEnabled()Z
    .locals 1

    .prologue
    .line 1160
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    return v0
.end method

.method public isShowErrorPath()Z
    .locals 1

    .prologue
    .line 1176
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mShowErrorPath:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 1168
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    return v0
.end method

.method public isVisibleDots()Z
    .locals 1

    .prologue
    .line 1172
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mVisibleDots:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1181
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1182
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1183
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    iget-byte v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mPatternSize:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1185
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1186
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1187
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1188
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mVisibleDots:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1189
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mShowErrorPath:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1190
    return-void
.end method
