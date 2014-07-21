.class public Lcom/android/settings/cyanogenmod/TimeRangePreference;
.super Landroid/preference/Preference;
.source "TimeRangePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEndTime:I

.field private mEndTimeText:Landroid/widget/TextView;

.field private mStartTime:I

.field private mStartTimeText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/settings/cyanogenmod/TimeRangePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "stime"
    .parameter "etime"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 64
    iput p2, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mStartTime:I

    .line 65
    iput p3, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mEndTime:I

    .line 66
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->init()V

    .line 55
    return-void
.end method

.method private TimePicker(I)V
    .locals 8
    .parameter "key"

    .prologue
    .line 140
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget v7, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mStartTime:I

    .line 142
    .local v7, value:I
    :goto_0
    if-gez v7, :cond_1

    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 144
    .local v6, calendar:Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 145
    .local v3, hour:I
    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 151
    .end local v6           #calendar:Ljava/util/Calendar;
    .local v4, minutes:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 152
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/android/settings/cyanogenmod/TimeRangePreference$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/cyanogenmod/TimeRangePreference$1;-><init>(Lcom/android/settings/cyanogenmod/TimeRangePreference;I)V

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 167
    .local v0, dlg:Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 168
    return-void

    .line 140
    .end local v0           #dlg:Landroid/app/TimePickerDialog;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #hour:I
    .end local v4           #minutes:I
    .end local v7           #value:I
    :cond_0
    iget v7, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mEndTime:I

    goto :goto_0

    .line 147
    .restart local v7       #value:I
    :cond_1
    div-int/lit8 v3, v7, 0x3c

    .line 148
    .restart local v3       #hour:I
    rem-int/lit8 v4, v7, 0x3c

    .restart local v4       #minutes:I
    goto :goto_1
.end method

.method static synthetic access$002(Lcom/android/settings/cyanogenmod/TimeRangePreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mStartTime:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/TimeRangePreference;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->returnTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/TimeRangePreference;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mStartTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/cyanogenmod/TimeRangePreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mEndTime:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/cyanogenmod/TimeRangePreference;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mEndTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/cyanogenmod/TimeRangePreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f0400a2

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->setLayoutResource(I)V

    .line 91
    return-void
.end method

.method private returnTime(I)Ljava/lang/String;
    .locals 5
    .parameter "t"

    .prologue
    .line 171
    if-gez p1, :cond_0

    .line 172
    const-string v4, ""

    .line 184
    :goto_0
    return-object v4

    .line 175
    :cond_0
    move v2, p1

    .line 176
    .local v2, hr:I
    move v3, p1

    .line 178
    .local v3, mn:I
    div-int/lit8 v2, v2, 0x3c

    .line 179
    rem-int/lit8 v3, v3, 0x3c

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 181
    .local v0, cal:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 182
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 183
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 184
    .local v1, date:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updatePreferenceViews()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mStartTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mStartTimeText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mStartTime:I

    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->returnTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mEndTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mEndTimeText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mEndTime:I

    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->returnTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_1
    return-void
.end method


# virtual methods
.method public getEndTime()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mEndTime:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mStartTime:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 73
    const v2, 0x7f0d019a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, startTimeLayout:Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_0
    const v2, 0x7f0d019c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, endTimeLayout:Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_1
    const v2, 0x7f0d019b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mStartTimeText:Landroid/widget/TextView;

    .line 84
    const v2, 0x7f0d019d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mEndTimeText:Landroid/widget/TextView;

    .line 86
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->updatePreferenceViews()V

    .line 87
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    const v0, 0x7f0d019a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->TimePicker(I)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const v0, 0x7f0d019c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 132
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->TimePicker(I)V

    goto :goto_0
.end method

.method public setTimeRange(II)V
    .locals 0
    .parameter "stime"
    .parameter "etime"

    .prologue
    .line 113
    iput p1, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mStartTime:I

    .line 114
    iput p2, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference;->mEndTime:I

    .line 115
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->updatePreferenceViews()V

    .line 116
    return-void
.end method
