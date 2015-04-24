.class public Lcom/android/internal/util/wifi/ClientsList$ClientScanResult;
.super Ljava/lang/Object;
.source "ClientsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/wifi/ClientsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientScanResult"
.end annotation


# instance fields
.field public device:Ljava/lang/String;

.field public hwAddr:Ljava/lang/String;

.field public ipAddr:Ljava/lang/String;

.field public isReachable:Z

.field public vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
