.class public Lcom/android/internal/util/cm/QuietHoursUtils;
.super Ljava/lang/Object;
.source "QuietHoursUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inQuietHours(II)Z
    .locals 6
    .param p0, "quietHoursStart"    # I
    .param p1, "quietHoursEnd"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    if-eq p0, p1, :cond_1

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 54
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int v1, v4, v5

    .line 56
    .local v1, "minutes":I
    if-ge p1, p0, :cond_2

    .line 58
    if-ge v1, p0, :cond_0

    if-ge v1, p1, :cond_1

    :cond_0
    move v2, v3

    .line 64
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "minutes":I
    :cond_1
    :goto_0
    return v2

    .line 61
    .restart local v0    # "cal":Ljava/util/Calendar;
    .restart local v1    # "minutes":I
    :cond_2
    if-lt v1, p0, :cond_3

    if-ge v1, p1, :cond_3

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method public static inQuietHours(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "quiet_hours_forced"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 47
    :goto_0
    return v4

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "quiet_hours_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 36
    .local v0, "quietHoursEnabled":Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 39
    .local v2, "quietHoursOption":Z
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "quiet_hours_start"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 42
    .local v3, "quietHoursStart":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "quiet_hours_end"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 44
    .local v1, "quietHoursEnd":I
    invoke-static {v3, v1}, Lcom/android/internal/util/cm/QuietHoursUtils;->inQuietHours(II)Z

    move-result v4

    goto :goto_0

    .end local v0    # "quietHoursEnabled":Z
    .end local v1    # "quietHoursEnd":I
    .end local v2    # "quietHoursOption":Z
    .end local v3    # "quietHoursStart":I
    :cond_1
    move v0, v5

    .line 34
    goto :goto_1

    .restart local v0    # "quietHoursEnabled":Z
    :cond_2
    move v2, v5

    .line 36
    goto :goto_2

    .restart local v2    # "quietHoursOption":Z
    :cond_3
    move v4, v5

    .line 47
    goto :goto_0
.end method
