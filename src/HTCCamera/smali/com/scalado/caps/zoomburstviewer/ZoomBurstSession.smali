.class public Lcom/scalado/caps/zoomburstviewer/ZoomBurstSession;
.super Lcom/scalado/caps/PeerBase;
.source "ZoomBurstSession.java"


# instance fields
.field private indexStream:Lcom/scalado/stream/Stream;

.field private stream:Lcom/scalado/stream/Stream;


# direct methods
.method public constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    iput-object p1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstSession;->stream:Lcom/scalado/stream/Stream;

    iput-object p2, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstSession;->indexStream:Lcom/scalado/stream/Stream;

    iget-object v1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstSession;->stream:Lcom/scalado/stream/Stream;

    iget-object v2, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstSession;->indexStream:Lcom/scalado/stream/Stream;

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstSession;->nativeZoomBurstCreateSession(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)I

    move-result v0

    return-void
.end method

.method private native nativeZoomBurstCreateSession(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)I
.end method
