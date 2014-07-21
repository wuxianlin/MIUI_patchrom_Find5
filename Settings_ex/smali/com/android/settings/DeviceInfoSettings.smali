.class public Lcom/android/settings/DeviceInfoSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DeviceInfoSettings.java"


# instance fields
.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field mHits:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    .line 88
    return-void
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "rawKernelVersion"

    .prologue
    const/4 v4, 0x4

    .line 362
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 370
    .local v0, PROC_VERSION_REGEX:Ljava/lang/String;
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 371
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex did not match on /proc/version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v2, "Unavailable"

    .line 379
    :goto_0
    return-object v2

    .line 374
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 375
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex match on /proc/version only returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v2, "Unavailable"

    goto :goto_0

    .line 379
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCPUInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 429
    const/4 v1, 0x0

    .line 436
    .local v1, result:Ljava/lang/String;
    :try_start_0
    const-string v2, "/proc/cpuinfo"

    invoke-static {v2}, Lcom/android/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, firstLine:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 438
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 442
    .end local v0           #firstLine:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 440
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 345
    :try_start_0
    const-string v1, "/proc/version"

    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 352
    .local v0, e:Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 347
    .end local v0           #e:Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 348
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    const-string v1, "Unavailable"

    goto :goto_0
.end method

.method private getMemInfo()Ljava/lang/String;
    .locals 9

    .prologue
    .line 406
    const/4 v3, 0x0

    .line 407
    .local v3, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 416
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    const-string v4, "/proc/meminfo"

    invoke-static {v4}, Lcom/android/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, firstLine:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 418
    const-string v4, "\\s+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, parts:[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 425
    .end local v0           #firstLine:Ljava/lang/String;
    .end local v1           #parts:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 423
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 5

    .prologue
    .line 392
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, msv:Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 395
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v0           #msv:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 399
    :catch_0
    move-exception v1

    .line 402
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 397
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 337
    .local v0, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 339
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .parameter "preference"
    .parameter "resId"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 303
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 307
    .end local v0           #pref:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    .line 446
    move-object v6, p1

    check-cast v6, Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, intentUri:Ljava/lang/String;
    const-string v6, "component=([^/]+)/"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 448
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 450
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, packageName:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    .line 453
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 455
    .local v5, pi:Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_1

    .line 456
    const-string v6, "DeviceInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is disabled, hiding preference."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 466
    .end local v5           #pi:Landroid/content/pm/PackageInfo;
    :goto_1
    return v6

    .line 450
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 460
    .restart local v3       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 461
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "DeviceInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not installed, hiding preference."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move v6, v7

    .line 463
    goto :goto_1

    .line 466
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preferenceGroup"
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 289
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 311
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080416

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 320
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080416

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 98
    const-string v0, "build_number"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 100
    const-string v0, "firmware_version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "firmware_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 102
    const-string v0, "baseband_version"

    const-string v1, "gsm.version.baseband"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "device_model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "fcc_equipment_id"

    const-string v1, "ro.ril.fccid"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "device_model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "build_number"

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "build_number"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 108
    const-string v0, "kernel_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    const-string v0, "mod_version"

    const-string v1, "ro.cm.display.version"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "mod_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 111
    const-string v0, "build_date"

    const-string v1, "ro.build.date"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080b40

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v1, "selinux_status"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const-string v0, "status_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/deviceinfo/msim/MSimStatus;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "selinux_status"

    const-string v2, "ro.build.selinux"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->getCPUInfo()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->getMemInfo()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_5

    .line 135
    const-string v2, "cm_updates"

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z

    .line 140
    :goto_1
    if-eqz v0, :cond_6

    .line 141
    const-string v2, "device_cpu"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_2
    if-eqz v1, :cond_7

    .line 147
    const-string v0, "device_memory"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "safetylegal"

    const-string v2, "ro.url.safetylegal"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "fcc_equipment_id"

    const-string v2, "ro.ril.fccid"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "baseband_version"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 171
    const-string v0, "container"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 172
    const-string v2, "terms"

    invoke-static {v1, v0, v2, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 174
    const-string v2, "license"

    invoke-static {v1, v0, v2, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 176
    const-string v2, "copyright"

    invoke-static {v1, v0, v2, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 178
    const-string v2, "team"

    invoke-static {v1, v0, v2, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 183
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_8

    .line 184
    const-string v2, "system_update_settings"

    invoke-static {v1, v0, v2, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 188
    const-string v2, "system_update_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 189
    const-string v2, "system_update_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z

    .line 194
    :cond_3
    :goto_4
    const-string v2, "contributors"

    invoke-static {v1, v0, v2, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 198
    const-string v0, "additional_system_update_settings"

    const v1, 0x7f0b0005

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 202
    const-string v0, "regulatory_info"

    const v1, 0x7f0b0007

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 204
    return-void

    .line 116
    :cond_4
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080b41

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v1, "selinux_status"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "cm_updates"

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 143
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "device_cpu"

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 149
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "device_memory"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 192
    :cond_8
    const-string v2, "system_update_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x1f4

    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 217
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "firmware_version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v0, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 220
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    aget-wide v0, v0, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v7

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    const-string v1, "android"

    const-class v2, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :cond_1
    return v0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build_number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 232
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_1

    .line 234
    iget v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v1, :cond_7

    .line 235
    iget v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-ne v1, v0, :cond_3

    .line 236
    invoke-super {p0, p2}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    :cond_3
    iget v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 241
    iget v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v1, :cond_5

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "development"

    invoke-virtual {v1, v2, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 245
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_4

    .line 246
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 248
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080417

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 250
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 251
    :cond_5
    iget v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_6

    .line 254
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 256
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0002

    iget v4, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 259
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 261
    :cond_7
    iget v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_8

    .line 263
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 265
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080418

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 267
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 269
    :cond_9
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mod_version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v0, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 272
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    aget-wide v1, v1, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v7

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 273
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    const-string v2, "is_cm"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    const-string v0, "android"

    const-class v2, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 279
    :catch_1
    move-exception v0

    .line 280
    const-string v0, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 208
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 213
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
