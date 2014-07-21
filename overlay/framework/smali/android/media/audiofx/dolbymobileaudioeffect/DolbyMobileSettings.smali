.class public Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
.super Ljava/lang/Object;
.source "DolbyMobileSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;,
        Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;
    }
.end annotation


# static fields
.field public static final CHANS_C:I = 0x1

.field public static final CHANS_C_LFE:I = 0x10

.field public static final CHANS_L_C_R:I = 0x3

.field public static final CHANS_L_C_R_LFE:I = 0x12

.field public static final CHANS_L_C_R_Ls_Rs:I = 0x7

.field public static final CHANS_L_C_R_Ls_Rs_Cs:I = 0xa

.field public static final CHANS_L_C_R_Ls_Rs_Cs_LFE:I = 0x19

.field public static final CHANS_L_C_R_Ls_Rs_Cvh_Cs:I = 0xc

.field public static final CHANS_L_C_R_Ls_Rs_Cvh_Cs_LFE:I = 0x1b

.field public static final CHANS_L_C_R_Ls_Rs_LFE:I = 0x16

.field public static final CHANS_L_C_R_Ls_Rs_Lb_Rb:I = 0xe

.field public static final CHANS_L_C_R_Ls_Rs_Lb_Rb_LFE:I = 0x1d

.field public static final CHANS_L_C_R_Ls_Rs_Ts_Cs:I = 0xd

.field public static final CHANS_L_C_R_Ls_Rs_Ts_Cs_LFE:I = 0x1c

.field public static final CHANS_L_C_R_S:I = 0x5

.field public static final CHANS_L_C_R_S_LFE:I = 0x14

.field public static final CHANS_L_R:I = 0x2

.field public static final CHANS_L_R_LFE:I = 0x11

.field public static final CHANS_L_R_Ls_Rs:I = 0x6

.field public static final CHANS_L_R_Ls_Rs_Cs:I = 0x8

.field public static final CHANS_L_R_Ls_Rs_Cs_LFE:I = 0x17

.field public static final CHANS_L_R_Ls_Rs_LFE:I = 0x15

.field public static final CHANS_L_R_Ls_Rs_Lb_Rb:I = 0x9

.field public static final CHANS_L_R_Ls_Rs_Lb_Rb_LFE:I = 0x18

.field public static final CHANS_L_R_Ls_Rs_Ts_Cs:I = 0xb

.field public static final CHANS_L_R_Ls_Rs_Ts_Cs_LFE:I = 0x1a

.field public static final CHANS_L_R_S:I = 0x4

.field public static final CHANS_L_R_S_LFE:I = 0x13

.field public static final CHANS_RESERVED:I = 0x0

.field public static final CHANS_RESERVED_2:I = 0xf

.field public static final DMX_LFE_MIX_DEFAULT:I = 0xa

.field public static final FADE_ENABLE:I = 0x0

.field public static final FADE_PARAMLIST_LEN:I = 0x3

.field public static final FADE_TARGET:I = 0x1

.field public static final FADE_TIME:I = 0x2

.field public static final GEQ_BAND1:I = 0x4

.field public static final GEQ_BAND2:I = 0x5

.field public static final GEQ_BAND3:I = 0x6

.field public static final GEQ_BAND4:I = 0x7

.field public static final GEQ_BAND5:I = 0x8

.field public static final GEQ_BAND6:I = 0x9

.field public static final GEQ_BAND7:I = 0xa

.field public static final GEQ_ENABLE:I = 0x0

.field public static final GEQ_MAXBOOST:I = 0x3

.field public static final GEQ_NBANDS:I = 0x1

.field public static final GEQ_PARAMLIST_LEN:I = 0xb

.field public static final GEQ_PREAMP:I = 0x2

.field public static final HFE_DEPTH:I = 0x1

.field public static final HFE_ENABLE:I = 0x0

.field public static final HFE_PARAMLIST_LEN:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "DolbyMobileSettings"

.field public static final M2S_DETECTOR:I = 0x1

.field public static final M2S_ENABLE:I = 0x0

.field public static final M2S_PARAMLIST_LEN:I = 0x2

.field public static final MSR_BRIGHT:I = 0x2

