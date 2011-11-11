.class public Lcom/scalado/caps/jpegsqueeze/AutoResize;
.super Lcom/scalado/caps/PeerBase;
.source "AutoResize.java"


# instance fields
.field private achievedFileSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResize;->achievedFileSize:I

    return-void
.end method

.method private native nativeAutoResizeImageFileToFile(Ljava/lang/String;Ljava/lang/String;Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;)I
.end method

.method private native nativeAutoResizeImageMemToMem(Lcom/scalado/base/Buffer;Lcom/scalado/base/Buffer;Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;)I
.end method


# virtual methods
.method public run(Lcom/scalado/stream/BufferStream;Lcom/scalado/stream/BufferStream;Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;)I
    .locals 3

    invoke-virtual {p1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v2

    invoke-direct {p0, v1, v2, p3}, Lcom/scalado/caps/jpegsqueeze/AutoResize;->nativeAutoResizeImageMemToMem(Lcom/scalado/base/Buffer;Lcom/scalado/base/Buffer;Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/jpegsqueeze/AutoResize;->achievedFileSize:I

    return v1
.end method

.method public run(Lcom/scalado/stream/FileStream;Lcom/scalado/stream/FileStream;Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;)I
    .locals 3

    invoke-virtual {p1}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p3}, Lcom/scalado/caps/jpegsqueeze/AutoResize;->nativeAutoResizeImageFileToFile(Ljava/lang/String;Ljava/lang/String;Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/jpegsqueeze/AutoResize;->achievedFileSize:I

    return v1
.end method
