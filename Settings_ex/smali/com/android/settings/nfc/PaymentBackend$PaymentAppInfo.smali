.class public Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
.super Ljava/lang/Object;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentAppInfo"
.end annotation


# instance fields
.field banner:Landroid/graphics/drawable/Drawable;

.field caption:Ljava/lang/CharSequence;

.field public componentName:Landroid/content/ComponentName;

.field isDefault:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
