.class public Lcom/koushikdutta/superuser/util/StreamUtility;
.super Ljava/lang/Object;
.source "StreamUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    .line 49
    .local v0, inputChannel:Ljava/nio/channels/ReadableByteChannel;
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v1

    .line 51
    .local v1, outputChannel:Ljava/nio/channels/WritableByteChannel;
    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/StreamUtility;->fastChannelCopy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)V

    .line 52
    return-void
.end method

.method public static fastChannelCopy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)V
    .locals 3
    .parameter "src"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/high16 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    .local v0, buffer:Ljava/nio/ByteBuffer;
    :goto_0
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 33
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 41
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_1

    .line 44
    :cond_1
    return-void
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/koushikdutta/superuser/util/StreamUtility;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "file"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 122
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    .local v0, dout:Ljava/io/DataOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 124
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 125
    return-void
.end method
