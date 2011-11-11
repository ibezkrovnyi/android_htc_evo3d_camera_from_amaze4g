.class public Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;
.super Lcom/scalado/caps/PeerBase;
.source "ZoomBurstAnimation.java"


# instance fields
.field private frameIndex:F

.field private zoom:F

.field private zoomBurstScreen:Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    iput v1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->zoom:F

    iput v1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->frameIndex:F

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->zoomBurstScreen:Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;

    iget-object v1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->zoomBurstScreen:Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;

    invoke-direct {p0, v1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->nativeZoomBurstCreateAnimation(Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;)I

    move-result v0

    return-void
.end method

.method private native nativeZoomBurstBeginPan(Lcom/scalado/base/Point;)I
.end method

.method private native nativeZoomBurstBeginZoom(FLcom/scalado/base/Point;)I
.end method

.method private native nativeZoomBurstCreateAnimation(Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;)I
.end method

.method private native nativeZoomBurstEndAnimation()I
.end method

.method private native nativeZoomBurstExtendZoom(F)I
.end method

.method private native nativeZoomBurstGetEndPoint(Lcom/scalado/base/Point;)I
.end method

.method private native nativeZoomBurstGetFrameIndex(F)I
.end method

.method private native nativeZoomBurstGetZoomPoint(FLcom/scalado/base/Point;)I
.end method

.method private native nativeZoomBurstUpdateScreen(FF)I
.end method


# virtual methods
.method public beginPan(Lcom/scalado/base/Point;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->nativeZoomBurstBeginPan(Lcom/scalado/base/Point;)I

    move-result v0

    return-void
.end method

.method public beginZoom(FLcom/scalado/base/Point;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->nativeZoomBurstBeginZoom(FLcom/scalado/base/Point;)I

    move-result v0

    return-void
.end method

.method public endAnimation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->nativeZoomBurstEndAnimation()I

    move-result v0

    return-void
.end method

.method public extendZoom(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->nativeZoomBurstExtendZoom(F)I

    move-result v0

    return-void
.end method

.method public getEndPan()Lcom/scalado/base/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, v0}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->nativeZoomBurstGetEndPoint(Lcom/scalado/base/Point;)I

    move-result v1

    return-object v0
.end method

.method public getEndZoom()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, v0}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->nativeZoomBurstGetEndPoint(Lcom/scalado/base/Point;)I

    move-result v1

    iget v2, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->zoom:F

    return v2
.end method

.method public getFrameIndex(F)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->nativeZoomBurstGetFrameIndex(F)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->frameIndex:F

    return v1
.end method

.method public getPan(F)Lcom/scalado/base/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v1, Lcom/scalado/base/Point;

    invoke-direct {v1}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->nativeZoomBurstGetZoomPoint(FLcom/scalado/base/Point;)I

    move-result v0

    return-object v1
.end method

.method public getZoom(F)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v1, Lcom/scalado/base/Point;

    invoke-direct {v1}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->nativeZoomBurstGetZoomPoint(FLcom/scalado/base/Point;)I

    move-result v0

    iget v2, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->zoom:F

    return v2
.end method

.method public updateScreen(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstAnimation;->nativeZoomBurstUpdateScreen(FF)I

    move-result v0

    return-void
.end method
