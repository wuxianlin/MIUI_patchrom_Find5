.class public final enum Landroid/telephony/MSimTelephonyManager$MultiSimVariants;
.super Ljava/lang/Enum;
.source "MSimTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MSimTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiSimVariants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/MSimTelephonyManager$MultiSimVariants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

.field public static final enum DSDA:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

.field public static final enum DSDS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

.field public static final enum TSTS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

.field public static final enum UNKNOWN:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    const-string v1, "DSDS"

    invoke-direct {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    .line 78
    new-instance v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    const-string v1, "DSDA"

    invoke-direct {v0, v1, v3}, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    .line 79
    new-instance v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    const-string v1, "TSTS"

    invoke-direct {v0, v1, v4}, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    .line 80
    new-instance v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    aput-object v1, v0, v2

    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    aput-object v1, v0, v4

    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    aput-object v1, v0, v5

    sput-object v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->$VALUES:[Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/MSimTelephonyManager$MultiSimVariants;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    return-object v0
.end method

.method public static values()[Landroid/telephony/MSimTelephonyManager$MultiSimVariants;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->$VALUES:[Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    invoke-virtual {v0}, [Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    return-object v0
.end method
