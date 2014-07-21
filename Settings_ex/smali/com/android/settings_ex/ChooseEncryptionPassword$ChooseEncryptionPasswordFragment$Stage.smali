.class public final enum Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseEncryptionPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v5, 0x7f080566

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 127
    new-instance v0, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    const-string v1, "Introduction"

    const v3, 0x7f0800af

    const v4, 0x7f0807d7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    .line 131
    new-instance v6, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    const-string v7, "NeedToConfirm"

    const v9, 0x7f0807d8

    const v10, 0x7f0807da

    const v11, 0x7f080570

    invoke-direct/range {v6 .. v11}, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    .line 135
    new-instance v9, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    const-string v10, "ConfirmWrong"

    const v12, 0x7f0807db

    const v13, 0x7f0807dc

    move v11, v15

    move v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->$VALUES:[Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "hintInAlpha"
    .parameter "hintInNumeric"
    .parameter "nextButtonText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    iput p3, p0, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->alphaHint:I

    .line 144
    iput p4, p0, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->numericHint:I

    .line 145
    iput p5, p0, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->buttonText:I

    .line 146
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;
    .locals 1
    .parameter

    .prologue
    .line 125
    const-class v0, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->$VALUES:[Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/ChooseEncryptionPassword$ChooseEncryptionPasswordFragment$Stage;

    return-object v0
.end method
