.class Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;
.super Landroid/opengl/GLSurfaceView$ComponentSizeChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;Z)V
    .locals 8
    .parameter
    .parameter "withDepthBuffer"

    .prologue
    const/4 v0, 0x5

    const/16 v1, 0x8

    const/4 v5, 0x0

    .line 978
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    .line 979
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    :goto_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$300()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v0

    :goto_2
    if-eqz p2, :cond_3

    const/16 v6, 0x10

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move v7, v5

    invoke-direct/range {v0 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Landroid/opengl/GLSurfaceView;IIIIII)V

    .line 980
    return-void

    :cond_0
    move v2, v1

    .line 979
    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    move v4, v1

    goto :goto_2

    :cond_3
    move v6, v5

    goto :goto_3
.end method
