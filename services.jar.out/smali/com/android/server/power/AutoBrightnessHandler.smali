.class public Lcom/android/server/power/AutoBrightnessHandler;
.super Ljava/lang/Object;
.source "AutoBrightnessHandler.java"


# static fields
.field private static final ALT_BRIGHTNESS_PROP:Ljava/lang/String; = "persist.sys.alt.brightness"

.field private static final NODE:Ljava/lang/String; = "/sys/class/lcd/panel/panel/auto_brightness"

.field private static final PANEL_MANUAL:I


# instance fields
.field private final mPanelAutoValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/AutoBrightnessHandler;->mPanelAutoValue:I

    .line 50
    return-void
.end method

.method private static writeValue(Ljava/lang/String;I)V
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 62
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 63
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 64
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 65
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onAutoBrightnessChanged(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, -0x1

    .line 53
    iget v1, p0, Lcom/android/server/power/AutoBrightnessHandler;->mPanelAutoValue:I

    if-le v1, v3, :cond_0

    .line 54
    const-string v1, "persist.sys.alt.brightness"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, "override":I
    const-string v1, "/sys/class/lcd/panel/panel/auto_brightness"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    if-le v0, v3, :cond_1

    .end local v0    # "override":I
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/AutoBrightnessHandler;->writeValue(Ljava/lang/String;I)V

    .line 58
    :cond_0
    return-void

    .line 55
    .restart local v0    # "override":I
    :cond_1
    iget v0, p0, Lcom/android/server/power/AutoBrightnessHandler;->mPanelAutoValue:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
