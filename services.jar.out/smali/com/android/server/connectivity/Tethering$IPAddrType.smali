.class final enum Lcom/android/server/connectivity/Tethering$IPAddrType;
.super Ljava/lang/Enum;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IPAddrType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/connectivity/Tethering$IPAddrType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/Tethering$IPAddrType;

.field public static final enum V4:Lcom/android/server/connectivity/Tethering$IPAddrType;

.field public static final enum V6:Lcom/android/server/connectivity/Tethering$IPAddrType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/android/server/connectivity/Tethering$IPAddrType;

    const-string v1, "V4"

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Tethering$IPAddrType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering$IPAddrType;->V4:Lcom/android/server/connectivity/Tethering$IPAddrType;

    new-instance v0, Lcom/android/server/connectivity/Tethering$IPAddrType;

    const-string v1, "V6"

    invoke-direct {v0, v1, v3}, Lcom/android/server/connectivity/Tethering$IPAddrType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering$IPAddrType;->V6:Lcom/android/server/connectivity/Tethering$IPAddrType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/connectivity/Tethering$IPAddrType;

    sget-object v1, Lcom/android/server/connectivity/Tethering$IPAddrType;->V4:Lcom/android/server/connectivity/Tethering$IPAddrType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/connectivity/Tethering$IPAddrType;->V6:Lcom/android/server/connectivity/Tethering$IPAddrType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/connectivity/Tethering$IPAddrType;->$VALUES:[Lcom/android/server/connectivity/Tethering$IPAddrType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/Tethering$IPAddrType;
    .locals 1
    .parameter "name"

    .prologue
    .line 105
    const-class v0, Lcom/android/server/connectivity/Tethering$IPAddrType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$IPAddrType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/Tethering$IPAddrType;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/server/connectivity/Tethering$IPAddrType;->$VALUES:[Lcom/android/server/connectivity/Tethering$IPAddrType;

    invoke-virtual {v0}, [Lcom/android/server/connectivity/Tethering$IPAddrType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/Tethering$IPAddrType;

    return-object v0
.end method
