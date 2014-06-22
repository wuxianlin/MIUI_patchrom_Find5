.class public abstract Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CaptioningChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 376
    return-void
.end method

.method public onFontScaleChanged(F)V
    .locals 0
    .parameter "fontScale"

    .prologue
    .line 403
    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 394
    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 0
    .parameter "userStyle"

    .prologue
    .line 385
    return-void
.end method
