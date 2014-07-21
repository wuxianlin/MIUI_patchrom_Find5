.class Lcom/android/settings/cyanogenmod/TimeRangePreference$1;
.super Ljava/lang/Object;
.source "TimeRangePreference.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/TimeRangePreference;->TimePicker(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/TimeRangePreference;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/TimeRangePreference;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference$1;->this$0:Lcom/android/settings/cyanogenmod/TimeRangePreference;

    iput p2, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference$1;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .parameter "v"
    .parameter "hours"
    .parameter "minutes"

    .prologue
    .line 156
    mul-int/lit8 v1, p2, 0x3c

    add-int v0, v1, p3

    .line 157
    .local v0, time:I
    iget v1, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference$1;->val$key:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference$1;->this$0:Lcom/android/settings/cyanogenmod/TimeRangePreference;

    #setter for: Lcom/android/settings/cyanogenmod/TimeRangePreference;->mStartTime:I
    invoke-static {v1, v0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->access$002(Lcom/android/settings/cyanogenmod/TimeRangePreference;I)I

    .line 159
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference$1;->this$0:Lcom/android/settings/cyanogenmod/TimeRangePreference;

    #getter for: Lcom/android/settings/cyanogenmod/TimeRangePreference;->mStartTimeText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->access$200(Lcom/android/settings/cyanogenmod/TimeRangePreference;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference$1;->this$0:Lcom/android/settings/cyanogenmod/TimeRangePreference;

    #calls: Lcom/android/settings/cyanogenmod/TimeRangePreference;->returnTime(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->access$100(Lcom/android/settings/cyanogenmod/TimeRangePreference;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference$1;->this$0:Lcom/android/settings/cyanogenmod/TimeRangePreference;

    #calls: Lcom/android/settings/cyanogenmod/TimeRangePreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v1, p0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->access$500(Lcom/android/settings/cyanogenmod/TimeRangePreference;Ljava/lang/Object;)Z

    .line 165
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference$1;->this$0:Lcom/android/settings/cyanogenmod/TimeRangePreference;

    #setter for: Lcom/android/settings/cyanogenmod/TimeRangePreference;->mEndTime:I
    invoke-static {v1, v0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->access$302(Lcom/android/settings/cyanogenmod/TimeRangePreference;I)I

    .line 162
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference$1;->this$0:Lcom/android/settings/cyanogenmod/TimeRangePreference;

    #getter for: Lcom/android/settings/cyanogenmod/TimeRangePreference;->mEndTimeText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->access$400(Lcom/android/settings/cyanogenmod/TimeRangePreference;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/TimeRangePreference$1;->this$0:Lcom/android/settings/cyanogenmod/TimeRangePreference;

    #calls: Lcom/android/settings/cyanogenmod/TimeRangePreference;->returnTime(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/settings/cyanogenmod/TimeRangePreference;->access$100(Lcom/android/settings/cyanogenmod/TimeRangePreference;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
