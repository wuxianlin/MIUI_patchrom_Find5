.class final enum Lcom/android/internal/telephony/ExtCallManager$LchState;
.super Ljava/lang/Enum;
.source "ExtCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ExtCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/ExtCallManager$LchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/ExtCallManager$LchState;

.field public static final enum ACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

.field public static final enum INACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/android/internal/telephony/ExtCallManager$LchState;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/ExtCallManager$LchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ExtCallManager$LchState;->INACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/ExtCallManager$LchState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/ExtCallManager$LchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ExtCallManager$LchState;->ACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/ExtCallManager$LchState;

    sget-object v1, Lcom/android/internal/telephony/ExtCallManager$LchState;->INACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/ExtCallManager$LchState;->ACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/ExtCallManager$LchState;->$VALUES:[Lcom/android/internal/telephony/ExtCallManager$LchState;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/ExtCallManager$LchState;
    .locals 1
    .parameter "name"

    .prologue
    .line 78
    const-class v0, Lcom/android/internal/telephony/ExtCallManager$LchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ExtCallManager$LchState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/ExtCallManager$LchState;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/telephony/ExtCallManager$LchState;->$VALUES:[Lcom/android/internal/telephony/ExtCallManager$LchState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/ExtCallManager$LchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/ExtCallManager$LchState;

    return-object v0
.end method
