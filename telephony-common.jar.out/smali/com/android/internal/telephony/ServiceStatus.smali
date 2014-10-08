.class public Lcom/android/internal/telephony/ServiceStatus;
.super Ljava/lang/Object;
.source "ServiceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    }
.end annotation


# instance fields
.field public accessTechStatus:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;

.field public isValid:Z

.field public status:I

.field public type:I

.field public userdata:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStatus;->isValid:Z

    .line 44
    return-void
.end method
