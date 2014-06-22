.class Lcom/android/server/ThemeService$ThemeData;
.super Ljava/lang/Object;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeData"
.end annotation


# instance fields
.field components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ThemeService;


# direct methods
.method public constructor <init>(Lcom/android/server/ThemeService;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "pkgName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p3, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/ThemeService$ThemeData;->this$0:Lcom/android/server/ThemeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/android/server/ThemeService$ThemeData;->pkgName:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/android/server/ThemeService$ThemeData;->components:Ljava/util/List;

    .line 125
    return-void
.end method
