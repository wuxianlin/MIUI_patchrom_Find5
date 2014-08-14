.class final Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SharedLibraryEntry"
.end annotation


# instance fields
.field final apk:Ljava/lang/String;

.field final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "_path"
    .parameter "_apk"

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;->path:Ljava/lang/String;

    .line 425
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;->apk:Ljava/lang/String;

    .line 426
    return-void
.end method
