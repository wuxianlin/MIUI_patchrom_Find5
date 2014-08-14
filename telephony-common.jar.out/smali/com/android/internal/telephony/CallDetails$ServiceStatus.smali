.class public Lcom/android/internal/telephony/CallDetails$ServiceStatus;
.super Ljava/lang/Object;
.source "CallDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceStatus"
.end annotation


# instance fields
.field public isValid:Z

.field public restrictCause:I

.field public status:I

.field public type:I

.field public userdata:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails$ServiceStatus;->isValid:Z

    .line 183
    return-void
.end method
