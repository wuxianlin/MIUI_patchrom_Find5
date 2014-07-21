.class Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notificationlight/NotificationLightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;",
        ">;"
    }
.end annotation


# instance fields
.field activityTitles:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field icon:Landroid/graphics/drawable/Drawable;

.field packageName:Ljava/lang/String;

.field title:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;->activityTitles:Ljava/util/TreeSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notificationlight/NotificationLightSettings$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;)I
    .locals 3
    .parameter "another"

    .prologue
    .line 517
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 518
    .local v0, result:I
    if-eqz v0, :cond_0

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 509
    check-cast p1, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;->compareTo(Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;)I

    move-result v0

    return v0
.end method
