.class Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
.super Ljava/util/ArrayList;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NeededUriGrants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final flags:I

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "targetPkg"
    .parameter "targetUid"
    .parameter "flags"

    .prologue
    .line 6233
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6234
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetPkg:Ljava/lang/String;

    .line 6235
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetUid:I

    .line 6236
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->flags:I

    .line 6237
    return-void
.end method
