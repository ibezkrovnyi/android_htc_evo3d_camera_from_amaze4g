.class public Lcom/scalado/caps/jpegsqueeze/JpegSqueeze;
.super Lcom/scalado/caps/PeerBase;
.source "JpegSqueeze.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    return-void
.end method

.method private static native nativeSqueezeJpeg(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;I)I
.end method

.method public static run(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;I)V
    .locals 3

    if-gtz p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "desired size must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/scalado/caps/jpegsqueeze/JpegSqueeze;->nativeSqueezeJpeg(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;I)I

    move-result v0

    return-void
.end method
