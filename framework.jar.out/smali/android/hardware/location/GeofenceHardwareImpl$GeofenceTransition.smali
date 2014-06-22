.class Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
.super Ljava/lang/Object;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeofenceTransition"
.end annotation


# instance fields
.field private mGeofenceId:I

.field private mLocation:Landroid/location/Location;

.field private mMonitoringType:I

.field private mSourcesUsed:I

.field private mTimestamp:J

.field private mTransition:I

.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;IIJLandroid/location/Location;II)V
    .locals 0
    .parameter
    .parameter "geofenceId"
    .parameter "transition"
    .parameter "timestamp"
    .parameter "location"
    .parameter "monitoringType"
    .parameter "sourcesUsed"

    .prologue
    .line 749
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I

    .line 751
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTransition:I

    .line 752
    iput-wide p4, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTimestamp:J

    .line 753
    iput-object p6, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mLocation:Landroid/location/Location;

    .line 754
    iput p7, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mMonitoringType:I

    .line 755
    iput p8, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mSourcesUsed:I

    .line 756
    return-void
.end method

.method static synthetic access$200(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 736
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 736
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTransition:I

    return v0
.end method

.method static synthetic access$500(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 736
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 736
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTimestamp:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 736
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mMonitoringType:I

    return v0
.end method
