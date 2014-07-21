.class Lcom/google/analytics/tracking/android/AdMobInfo;
.super Ljava/lang/Object;
.source "AdMobInfo.java"


# static fields
.field private static final INSTANCE:Lcom/google/analytics/tracking/android/AdMobInfo;


# instance fields
.field private mAdHitId:I

.field private mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/analytics/tracking/android/AdMobInfo;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/AdMobInfo;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/AdMobInfo;->INSTANCE:Lcom/google/analytics/tracking/android/AdMobInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->mRandom:Ljava/util/Random;

    .line 30
    return-void
.end method

.method static getInstance()Lcom/google/analytics/tracking/android/AdMobInfo;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/analytics/tracking/android/AdMobInfo;->INSTANCE:Lcom/google/analytics/tracking/android/AdMobInfo;

    return-object v0
.end method


# virtual methods
.method generateAdHitId()I
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->mRandom:Ljava/util/Random;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->mAdHitId:I

    .line 54
    iget v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->mAdHitId:I

    return v0
.end method
