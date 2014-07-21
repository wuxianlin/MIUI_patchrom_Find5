.class public final Lcom/koushikdutta/superuser/util/ImageCache;
.super Lcom/koushikdutta/superuser/util/SoftReferenceHashTable;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/superuser/util/SoftReferenceHashTable",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/koushikdutta/superuser/util/ImageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/koushikdutta/superuser/util/ImageCache;

    invoke-direct {v0}, Lcom/koushikdutta/superuser/util/ImageCache;-><init>()V

    sput-object v0, Lcom/koushikdutta/superuser/util/ImageCache;->mInstance:Lcom/koushikdutta/superuser/util/ImageCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/koushikdutta/superuser/util/SoftReferenceHashTable;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/koushikdutta/superuser/util/ImageCache;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/koushikdutta/superuser/util/ImageCache;->mInstance:Lcom/koushikdutta/superuser/util/ImageCache;

    return-object v0
.end method
