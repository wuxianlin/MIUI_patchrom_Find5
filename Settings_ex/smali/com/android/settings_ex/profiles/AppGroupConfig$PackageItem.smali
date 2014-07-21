.class Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profiles/AppGroupConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;",
        ">;"
    }
.end annotation


# instance fields
.field enabled:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/profiles/AppGroupConfig;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/AppGroupConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;->this$0:Lcom/android/settings_ex/profiles/AppGroupConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;)I
    .locals 3
    .parameter "another"

    .prologue
    .line 330
    iget-boolean v1, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;->enabled:Z

    iget-boolean v2, p1, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;->enabled:Z

    if-eq v1, v2, :cond_1

    .line 331
    iget-boolean v1, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;->enabled:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 337
    :goto_0
    return v1

    .line 331
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 334
    .local v0, titleResult:I
    if-eqz v0, :cond_2

    move v1, v0

    .line 335
    goto :goto_0

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 322
    check-cast p1, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;->compareTo(Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;)I

    move-result v0

    return v0
.end method