.field public static final MSR_ENABLE:I = 0x0

.field public static final MSR_PARAMLIST_LEN:I = 0x3

.field public static final MSR_ROOM:I = 0x1

.field public static final MUP_ENABLE:I = 0x0

.field public static final MUP_PARAMLIST_LEN:I = 0x1

.field public static final NB_BOOST:I = 0x2

.field public static final NB_CUTOFF:I = 0x1

.field public static final NB_ENABLE:I = 0x0

.field public static final NB_LEVEL:I = 0x3

.field public static final NB_PARAMLIST_LEN:I = 0x4

.field public static final SAMPLERATE_11025:I = 0x7

.field public static final SAMPLERATE_12000:I = 0x6

.field public static final SAMPLERATE_16000:I = 0x5

.field public static final SAMPLERATE_22050:I = 0x4

.field public static final SAMPLERATE_24000:I = 0x3

.field public static final SAMPLERATE_32000:I = 0x2

.field public static final SAMPLERATE_44100:I = 0x1

.field public static final SAMPLERATE_48000:I = 0x0

.field public static final SAMPLERATE_8000:I = 0x8

.field public static final SLC_DEPTH:I = 0x2

.field public static final SLC_ENABLE:I = 0x0

.field public static final SLC_LEVEL:I = 0x1

.field public static final SLC_PARAMLIST_LEN:I = 0x3

.field public static final SPKEQ_CHGAIN_DB1:I = 0x1

.field public static final SPKEQ_CHGAIN_DB2:I = 0x2

.field public static final SPKEQ_ENABLE:I = 0x0

.field public static final SPKEQ_PARAMLIST_LEN:I = 0x3

.field public static final SSE_ENABLE:I = 0x0

.field public static final SSE_PARAMLIST_LEN:I = 0x3

.field public static final SSE_SPK_MODE:I = 0x2

.field public static final SSE_WIDTH:I = 0x1

.field public static final SSH_ENABLE:I = 0x0

.field public static final SSH_MODE:I = 0x1

.field public static final SSH_PARAMLIST_LEN:I = 0x2

.field public static final TDAS_BUNDLE:I = 0x0

.field public static final TDAS_BYPASS:I = 0x4

.field public static final TDAS_BYPASS_DISABLED:I = 0x0

.field public static final TDAS_BYPASS_HARD:I = 0x2

.field public static final TDAS_BYPASS_SOFT:I = 0x1

.field public static final TDAS_DOWNMIX_CONFIG:I = 0x7

.field public static final TDAS_FADE:I = 0xb

.field public static final TDAS_GEQ:I = 0x7

