.class public Lcom/android/settings/profiles/AbstractTriggerPreference;
.super Landroid/preference/Preference;
.source "AbstractTriggerPreference.java"


# instance fields
.field private mTriggerState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/profiles/AbstractTriggerPreference;->mTriggerState:I

    .line 27
    return-void
.end method


# virtual methods
.method public getTriggerState()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings/profiles/AbstractTriggerPreference;->mTriggerState:I

    return v0
.end method

.method public setTriggerState(I)V
    .locals 0
    .parameter "trigger"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/profiles/AbstractTriggerPreference;->mTriggerState:I

    .line 33
    return-void
.end method
