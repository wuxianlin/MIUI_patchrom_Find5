.class final Landroid/app/ActivityThread$ProviderRefCount;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderRefCount"
.end annotation


# instance fields
.field public final client:Landroid/app/ActivityThread$ProviderClientRecord;

.field public final holder:Landroid/app/IActivityManager$ContentProviderHolder;

.field public removePending:Z

.field public stableCount:I

.field public unstableCount:I


# direct methods
.method constructor <init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V
    .locals 0
    .parameter "inHolder"
    .parameter "inClient"
    .parameter "sCount"
    .parameter "uCount"

    .prologue
    .line 3136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3137
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    .line 3138
    iput-object p2, p0, Landroid/app/ActivityThread$ProviderRefCount;->client:Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3139
    iput p3, p0, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 3140
    iput p4, p0, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 3141
    return-void
.end method
