.class public Landroid/wipower/WipowerDynamicParam;
.super Ljava/lang/Object;
.source "WipowerDynamicParam.java"


# static fields
.field private static final IREG_ADC_TO_mA_RATIO:F = 4.765625f

.field private static final LOGTAG:Ljava/lang/String; = "WipowerDynamicParam"

.field private static final LSB_MASK:I = 0xff

.field private static final MSB_MASK:I = 0xff00

.field private static final VDBG:Z = false

.field private static final VREG_ADC_TO_mV_RATIO:F = 95.3125f


# instance fields
.field private mAlert:B

.field private mMaxRectVoltageDyn:S

.field private mMinRectVoltageDyn:S

.field private mOptValidity:B

.field private mOutputCurrent:S

.field private mOutputVoltage:S

.field private mRectCurrent:S

.field private mRectVoltage:S

.field private mReserved1:S

.field private mReserved2:B

.field private mSetRectVoltageDyn:S

.field private mTemperature:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    .line 71
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    .line 72
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    .line 73
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 74
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 75
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    .line 76
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 77
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 78
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 79
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    .line 80
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 81
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved2:B

    .line 82
    return-void
.end method

.method public static IREG_ADC_TO_mA(S)S
    .locals 2
    .parameter "adc"

    .prologue
    .line 169
    int-to-float v0, p0

    const v1, 0x40988000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public static VREG_ADC_TO_mV(S)S
    .locals 2
    .parameter "adc"

    .prologue
    .line 165
    int-to-float v0, p0

    const v1, 0x42bea000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method private static toHex(I)Ljava/lang/String;
    .locals 4
    .parameter "num"

    .prologue
    .line 89
    const-string v0, "0x%8s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsigned(B)S
    .locals 1
    .parameter "b"

    .prologue
    .line 161
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public getValue()[B
    .locals 5

    .prologue
    const/16 v4, 0x10

    const v3, 0xff00

    .line 116
    const/16 v1, 0x14

    new-array v0, v1, [B

    .line 117
    .local v0, res:[B
    invoke-virtual {p0}, Landroid/wipower/WipowerDynamicParam;->print()V

    .line 118
    const/4 v1, 0x0

    iget-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    aput-byte v2, v0, v1

    .line 119
    const/4 v1, 0x1

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 120
    const/4 v1, 0x2

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 121
    const/4 v1, 0x3

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 122
    const/4 v1, 0x4

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 123
    const/4 v1, 0x5

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 124
    const/4 v1, 0x6

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 125
    const/4 v1, 0x7

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 126
    const/16 v1, 0x8

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 127
    const/16 v1, 0x9

    iget-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    aput-byte v2, v0, v1

    .line 128
    const/16 v1, 0xa

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 129
    const/16 v1, 0xb

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 130
    const/16 v1, 0xc

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 131
    const/16 v1, 0xd

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 132
    const/16 v1, 0xe

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 133
    const/16 v1, 0xf

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 135
    iget-byte v1, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    .line 136
    iget-byte v1, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    xor-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 141
    :goto_0
    const-string v1, "WipowerDynamicParam"

    const-string v2, "mPruDynamicParam.getValue"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-object v0

    .line 138
    :cond_0
    iget-byte v1, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    aput-byte v1, v0, v4

    goto :goto_0
.end method

.method print()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method resetValues()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    .line 147
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    .line 148
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    .line 149
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 150
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 151
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    .line 152
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 153
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 154
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 155
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    .line 156
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 157
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved2:B

    .line 158
    return-void
.end method

.method public setAppValue([B)V
    .locals 2
    .parameter "value"

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/wipower/WipowerDynamicParam;->resetValues()V

    .line 222
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    .line 223
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    .line 224
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    .line 225
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    .line 226
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    .line 227
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 228
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 229
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 230
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    const/16 v1, 0x8

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 231
    const/16 v0, 0x9

    aget-byte v0, p1, v0

    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    .line 232
    const/16 v0, 0xa

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 233
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 234
    const/16 v0, 0xc

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 235
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    const/16 v1, 0xd

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 236
    const/16 v0, 0xe

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 237
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 239
    const/16 v0, 0x10

    aget-byte v0, p1, v0

    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    .line 240
    const/16 v0, 0x11

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 241
    const/16 v0, 0x12

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 242
    const/16 v0, 0x13

    aget-byte v0, p1, v0

    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved2:B

    .line 243
    const-string v0, "WipowerDynamicParam"

    const-string v1, "mPruDynamicParam.setAppValue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Landroid/wipower/WipowerDynamicParam;->print()V

    .line 245
    return-void
.end method

.method public setValue([B)V
    .locals 5
    .parameter "value"

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, tempmRectVoltage:S
    const/4 v0, 0x0

    .line 181
    .local v0, tempmRectCurrent:S
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    .line 182
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    or-int/2addr v2, v1

    int-to-short v1, v2

    .line 183
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    .line 184
    const/4 v2, 0x4

    aget-byte v2, p1, v2

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    or-int/2addr v2, v0

    int-to-short v0, v2

    .line 186
    const-string v2, "WipowerDynamicParam"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tempmRectVoltage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "tempmRectCurrent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Landroid/wipower/WipowerDynamicParam;->resetValues()V

    .line 189
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    iput-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    .line 191
    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->VREG_ADC_TO_mV(S)S

    move-result v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    .line 192
    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->IREG_ADC_TO_mA(S)S

    move-result v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    .line 193
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 194
    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    invoke-static {v3}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 195
    const/4 v2, 0x7

    aget-byte v2, p1, v2

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 196
    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    const/16 v3, 0x8

    aget-byte v3, p1, v3

    invoke-static {v3}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 197
    const/16 v2, 0x9

    aget-byte v2, p1, v2

    iput-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    .line 198
    const/16 v2, 0xa

    aget-byte v2, p1, v2

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 199
    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    const/16 v3, 0xb

    aget-byte v3, p1, v3

    invoke-static {v3}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 200
    const/16 v2, 0xc

    aget-byte v2, p1, v2

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 201
    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    invoke-static {v3}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 202
    const/16 v2, 0xe

    aget-byte v2, p1, v2

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 203
    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    const/16 v3, 0xf

    aget-byte v3, p1, v3

    invoke-static {v3}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 205
    const/16 v2, 0x10

    aget-byte v2, p1, v2

    iput-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    .line 206
    const/16 v2, 0x11

    aget-byte v2, p1, v2

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 207
    const/16 v2, 0x12

    aget-byte v2, p1, v2

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    iput-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 208
    const/16 v2, 0x13

    aget-byte v2, p1, v2

    iput-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mReserved2:B

    .line 209
    const-string v2, "WipowerDynamicParam"

    const-string v3, "mPruDynamicParam.setValue"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Landroid/wipower/WipowerDynamicParam;->print()V

    .line 211
    return-void
.end method