.field public static final TDAS_GEQ_LEVEL_RANGE:[I = null

.field public static final TDAS_GEQ_MAXBOOST_RANGE:[I = null

.field public static final TDAS_GEQ_NUMBEROFBANDS_RANGE:[I = null

.field public static final TDAS_GEQ_PREAMP_RANGE:[I = null

.field public static final TDAS_HFE:I = 0xa

.field public static final TDAS_HFE_DEPTH_RANGE:[I = null

.field public static final TDAS_IN_CHANS:I = 0x2

.field public static final TDAS_IN_CHAN_FORMAT:I = 0x6

.field public static final TDAS_IN_MATRIX:I = 0x3

.field public static final TDAS_IN_MATRIX_DEFAULT:I = 0x0

.field public static final TDAS_IN_MATRIX_DUALMONO:I = 0x3

.field public static final TDAS_IN_MATRIX_LEFT:I = 0x1

.field public static final TDAS_IN_MATRIX_PL2:I = 0x4

.field public static final TDAS_IN_MATRIX_RANGE:[I = null

.field public static final TDAS_IN_MATRIX_RIGHT:I = 0x2

.field public static final TDAS_IN_MATRIX_STEREO:I = 0x0

.field public static final TDAS_LFE_MIX_LEVEL:I = 0x8

.field public static final TDAS_LIMITER_TESTMODE:I = 0x10

.field public static final TDAS_M2S:I = 0x1

.field public static final TDAS_MSR:I = 0x9

.field public static final TDAS_MSR_BRIGHTNESS_BRIGHT:I = 0x2

.field public static final TDAS_MSR_BRIGHTNESS_NEUTRAL:I = 0x1

.field public static final TDAS_MSR_BRIGHTNESS_RANGE:[I = null

.field public static final TDAS_MSR_BRIGHTNESS_WARM:I = 0x0

.field public static final TDAS_MSR_DEF_MAX_PROFILE:I = 0x2

.field public static final TDAS_MSR_MAXIMUM_PROFILE_RANGE:[I = null

.field public static final TDAS_MSR_MAX_PROFILE:I = 0x9

.field public static final TDAS_MSR_MAX_PROFILE_FIVE:I = 0x2

.field public static final TDAS_MSR_MAX_PROFILE_FOUR:I = 0x1

.field public static final TDAS_MSR_MAX_PROFILE_SEVEN:I = 0x3

.field public static final TDAS_MSR_MAX_PROFILE_STEREO:I = 0x0

.field public static final TDAS_MSR_N_MAX_PROFILES:I = 0x4

.field public static final TDAS_MSR_ROOMSIZE_RANGE:[I = null

.field public static final TDAS_MSR_ROOM_SIZE_LARGE:I = 0x2

.field public static final TDAS_MSR_ROOM_SIZE_MEDIUM:I = 0x1

.field public static final TDAS_MSR_ROOM_SIZE_SMALL:I = 0x0

.field public static final TDAS_MUP:I = 0x8

.field public static final TDAS_NB:I = 0x6

.field public static final TDAS_NB_BOOST_RANGE:[I = null

.field public static final TDAS_NB_CUTOFF_RANGE:[I = null

.field public static final TDAS_NB_LEVEL_RANGE:[I = null

.field public static final TDAS_N_FEATURES:I = 0xd

.field public static final TDAS_N_IN_CHANS:I = 0x1e

.field public static final TDAS_OUT_CHANS:I = 0x11

.field public static final TDAS_PARAMLIST_LEN:I = 0x12

.field public static final TDAS_PORTABLEMODE:I = 0xb

.field public static final TDAS_PORTABLEMODE_GAIN:I = 0xc

.field public static final TDAS_PORTABLEMODE_GAIN_DEF:I = 0x0

.field public static final TDAS_PORTABLEMODE_GAIN_MAX:I = 0xa0

.field public static final TDAS_PORTABLEMODE_GAIN_MIN:I = -0x2c

.field public static final TDAS_PORTABLEMODE_GAIN_SCALE:I = 0x2

.field public static final TDAS_PORTABLEMODE_ORL:I = 0xd

.field public static final TDAS_PORTABLEMODE_ORL_11DB:I = 0x1

.field public static final TDAS_PORTABLEMODE_ORL_14DB:I = 0x2

.field public static final TDAS_PORTABLEMODE_ORL_8DB:I = 0x0

.field public static final TDAS_PORTABLEMODE_ORL_DEF:I = 0x1

.field public static final TDAS_PULSEDOWNMIX:I = 0xe

.field public static final TDAS_PULSEDOWNMIX_ATTEN:I = 0xf

.field public static final TDAS_RATE_MULTIPLIER:I = 0x5

.field public static final TDAS_REVISION:I = 0xa

.field public static final TDAS_SAMPLERATE:I = 0x1

.field public static final TDAS_SEQ:I = 0xc

.field public static final TDAS_SEQ_LEFT_LEVEL_RANGE:[I = null

.field public static final TDAS_SEQ_RIGHT_LEVEL_RANGE:[I = null

.field public static final TDAS_SLC:I = 0x4

.field public static final TDAS_SLC_DEPTH_RANGE:[I = null

.field public static final TDAS_SLC_LEVEL_RANGE:[I = null

.field public static final TDAS_SSE:I = 0x2

.field public static final TDAS_SSE_SPK_MODE_BINAURAL:I = 0x2

.field public static final TDAS_SSE_SPK_MODE_NARROW:I = 0x1

.field public static final TDAS_SSE_SPK_MODE_NORMAL:I = 0x0

.field public static final TDAS_SSE_SPK_MODE_RANGE:[I = null

.field public static final TDAS_SSE_WIDTH_FULL:I = 0x1

.field public static final TDAS_SSE_WIDTH_HALF:I = 0x0

.field public static final TDAS_SSE_WIDTH_RANGE:[I = null

.field public static final TDAS_SSH:I = 0x3

.field public static final TDAS_VERSION:I = 0x0

.field public static final TDAS_VOL:I = 0x5

.field public static final VOL_BALANCE:I = 0x4

.field public static final VOL_ENABLE:I = 0x0

.field public static final VOL_GAIN_EXTERNAL:I = 0x2

.field public static final VOL_GAIN_INTERNAL:I = 0x1

.field public static final VOL_GAIN_TYPE:I = 0x3

.field public static final VOL_MUTE:I = 0x5

.field public static final VOL_PARAMLIST_LEN:I = 0x6

.field private static _settingsDefaults:[I

.field private static _settingsDefinitions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x7

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 32
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_HFE_DEPTH_RANGE:[I

    .line 33
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_LEVEL_RANGE:[I

    .line 34
    new-array v2, v5, [I

    fill-array-data v2, :array_2

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_DEPTH_RANGE:[I

    .line 35
    new-array v2, v5, [I

    fill-array-data v2, :array_3

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_GEQ_LEVEL_RANGE:[I

    .line 36
    new-array v2, v5, [I

    fill-array-data v2, :array_4

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_NB_BOOST_RANGE:[I

    .line 37
    new-array v2, v5, [I

    fill-array-data v2, :array_5

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_NB_CUTOFF_RANGE:[I

    .line 38
    new-array v2, v5, [I

    fill-array-data v2, :array_6

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_NB_LEVEL_RANGE:[I

    .line 39
    new-array v2, v5, [I

    fill-array-data v2, :array_7

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_MSR_ROOMSIZE_RANGE:[I

    .line 40
    new-array v2, v5, [I

    fill-array-data v2, :array_8

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_MSR_BRIGHTNESS_RANGE:[I

    .line 41
    new-array v2, v5, [I

    fill-array-data v2, :array_9

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_MSR_MAXIMUM_PROFILE_RANGE:[I

    .line 42
    new-array v2, v5, [I

    fill-array-data v2, :array_a

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_IN_MATRIX_RANGE:[I

    .line 43
    new-array v2, v5, [I

    fill-array-data v2, :array_b

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SSE_SPK_MODE_RANGE:[I

    .line 44
    new-array v2, v5, [I

    fill-array-data v2, :array_c

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SSE_WIDTH_RANGE:[I

    .line 45
    new-array v2, v5, [I

    fill-array-data v2, :array_d

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SEQ_LEFT_LEVEL_RANGE:[I

    .line 46
    new-array v2, v5, [I

    fill-array-data v2, :array_e

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SEQ_RIGHT_LEVEL_RANGE:[I

    .line 47
    new-array v2, v5, [I

    fill-array-data v2, :array_f

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_GEQ_MAXBOOST_RANGE:[I

    .line 48
    new-array v2, v5, [I

    fill-array-data v2, :array_10

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_GEQ_PREAMP_RANGE:[I

    .line 49
    new-array v2, v5, [I

    fill-array-data v2, :array_11

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_GEQ_NUMBEROFBANDS_RANGE:[I

    .line 343
    const/16 v2, 0x26

    new-array v1, v2, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    new-instance v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    invoke-direct {v2, v6, v9, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(III)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-direct {v2, v6, v3, v4}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(III)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v3, 0x9

    invoke-direct {v2, v6, v3, v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(III)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v3, 0xb

    invoke-direct {v2, v6, v3}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v2, v1, v9

    const/4 v2, 0x4

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v4, 0xc

    invoke-direct {v3, v6, v4, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(III)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v4, 0xd

    invoke-direct {v3, v6, v4, v8}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(III)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    invoke-direct {v3, v8, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    new-instance v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    invoke-direct {v2, v5, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v2, v1, v7

    const/16 v2, 0x8

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    invoke-direct {v3, v5, v8}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    invoke-direct {v3, v5, v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    invoke-direct {v3, v9, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    invoke-direct {v3, v9, v8}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v8}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v8}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v9}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    invoke-direct {v3, v7, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    invoke-direct {v3, v7, v8, v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(III)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    invoke-direct {v3, v7, v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    invoke-direct {v3, v7, v9}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/4 v4, 0x4

    invoke-direct {v3, v7, v4}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/4 v4, 0x5

    invoke-direct {v3, v7, v4}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/4 v4, 0x6

    invoke-direct {v3, v7, v4}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    invoke-direct {v3, v7, v7}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v4, 0x8

    invoke-direct {v3, v7, v4}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v4, 0x9

    invoke-direct {v3, v7, v4}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v4, 0xa

    invoke-direct {v3, v7, v4}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v8}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v8}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v8}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-instance v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;-><init>(II)V

    aput-object v3, v1, v2

    .line 388
    .local v1, settingsAndDefaults:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_settingsDefinitions:Ljava/util/LinkedHashMap;

    .line 389
    array-length v2, v1

    new-array v2, v2, [I

    sput-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_settingsDefaults:[I

    .line 390
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 392
    sget-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_settingsDefinitions:Ljava/util/LinkedHashMap;

    aget-object v3, v1, v0

    iget-object v3, v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;->setting:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_settingsDefaults:[I

    aget-object v3, v1, v0

    iget v3, v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefnDefault;->value:I

    aput v3, v2, v0

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_0
    return-void

    .line 32
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 33
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 34
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 35
    :array_3
    .array-data 0x4
        0xd0t 0xfft 0xfft 0xfft
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    .line 36
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 37
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
    .end array-data

    .line 38
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 39
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 40
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 41
    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 42
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 43
    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 44
    :array_c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 45
    :array_d
    .array-data 0x4
        0xe8t 0xfft 0xfft 0xfft
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_e
    .array-data 0x4
        0xe8t 0xfft 0xfft 0xfft
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    .line 47
    :array_f
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    .line 48
    :array_10
    .array-data 0x4
        0xd0t 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 49
    :array_11
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_settingsDefaults:[I

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_settingsDefaults:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_values:[I

    .line 414
    return-void
.end method

.method public constructor <init>(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->getValues()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->getValues()[I

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_values:[I

    .line 423
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 432
    invoke-direct {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>()V

    .line 433
    invoke-virtual {p0, p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set([[I)V

    .line 434
    return-void
.end method

.method public static GetNumSettingsPerDevice()I
    .locals 1

    .prologue
    .line 281
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_settingsDefinitions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method static GetSettingsDefinitions()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_settingsDefinitions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static GetTdasSettingIndex(II)I
    .locals 3
    .parameter "feature"
    .parameter "parameter"

    .prologue
    .line 273
    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_settingsDefinitions:Ljava/util/LinkedHashMap;

    new-instance v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;

    invoke-direct {v2, p0, p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 274
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getRange([I)I
    .locals 2
    .parameter "rangeOfTwoValues"

    .prologue
    .line 498
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 499
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of elements in this array is not equal to 2. This is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x0

    aget v1, p0, v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public get(II)I
    .locals 3
    .parameter "feature"
    .parameter "parameter"

    .prologue
    .line 489
    invoke-static {p1, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->GetTdasSettingIndex(II)I

    move-result v0

    .line 490
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 491
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The feature and parameter combination is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 493
    :cond_0
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_values:[I

    aget v1, v1, v0

    return v1
.end method

.method getValues()[I
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_values:[I

    return-object v0
.end method

.method public set(III)V
    .locals 3
    .parameter "feature"
    .parameter "parameter"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-static {p1, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->GetTdasSettingIndex(II)I

    move-result v0

    .line 473
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 474
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The feature and parameter combination is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :cond_0
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->_values:[I

    aput p3, v1, v0

    .line 478
    return-void
.end method

.method public set([[I)V
    .locals 7
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 454
    move-object v0, p1

    .local v0, arr$:[[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 456
    .local v1, fpv:[I
    array-length v4, v1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 457
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Each setting must contain an array of 3 ints declared as int[3]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 458
    :cond_0
    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    const/4 v6, 0x2

    aget v6, v1, v6

    invoke-virtual {p0, v4, v5, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    .end local v1           #fpv:[I
    :cond_1
    return-void
.end method
