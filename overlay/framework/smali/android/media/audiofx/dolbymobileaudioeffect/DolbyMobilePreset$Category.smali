.class public final enum Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;
.super Ljava/lang/Enum;
.source "DolbyMobilePreset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category; = null

.field private static final CATEGORY:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category; = null

.field public static final COUNT:I = 0x4

.field public static final enum GAME:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

.field public static final enum MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

.field public static final enum MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

.field private static final NAME:[Ljava/lang/String;

.field public static final enum VOICE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;


# instance fields
.field private _value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v2, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    .line 43
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    const-string v1, "MOVIE"

    invoke-direct {v0, v1, v3, v3}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    .line 44
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v4, v4}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->GAME:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    .line 45
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v5, v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->VOICE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    .line 40
    new-array v0, v6, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    aput-object v1, v0, v3

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->GAME:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    aput-object v1, v0, v4

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->VOICE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->$VALUES:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    .line 67
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Music"

    aput-object v1, v0, v2

    const-string v1, "Movie"

    aput-object v1, v0, v3

    const-string v1, "Game"

    aput-object v1, v0, v4

    const-string v1, "Voice"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->NAME:[Ljava/lang/String;

    .line 68
    new-array v0, v6, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    aput-object v1, v0, v3

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->GAME:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    aput-object v1, v0, v4

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->VOICE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->CATEGORY:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->_value:I

    return-void
.end method

.method public static FromInt(I)Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;
    .locals 1
    .parameter "i"

    .prologue
    .line 66
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->CATEGORY:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;
    .locals 1
    .parameter "name"

    .prologue
    .line 40
    const-class v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    return-object v0
.end method

.method public static values()[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->$VALUES:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-virtual {v0}, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->_value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->NAME:[Ljava/lang/String;

    iget v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->_value:I

    aget-object v0, v0, v1

    return-object v0
.end method
