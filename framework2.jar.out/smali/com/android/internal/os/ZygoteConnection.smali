.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteConnection$Arguments;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_MILLIS:I = 0x3e8

.field private static final MAX_ZYGOTE_ARGC:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final intArray2d:[[I


# instance fields
.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final mSocketReader:Ljava/io/BufferedReader;

.field private final peer:Landroid/net/Credentials;

.field private final peerSecurityContext:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    return-void
.end method

.method constructor <init>(Landroid/net/LocalSocket;)V
    .locals 4
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 88
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 91
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    .line 94
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SELinux;->getPeerContext(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peerSecurityContext:Ljava/lang/String;

    .line 104
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    throw v0
.end method

.method private static applyCapabilitiesSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V
    .locals 12
    .parameter "args"
    .parameter "peer"
    .parameter "peerSecurityContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const-wide/16 v8, 0x0

    .line 758
    iget-wide v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    iget-wide v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    .line 807
    :cond_0
    return-void

    .line 764
    :cond_1
    const-string v4, "zygote"

    const-string v5, "specifycapabilities"

    invoke-static {p2, p2, v4, v5}, Landroid/os/SELinux;->checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 768
    .local v0, allowed:Z
    if-nez v0, :cond_2

    .line 769
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "Peer may not specify capabilities"

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 773
    :cond_2
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v4

    if-eqz v4, :cond_0

    .line 781
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Credentials;->getPid()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->capgetPermitted(I)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 792
    .local v2, permittedCaps:J
    iget-wide v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    xor-long/2addr v4, v10

    iget-wide v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 793
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "Effective capabilities cannot be superset of  permitted capabilities"

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 782
    .end local v2           #permittedCaps:J
    :catch_0
    move-exception v1

    .line 783
    .local v1, ex:Ljava/io/IOException;
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "Error retrieving peer\'s capabilities."

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 803
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v2       #permittedCaps:J
    :cond_3
    xor-long v4, v2, v10

    iget-wide v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 804
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "Peer specified unpermitted capabilities"

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 701
    const-string v0, "1"

    const-string v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 704
    :cond_0
    return-void
.end method

.method private static applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V
    .locals 4
    .parameter "args"
    .parameter "peer"
    .parameter "peerSecurityContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    .line 825
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    .line 827
    .local v1, peerUid:I
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 828
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "Peer is not permitted to specify an explicit invoke-with wrapper command"

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 832
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 833
    const-string v2, "zygote"

    const-string v3, "specifyinvokewith"

    invoke-static {p2, p2, v2, v3}, Landroid/os/SELinux;->checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 837
    .local v0, allowed:Z
    if-nez v0, :cond_1

    .line 838
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "Peer is not permitted to specify an explicit invoke-with wrapper command"

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 842
    .end local v0           #allowed:Z
    :cond_1
    return-void
.end method

.method public static applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 4
    .parameter "args"

    .prologue
    const/16 v3, 0x1f

    .line 885
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 886
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, property:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 889
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 891
    :cond_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 892
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 893
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 897
    .end local v0           #property:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static applyRlimitSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V
    .locals 4
    .parameter "args"
    .parameter "peer"
    .parameter "peerSecurityContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    .line 724
    .local v1, peerUid:I
    if-eqz v1, :cond_0

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 726
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 727
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "This UID may not specify rlimits."

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 732
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 733
    const-string v2, "zygote"

    const-string v3, "specifyrlimits"

    invoke-static {p2, p2, v2, v3}, Landroid/os/SELinux;->checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 737
    .local v0, allowed:Z
    if-nez v0, :cond_1

    .line 738
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "Peer may not specify rlimits"

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 742
    .end local v0           #allowed:Z
    :cond_1
    return-void
.end method

.method private static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V
    .locals 7
    .parameter "args"
    .parameter "peer"
    .parameter "peerSecurityContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3e8

    const/4 v4, 0x1

    .line 638
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v2

    .line 640
    .local v2, peerUid:I
    if-nez v2, :cond_2

    .line 668
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-eqz v5, :cond_6

    .line 669
    :cond_1
    const-string v5, "zygote"

    const-string v6, "specifyids"

    invoke-static {p2, p2, v5, v6}, Landroid/os/SELinux;->checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 673
    .local v0, allowed:Z
    if-nez v0, :cond_6

    .line 674
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "Peer may not specify uid\'s or gid\'s"

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 642
    .end local v0           #allowed:Z
    :cond_2
    if-ne v2, v6, :cond_4

    .line 644
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, factoryTest:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 653
    .local v3, uidRestricted:Z
    :goto_0
    if-eqz v3, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-ge v5, v6, :cond_0

    .line 655
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "System UID may not launch process with UID < 1000"

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 650
    .end local v3           #uidRestricted:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 661
    .end local v1           #factoryTest:Ljava/lang/String;
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-eqz v5, :cond_0

    .line 663
    :cond_5
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "App UIDs may not specify uid\'s or gid\'s"

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 680
    :cond_6
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v5, :cond_7

    .line 681
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 682
    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 684
    :cond_7
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v5, :cond_8

    .line 685
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 686
    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 688
    :cond_8
    return-void
.end method

.method private static applyseInfoSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V
    .locals 4
    .parameter "args"
    .parameter "peer"
    .parameter "peerSecurityContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    .line 854
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    .line 856
    .local v1, peerUid:I
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 876
    :cond_0
    return-void

    .line 861
    :cond_1
    if-eqz v1, :cond_2

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    .line 863
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "This UID may not specify SELinux info."

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 867
    :cond_2
    const-string v2, "zygote"

    const-string v3, "specifyseinfo"

    invoke-static {p2, p2, v2, v3}, Landroid/os/SELinux;->checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 871
    .local v0, allowed:Z
    if-nez v0, :cond_0

    .line 872
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "Peer may not specify SELinux info"

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    .locals 13
    .parameter "parsedArgs"
    .parameter "descriptors"
    .parameter "pipeFd"
    .parameter "newStderr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 924
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 926
    if-eqz p2, :cond_1

    .line 928
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, p2, v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    const/4 v11, 0x2

    aget-object v11, p2, v11

    invoke-static {v9, v10, v11}, Lcom/android/internal/os/ZygoteInit;->reopenStdio(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 931
    move-object v1, p2

    .local v1, arr$:[Ljava/io/FileDescriptor;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v1, v6

    .line 932
    .local v5, fd:Ljava/io/FileDescriptor;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 931
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 934
    .end local v5           #fd:Ljava/io/FileDescriptor;
    :cond_0
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .end local v1           #arr$:[Ljava/io/FileDescriptor;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_1
    :goto_1
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 941
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 944
    :cond_2
    iget-boolean v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeInit:Z

    if-eqz v9, :cond_4

    .line 945
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 946
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v11, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v12, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v9, v10, v11, v0, v12}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 986
    :goto_2
    return-void

    .line 935
    :catch_0
    move-exception v4

    .line 936
    .local v4, ex:Ljava/io/IOException;
    const-string v9, "Zygote"

    const-string v10, "Error reopening stdio"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 950
    .end local v4           #ex:Ljava/io/IOException;
    :cond_3
    iget v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v10, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;)V

    goto :goto_2

    .line 956
    :cond_4
    :try_start_1
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v2, v9, v10
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 963
    .local v2, className:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    new-array v8, v9, [Ljava/lang/String;

    .line 964
    .local v8, mainArgs:[Ljava/lang/String;
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x0

    array-length v12, v8

    invoke-static {v9, v10, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 967
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 968
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    invoke-static {v9, v10, v2, v8}, Lcom/android/internal/os/WrapperInit;->execStandalone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 957
    .end local v2           #className:Ljava/lang/String;
    .end local v8           #mainArgs:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 958
    .local v4, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v9, "Missing required class name argument"

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v9, v10}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 972
    .end local v4           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2       #className:Ljava/lang/String;
    .restart local v8       #mainArgs:[Ljava/lang/String;
    :cond_5
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 973
    new-instance v3, Ldalvik/system/PathClassLoader;

    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 980
    .local v3, cloader:Ljava/lang/ClassLoader;
    :goto_3
    :try_start_2
    invoke-static {v3, v2, v8}, Lcom/android/internal/os/ZygoteInit;->invokeStaticMain(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 981
    :catch_2
    move-exception v4

    .line 982
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v9, "Error starting."

    move-object/from16 v0, p4

    invoke-static {v0, v9, v4}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 976
    .end local v3           #cloader:Ljava/lang/ClassLoader;
    .end local v4           #ex:Ljava/lang/RuntimeException;
    :cond_6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .restart local v3       #cloader:Ljava/lang/ClassLoader;
    goto :goto_3
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    .locals 12
    .parameter "pid"
    .parameter "descriptors"
    .parameter "pipeFd"
    .parameter "parsedArgs"

    .prologue
    .line 1003
    if-lez p1, :cond_0

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    .line 1007
    :cond_0
    if-eqz p2, :cond_1

    .line 1008
    move-object v0, p2

    .local v0, arr$:[Ljava/io/FileDescriptor;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v2, v0, v3

    .line 1009
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1008
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1013
    .end local v0           #arr$:[Ljava/io/FileDescriptor;
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #i$:I
    .end local v6           #len$:I
    :cond_1
    const/4 v8, 0x0

    .line 1014
    .local v8, usingWrapper:Z
    if-eqz p3, :cond_3

    if-lez p1, :cond_3

    .line 1015
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1016
    .local v5, is:Ljava/io/DataInputStream;
    const/4 v4, -0x1

    .line 1018
    .local v4, innerPid:I
    :try_start_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1023
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1030
    :goto_1
    if-lez v4, :cond_3

    .line 1031
    move v7, v4

    .line 1032
    .local v7, parentPid:I
    :goto_2
    if-lez v7, :cond_2

    if-eq v7, p1, :cond_2

    .line 1033
    invoke-static {v7}, Landroid/os/Process;->getParentPid(I)I

    move-result v7

    goto :goto_2

    .line 1019
    .end local v7           #parentPid:I
    :catch_0
    move-exception v1

    .line 1020
    .local v1, ex:Ljava/io/IOException;
    :try_start_2
    const-string v9, "Zygote"

    const-string v10, "Error reading pid from wrapped process, child may have died"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1023
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1024
    :catch_1
    move-exception v9

    goto :goto_1

    .line 1022
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1023
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1025
    :goto_3
    throw v9

    .line 1035
    .restart local v7       #parentPid:I
    :cond_2
    if-lez v7, :cond_4

    .line 1036
    const-string v9, "Zygote"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrapped process has pid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    move p1, v4

    .line 1038
    const/4 v8, 0x1

    .line 1048
    .end local v4           #innerPid:I
    .end local v5           #is:Ljava/io/DataInputStream;
    .end local v7           #parentPid:I
    :cond_3
    :goto_4
    :try_start_5
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v9, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1049
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v9, v8}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1055
    const/4 v9, 0x0

    :goto_5
    return v9

    .line 1040
    .restart local v4       #innerPid:I
    .restart local v5       #is:Ljava/io/DataInputStream;
    .restart local v7       #parentPid:I
    :cond_4
    const-string v9, "Zygote"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " innerPid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1050
    .end local v4           #innerPid:I
    .end local v5           #is:Ljava/io/DataInputStream;
    .end local v7           #parentPid:I
    :catch_2
    move-exception v1

    .line 1051
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v9, "Zygote"

    const-string v10, "Error reading from command socket"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    const/4 v9, 0x1

    goto :goto_5

    .line 1024
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #innerPid:I
    .restart local v5       #is:Ljava/io/DataInputStream;
    :catch_3
    move-exception v9

    goto :goto_1

    :catch_4
    move-exception v10

    goto :goto_3
.end method

.method private static logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "newStderr"
    .parameter "message"
    .parameter "ex"

    .prologue
    .line 1082
    const-string v0, "Zygote"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1083
    if-eqz p0, :cond_1

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1086
    :cond_1
    return-void
.end method

.method private readArgumentList()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 591
    .local v4, s:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 593
    const/4 v3, 0x0

    .line 615
    :cond_0
    return-object v3

    .line 595
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 602
    .local v0, argc:I
    const/16 v5, 0x400

    if-le v0, v5, :cond_2

    .line 603
    new-instance v5, Ljava/io/IOException;

    const-string v6, "max arg count exceeded"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 596
    .end local v0           #argc:I
    .end local v4           #s:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 597
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v5, "Zygote"

    const-string v6, "invalid Zygote wire format: non-int at argc"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v5, Ljava/io/IOException;

    const-string v6, "invalid wire format"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 606
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #argc:I
    .restart local v4       #s:Ljava/lang/String;
    :cond_2
    new-array v3, v0, [Ljava/lang/String;

    .line 607
    .local v3, result:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 608
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 609
    aget-object v5, v3, v2

    if-nez v5, :cond_3

    .line 611
    new-instance v5, Ljava/io/IOException;

    const-string v6, "truncated request"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 607
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setChildPgid(I)V
    .locals 3
    .parameter "pid"

    .prologue
    .line 1061
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v1}, Landroid/net/Credentials;->getPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->getpgid(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/internal/os/ZygoteInit;->setpgid(II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :goto_0
    return-void

    .line 1062
    :catch_0
    move-exception v0

    .line 1067
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method closeSocket()V
    .locals 3

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getFileDesciptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 127
    const/16 v0, 0xa

    .line 139
    .local v0, loopCount:I
    :cond_0
    if-gtz v0, :cond_1

    .line 140
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 141
    const/16 v0, 0xa

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    return-void

    .line 143
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method runOnce()Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 169
    const/16 v19, 0x0

    .line 173
    .local v19, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->readArgumentList()[Ljava/lang/String;

    move-result-object v13

    .line 174
    .local v13, args:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 181
    .local v15, descriptors:[Ljava/io/FileDescriptor;
    if-nez v13, :cond_0

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 184
    const/4 v4, 0x1

    .line 289
    .end local v13           #args:[Ljava/lang/String;
    .end local v15           #descriptors:[Ljava/io/FileDescriptor;
    :goto_0
    return v4

    .line 175
    :catch_0
    move-exception v16

    .line 176
    .local v16, ex:Ljava/io/IOException;
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException on command socket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 178
    const/4 v4, 0x1

    goto :goto_0

    .line 188
    .end local v16           #ex:Ljava/io/IOException;
    .restart local v13       #args:[Ljava/lang/String;
    .restart local v15       #descriptors:[Ljava/io/FileDescriptor;
    :cond_0
    const/16 v18, 0x0

    .line 190
    .local v18, newStderr:Ljava/io/PrintStream;
    if-eqz v15, :cond_1

    array-length v4, v15

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    .line 191
    new-instance v18, Ljava/io/PrintStream;

    .end local v18           #newStderr:Ljava/io/PrintStream;
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x2

    aget-object v5, v15, v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 195
    .restart local v18       #newStderr:Ljava/io/PrintStream;
    :cond_1
    const/16 v21, -0x1

    .line 196
    .local v21, pid:I
    const/4 v14, 0x0

    .line 197
    .local v14, childPipeFd:Ljava/io/FileDescriptor;
    const/16 v23, 0x0

    .line 200
    .local v23, serverPipeFd:Ljava/io/FileDescriptor;
    :try_start_1
    new-instance v20, Lcom/android/internal/os/ZygoteConnection$Arguments;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_1 .. :try_end_1} :catch_4

    .line 202
    .end local v19           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v20, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection;->peerSecurityContext:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v4, v5}, Lcom/android/internal/os/ZygoteConnection;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection;->peerSecurityContext:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v4, v5}, Lcom/android/internal/os/ZygoteConnection;->applyRlimitSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection;->peerSecurityContext:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v4, v5}, Lcom/android/internal/os/ZygoteConnection;->applyCapabilitiesSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection;->peerSecurityContext:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v4, v5}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection;->peerSecurityContext:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v4, v5}, Lcom/android/internal/os/ZygoteConnection;->applyseInfoSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V

    .line 208
    invoke-static/range {v20 .. v20}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 209
    invoke-static/range {v20 .. v20}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 211
    const/4 v8, 0x0

    check-cast v8, [[I

    .line 213
    .local v8, rlimits:[[I
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 214
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8           #rlimits:[[I
    check-cast v8, [[I

    .line 217
    .restart local v8       #rlimits:[[I
    :cond_2
    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeInit:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 218
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4}, Llibcore/io/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v22

    .line 219
    .local v22, pipeFds:[Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    aget-object v14, v22, v4

    .line 220
    const/4 v4, 0x0

    aget-object v23, v22, v4

    .line 221
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/os/ZygoteInit;->setCloseOnExec(Ljava/io/FileDescriptor;Z)V

    .line 225
    .end local v22           #pipeFds:[Ljava/io/FileDescriptor;
    :cond_3
    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->refreshTheme:Z

    if-eqz v4, :cond_4

    .line 226
    invoke-static {}, Landroid/graphics/Typeface;->recreateDefaults()V

    .line 241
    :cond_4
    const/4 v4, 0x2

    new-array v12, v4, [I

    fill-array-data v12, :array_0

    .line 243
    .local v12, fdsToClose:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    .line 245
    .local v17, fd:Ljava/io/FileDescriptor;
    if-eqz v17, :cond_5

    .line 246
    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    aput v5, v12, v4

    .line 249
    :cond_5
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getServerSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    .line 251
    if-eqz v17, :cond_6

    .line 252
    const/4 v4, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    aput v5, v12, v4

    .line 255
    :cond_6
    const/16 v17, 0x0

    .line 257
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static/range {v4 .. v12}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v21

    move-object/from16 v19, v20

    .line 272
    .end local v8           #rlimits:[[I
    .end local v12           #fdsToClose:[I
    .end local v17           #fd:Ljava/io/FileDescriptor;
    .end local v20           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v19       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :goto_1
    if-nez v21, :cond_7

    .line 274
    :try_start_3
    invoke-static/range {v23 .. v23}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 275
    const/16 v23, 0x0

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v14, v2}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    const/4 v4, 0x1

    .line 288
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 289
    invoke-static/range {v23 .. v23}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto/16 :goto_0

    .line 260
    :catch_1
    move-exception v16

    .line 261
    .restart local v16       #ex:Ljava/io/IOException;
    :goto_2
    const-string v4, "Exception creating pipe"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v4, v1}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 262
    .end local v16           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v16

    .line 263
    .local v16, ex:Llibcore/io/ErrnoException;
    :goto_3
    const-string v4, "Exception creating pipe"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v4, v1}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 264
    .end local v16           #ex:Llibcore/io/ErrnoException;
    :catch_3
    move-exception v16

    .line 265
    .local v16, ex:Ljava/lang/IllegalArgumentException;
    :goto_4
    const-string v4, "Invalid zygote arguments"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v4, v1}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 266
    .end local v16           #ex:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v16

    .line 267
    .local v16, ex:Lcom/android/internal/os/ZygoteSecurityException;
    :goto_5
    const-string v4, "Zygote security policy prevents request: "

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v4, v1}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 283
    .end local v16           #ex:Lcom/android/internal/os/ZygoteSecurityException;
    :cond_7
    :try_start_4
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 284
    const/4 v14, 0x0

    .line 285
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    .line 288
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 289
    invoke-static/range {v23 .. v23}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto/16 :goto_0

    .line 288
    :catchall_0
    move-exception v4

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 289
    invoke-static/range {v23 .. v23}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v4

    .line 266
    .end local v19           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v20       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_5
    move-exception v16

    move-object/from16 v19, v20

    .end local v20           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v19       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_5

    .line 264
    .end local v19           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v20       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_6
    move-exception v16

    move-object/from16 v19, v20

    .end local v20           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v19       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_4

    .line 262
    .end local v19           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v20       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_7
    move-exception v16

    move-object/from16 v19, v20

    .end local v20           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v19       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_3

    .line 260
    .end local v19           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v20       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_8
    move-exception v16

    move-object/from16 v19, v20

    .end local v20           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v19       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_2

    .line 241
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
